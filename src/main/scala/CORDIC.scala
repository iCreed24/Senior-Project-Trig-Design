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
    val in_x0: UInt = Input(UInt(bw.W))
    val in_y0: UInt = Input(UInt(bw.W))
    val in_z0: UInt = Input(UInt(bw.W))
    val in_mode: UInt = Input(UInt(bw.W))

    val out_x: UInt = Output(UInt(bw.W))
    val out_y: UInt = Output(UInt(bw.W))
    val out_z: UInt = Output(UInt(bw.W))
    val out_mode: UInt = Output(UInt(2.W))
  })

  val atantable = Wire(Vec(bw, UInt(bw.W)))
  atantable(0) := 210828720.U //Q4.28 fixed point of 0.785398
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

  val rounds = 28
  val x = Wire(Vec(rounds + 1, SInt(bw.W)))
  val y = Wire(Vec(rounds + 1, SInt(bw.W)))
  val theta = Wire(Vec(rounds + 1, SInt(bw.W)))
  val z0s = Wire(Vec(rounds + 1, SInt(bw.W)))
  val modes = Wire(Vec(rounds + 1, UInt(2.W)))

  val xr = RegInit(VecInit(Seq.fill(rounds + 1)(0.S(bw.W))))
  val yr = RegInit(VecInit(Seq.fill(rounds + 1)(0.S(bw.W))))
  val thetar = RegInit(VecInit(Seq.fill(rounds + 1)(0.S(bw.W))))
  var z0sr = RegInit(VecInit(Seq.fill(rounds + 1)(0.S(bw.W))))
  val modesr = RegInit(VecInit(Seq.fill(rounds + 1)(0.U(2.W))))

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


  var iter = 0
  for (n <- 0 to rounds - 2 by 4) {


    for (i <- 1 to 4) {
      if (i == 1 && n > 0) {
          var prevn = n + i - 1
          var fxxterm = Mux(thetar(iter) > z0sr(iter), -xr(iter), xr(iter))
          var fxyterm = Mux(thetar(iter) > z0sr(iter), -yr(iter), yr(iter))
          var fxthetaterm = Mux(thetar(iter) > z0sr(iter), -atantable(prevn), atantable(prevn))

          theta(n + i) := thetar(iter) + fxthetaterm.asSInt;
          x(n + i) := xr(iter) - (fxyterm >> prevn.asUInt).asSInt
          y(n + i) := (fxxterm >> prevn.asUInt).asSInt + yr(iter)
          z0s(n + i) := z0sr(iter)
          modes(n + i) := modesr(iter)
      }
      else {
        var prevn = n + i - 1
        var fxxterm = Mux(theta(prevn) > z0s(prevn), -x(prevn), x(prevn))
        var fxyterm = Mux(theta(prevn) > z0s(prevn), -y(prevn), y(prevn))
        var fxthetaterm = Mux(theta(prevn) > z0s(prevn), -atantable(prevn), atantable(prevn))

        theta(n + i) := theta(prevn) + fxthetaterm.asSInt;
        x(n + i) := x(prevn) - (fxyterm >> prevn.asUInt).asSInt
        y(n + i) := (fxxterm >> prevn.asUInt).asSInt + y(prevn)
        z0s(n + i) := z0s(prevn)
        modes(n + i) := modes(prevn)
      }
    }

    thetar(iter + 1) := theta(n + 4)
    xr(iter + 1) := x(n + 4)
    yr(iter + 1) := y(n + 4)
    z0sr(iter + 1) := z0s(n + 4)
    modesr(iter + 1) := modes(n + 4)

    iter = iter + 1
  }

  val tofloatxout = Module(new FixedToFloat32())
  val tofloatyout = Module(new FixedToFloat32())
  val tofloatzout = Module(new FixedToFloat32())

  //Translate back to floating point
  tofloatxout.io.in := xr(iter).asUInt
  tofloatyout.io.in := yr(iter).asUInt
  tofloatzout.io.in := z0sr(iter).asUInt
  io.out_mode := modesr(iter).asUInt

  io.out_x := tofloatxout.io.out
  io.out_y := tofloatyout.io.out
  io.out_z := tofloatzout.io.out


}
