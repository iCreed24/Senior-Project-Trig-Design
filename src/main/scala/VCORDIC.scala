package Trig

import chisel3._

import java.io.PrintWriter
import chisel3.util._
import Binary_Modules.BinaryDesigns._
import FP_Modules.FloatingPointDesigns._
import chisel3.stage.ChiselStage


class VCORDIC(bw: Int) extends Module {
  /*
  Vector CORDIC for arctangent function:
  This takes and produces single precision values. However,
  internally, 64 bit Q32.32 fixed point is used for all arithmetic.

  We want about 6 digits of precision after the decimal point. atan(x) -> Pi/2 as x->inf,
  and after about 1E7, x increasing does not affect the first 6 places after the decimal point.
  Similarly, atan(x) = 0 when x = 0, and changes that make x smaller than 1E-7 do not affect the digits of the
  output we are interested in.

  */
  require(bw == 32)
  val io = IO(new Bundle() {
    val in_x0: UInt = Input(UInt(bw.W))
    val in_y0: UInt = Input(UInt(bw.W))
    val in_z0: UInt = Input(UInt(bw.W))
    val in_mode: UInt = Input(UInt(bw.W))

    val out_x: UInt = Output(UInt(bw.W))
    val out_y: UInt = Output(UInt(bw.W))
    val out_z: UInt = Output(UInt(bw.W))
    val out_mode: UInt = Output(UInt(2.W))
  })

  val atantable = Wire(Vec(bw, UInt(64.W)))
  atantable(0) := scala.BigInt("00000000c90fdb00", 16).U(64.W) //Q32.32 fixed point of 0.785398
  atantable(1) := scala.BigInt("0000000076b19c00", 16).U(64.W) //Q32.32 fixed point of 0.463648
  atantable(2) := scala.BigInt("000000003eb6ec00", 16).U(64.W) //Q32.32 fixed point of 0.244979
  atantable(3) := scala.BigInt("000000001fd5baa0", 16).U(64.W) //Q32.32 fixed point of 0.124355
  atantable(4) := scala.BigInt("000000000ffaade0", 16).U(64.W) //Q32.32 fixed point of 0.062419
  atantable(5) := scala.BigInt("0000000007ff5570", 16).U(64.W) //Q32.32 fixed point of 0.031240
  atantable(6) := scala.BigInt("0000000003ffeaac", 16).U(64.W) //Q32.32 fixed point of 0.015624
  atantable(7) := scala.BigInt("0000000001fffd56", 16).U(64.W) //Q32.32 fixed point of 0.007812
  atantable(8) := scala.BigInt("0000000000ffffab", 16).U(64.W) //Q32.32 fixed point of 0.003906
  atantable(9) := scala.BigInt("00000000007ffff5", 16).U(64.W) //Q32.32 fixed point of 0.001953
  atantable(10) := scala.BigInt("00000000003ffffe", 16).U(64.W) //Q32.32 fixed point of 0.000977
  atantable(11) := scala.BigInt("00000000001fffff", 16).U(64.W) //Q32.32 fixed point of 0.000488
  atantable(12) := scala.BigInt("0000000000100000", 16).U(64.W) //Q32.32 fixed point of 0.000244
  atantable(13) := scala.BigInt("0000000000080000", 16).U(64.W) //Q32.32 fixed point of 0.000122
  atantable(14) := scala.BigInt("0000000000040000", 16).U(64.W) //Q32.32 fixed point of 0.000061
  atantable(15) := scala.BigInt("0000000000020000", 16).U(64.W) //Q32.32 fixed point of 0.000031
  atantable(16) := scala.BigInt("0000000000010000", 16).U(64.W) //Q32.32 fixed point of 0.000015
  atantable(17) := scala.BigInt("0000000000008000", 16).U(64.W) //Q32.32 fixed point of 0.000008
  atantable(18) := scala.BigInt("0000000000004000", 16).U(64.W) //Q32.32 fixed point of 0.000004
  atantable(19) := scala.BigInt("0000000000002000", 16).U(64.W) //Q32.32 fixed point of 0.000002
  atantable(20) := scala.BigInt("0000000000001000", 16).U(64.W) //Q32.32 fixed point of 0.000001
  atantable(21) := scala.BigInt("0000000000000800", 16).U(64.W) //Q32.32 fixed point of 0.000000
  atantable(22) := scala.BigInt("0000000000000400", 16).U(64.W) //Q32.32 fixed point of 0.000000
  atantable(23) := scala.BigInt("0000000000000200", 16).U(64.W) //Q32.32 fixed point of 0.000000
  atantable(24) := scala.BigInt("0000000000000100", 16).U(64.W) //Q32.32 fixed point of 0.000000
  atantable(25) := scala.BigInt("0000000000000080", 16).U(64.W) //Q32.32 fixed point of 0.000000
  atantable(26) := scala.BigInt("0000000000000040", 16).U(64.W) //Q32.32 fixed point of 0.000000
  atantable(27) := scala.BigInt("0000000000000020", 16).U(64.W) //Q32.32 fixed point of 0.000000
  atantable(28) := scala.BigInt("0000000000000010", 16).U(64.W) //Q32.32 fixed point of 0.000000
  atantable(29) := scala.BigInt("0000000000000008", 16).U(64.W) //Q32.32 fixed point of 0.000000
  atantable(30) := scala.BigInt("0000000000000004", 16).U(64.W) //Q32.32 fixed point of 0.000000
  atantable(31) := scala.BigInt("00000003243f6c00", 16).U(64.W) //Q32.32 fixed point of 3.141593



  /* x0 should be pre-scaled by being set to k; this obviates the scaling multiplication
    otherwise necessary after the algorithm is complete
  * */
  val tofixedx0 = Module(new Float32ToFixed64())
  val tofixedy0 = Module(new Float32ToFixed64())
  val tofixedz0 = Module (new Float32ToFixed64())

  tofixedx0.io.in := io.in_x0
  tofixedy0.io.in := io.in_y0
  tofixedz0.io.in := io.in_z0

  val rounds = 30
  val x = Wire(Vec(rounds + 2, SInt(64.W)))
  val y = Wire(Vec(rounds + 2, SInt(64.W)))
  val z = Wire(Vec(rounds + 2, SInt(64.W)))
  val modes = Wire(Vec(rounds + 2, UInt(2.W)))

  /* Floating point inputs converted to fixed point */
  val fixedx0 = tofixedx0.io.out
  val fixedy0 = tofixedy0.io.out
  val fixedz0 = tofixedz0.io.out

  z(0) := fixedz0.asSInt
  x(0) := fixedx0.asSInt
  y(0) := fixedy0.asSInt

  modes(0) := io.in_mode


  for (n <- 0 to rounds) {

    val cond = y(n) < 0.S(64.W)
    val xterm = Mux(cond, -x(n), x(n))
    val yterm = Mux(cond, -y(n), y(n))
    val zterm = Mux(cond, -atantable(n), atantable(n))

    x(n + 1) := x(n) + (yterm >> n.asUInt).asSInt
    y(n + 1) := y(n) - (xterm >> n.asUInt).asSInt
    z(n + 1) := z(n) + zterm.asSInt
    modes(n + 1) := modes(n)
  }

  val tofloatxout = Module(new Fixed64ToFloat32())
  val tofloatyout = Module(new Fixed64ToFloat32())
  val tofloatzout = Module(new Fixed64ToFloat32())

  //Translate back to floating point
  tofloatxout.io.in := x(31).asUInt
  tofloatyout.io.in := y(31).asUInt
  tofloatzout.io.in := z(31).asUInt
  io.out_mode := modes(31).asUInt

  io.out_x := tofloatxout.io.out
  io.out_y := tofloatyout.io.out
  io.out_z := tofloatzout.io.out

}

object VCORDICMain extends App {
  val pw = new PrintWriter("vcordic.v")
  pw.println(getVerilogString(new VCORDIC(32)))
  pw.close()
}
