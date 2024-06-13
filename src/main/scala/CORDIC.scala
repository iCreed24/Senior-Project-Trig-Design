package Trig
import chisel3._

import java.io.PrintWriter
import chisel3.util._
import Binary_Modules.BinaryDesigns._
import FP_Modules.FloatingPointDesigns._
import chisel3.stage.ChiselStage


class CORDIC(bw: Int) extends Module {
  /* Am told we only care about single precision */
  require(bw == 32)
  val io = IO(new Bundle() {
    val in_x0 : UInt = Input(UInt(bw.W))
    val in_y0 : UInt = Input(UInt(bw.W))
    val in_z0 : UInt = Input(UInt(bw.W))
    val in_mode : UInt = Input(UInt(bw.W))

    val out_x : UInt = Output(UInt(bw.W))
    val out_y : UInt = Output(UInt(bw.W))
    val out_z : UInt = Output(UInt(bw.W))
    val out_mode : UInt = Output(UInt(2.W))
  })

  val atantable = Wire(Vec(bw, UInt(bw.W)))
  atantable(0) := 210828720.U//Q4.28 fixed point of 0.785398
  atantable(1) := 124459456.U //Q4.28 fixed point of 0.463648
  atantable(2) := 65760960.U //Q4.28 fixed point of 0.244979
  atantable(3) := 33381290.U //Q4.28 fixed point of 0.124355
  atantable(4) := 16755422.U //Q4.28 fixed point of 0.062419
  atantable(5) := 8385879.U //Q4.28 fixed point of 0.031240
  atantable(6) := 4193962.U //Q4.28 fixed point of 0.015624
  atantable(7) := 2097109.U //Q4.28 fixed point of 0.007812
  atantable(8) := 1048570.U //Q4.28 fixed point of 0.003906
  atantable(9) := 524287.U //Q4.28 fixed point of 0.001953
  atantable(10) := 262143.U //Q4.28 fixed point of 0.000977
  atantable(11) := 131071.U //Q4.28 fixed point of 0.000488
  atantable(12) := 65536.U //Q4.28 fixed point of 0.000244
  atantable(13) := 32768.U //Q4.28 fixed point of 0.000122
  atantable(14) := 16384.U //Q4.28 fixed point of 0.000061
  atantable(15) := 8192.U //Q4.28 fixed point of 0.000031
  atantable(16) := 4096.U //Q4.28 fixed point of 0.000015
  atantable(17) := 2048.U //Q4.28 fixed point of 0.000008
  atantable(18) := 1024.U //Q4.28 fixed point of 0.000004
  atantable(19) := 512.U //Q4.28 fixed point of 0.000002
  atantable(20) := 256.U //Q4.28 fixed point of 0.000001
  atantable(21) := 128.U //Q4.28 fixed point of 0.000000
  atantable(22) := 64.U //Q4.28 fixed point of 0.000000
  atantable(23) := 32.U //Q4.28 fixed point of 0.000000
  atantable(24) := 16.U //Q4.28 fixed point of 0.000000
  atantable(25) := 8.U //Q4.28 fixed point of 0.000000
  atantable(26) := 4.U //Q4.28 fixed point of 0.000000
  atantable(27) := 2.U //Q4.28 fixed point of 0.000000
  atantable(28) := 1.U //Q4.28 fixed point of 0.000000
  atantable(29) := 0.U //Q4.28 fixed point of 0.000000
  atantable(30) := 0.U //Q4.28 fixed point of 0.000000
  atantable(31) := 843314880.U //Q4.28 fixed point of 3.141593

  /* x0 should be pre-scaled by being set to k; this obviates the scaling multiplication
    otherwise necessary after the algorithm is complete
  * */
  val tofixedx0 = Module(new FloatToFixed32())
  val tofixedy0 = Module(new FloatToFixed32())
  //x0 and y0 are received as floating point numbers. This is arbitrary, as modules using cordic could do the conversion
  //We expect z0 as a fixed point from the Cos/Sin modules, since they compare the angles using integer arithmetic

  tofixedx0.io.in := io.in_x0
  tofixedy0.io.in := io.in_y0

/*
  val x = Wire(Vec(bw, SInt(bw.W)))
  val y = Wire(Vec(bw, SInt(bw.W)))
  val theta = Wire(Vec(bw, SInt(bw.W)))
  val z0s = Wire(Vec(bw, SInt(bw.W)))
  val modes = Wire(Vec(bw, UInt(2.W)))
*/

  val x = RegInit(VecInit(Seq.fill(bw + 1)(0.S(bw.W))))
  val y = RegInit(VecInit(Seq.fill(bw + 1)(0.S(bw.W))))
  val theta = RegInit(VecInit(Seq.fill(bw + 1)(0.S(bw.W))))
  var z0s = RegInit(VecInit(Seq.fill(bw + 1)(0.S(bw.W))))
  val modes = RegInit(VecInit(Seq.fill(bw + 1)(0.U(2.W))))


  /* Floating point inputs converted to fixed point */
  val fixedx0 = tofixedx0.io.out
  val fixedy0 = tofixedy0.io.out
  //val fixedz0 = tofixedz0.io.out // change this directly to input for cos
  val fixedz0 = io.in_z0


  theta(0) := 0.S
  x(0) := fixedx0.asSInt
  y(0) := fixedy0.asSInt
  z0s(0) := fixedz0.asSInt
  modes(0) := io.in_mode

  for(n <- 0 to 31){

    var fxxterm = Mux(theta(n) > z0s(n), -x(n), x(n))
    var fxyterm = Mux(theta(n) > z0s(n), -y(n), y(n))
    var fxthetaterm = Mux(theta(n) > z0s(n), -atantable(n), atantable(n))

    theta(n + 1) := theta(n) + fxthetaterm.asSInt;
    x(n + 1) := x(n) - (fxyterm >> n.asUInt).asSInt
    y(n + 1) := (fxxterm >> n.asUInt).asSInt + y(n)
    z0s(n + 1) := z0s(n)
    modes(n + 1) := modes(n)

  }

  val tofloatxout = Module(new FixedToFloat32())
  val tofloatyout = Module(new FixedToFloat32())
  val tofloatzout = Module(new FixedToFloat32())

  //Translate back to floating point
  tofloatxout.io.in := x(32).asUInt
  tofloatyout.io.in := y(32).asUInt
  tofloatzout.io.in := z0s(32).asUInt
  io.out_mode := modes(32).asUInt

  io.out_x := tofloatxout.io.out
  io.out_y := tofloatyout.io.out
  io.out_z := tofloatzout.io.out


}
