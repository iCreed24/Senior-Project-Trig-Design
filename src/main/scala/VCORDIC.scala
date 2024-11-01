package Trig

import chisel3._

import java.io.PrintWriter
import chisel3.util._
import Binary_Modules.BinaryDesigns._
import FP_Modules.FloatingPointDesigns._
import chisel3.stage.{ChiselGeneratorAnnotation, ChiselStage}

/* Module will run 4 iterations per rounds_param, so 8 rounds_param runs 32 iterations */
class VCORDIC(bw: Int ,  pipeline_depth: Int , round_parameter: Int) extends Module {
  require(bw == 32)
  /*
  Vector CORDIC for atan function:
  This takes and produces single precision values. However, internally, 64 bit Q32.32 fixed point
  is used for all arithmetic.

  We want about 6 digits of precision after the decimal point. The limit of atan(x) = Pi/2 as x->inf,
  and after about x=1E7, x increasing does not affect the first 6 places after the decimal point.
  Similarly, atan(x) = 0 when x = 0, and changes that make x smaller than 1E-7 do not affect the digits
  we are interested in.

  */
  require(bw == 32)
  val io = IO(new Bundle() {
    val in_x0: UInt = Input(UInt(bw.W))
    val in_y0: UInt = Input(UInt(bw.W))
    val in_z0: UInt = Input(UInt(bw.W))

    val out_x: UInt = Output(UInt(bw.W))
    val out_y: UInt = Output(UInt(bw.W))
    val out_z: UInt = Output(UInt(bw.W))
  })


  var iterperround = 0
  var iterations = 0
  var rounds = 32
  if (pipeline_depth == 16) {
    iterperround = 1


  }
  else if (pipeline_depth == 8) {


    iterperround = 2
    //rounds = (16 * 2) - 2
  }
  else if (pipeline_depth == 4) {

    iterperround = 4


  }

  else if (pipeline_depth == 2) {

    iterperround = 8


  }

  else if (pipeline_depth == 1) {

    iterperround = 16


  }

  private val atantable = Wire(Vec(bw, UInt(64.W)))
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


  private val tofixedx0 = Module(new Float32ToFixed64())
  private val tofixedy0 = Module(new Float32ToFixed64())
  private val tofixedz0 = Module(new Float32ToFixed64())

  tofixedx0.io.in := io.in_x0
  tofixedy0.io.in := io.in_y0
  tofixedz0.io.in := io.in_z0


  private val x = Wire(Vec(rounds + 1, SInt(64.W)))
  private val y = Wire(Vec(rounds + 1, SInt(64.W)))
  private val z = Wire(Vec(rounds + 1, SInt(64.W)))

  private val xr = RegInit(VecInit(Seq.fill(rounds + 1)(0.S(64.W))))
  private val yr = RegInit(VecInit(Seq.fill(rounds + 1)(0.S(64.W))))
  private val zr = RegInit(VecInit(Seq.fill(rounds + 1)(0.S(64.W))))

  /* Floating point inputs converted to fixed point */
  private val fixedx0 = tofixedx0.io.out
  private val fixedy0 = tofixedy0.io.out
  private val fixedz0 = tofixedz0.io.out

  z(0) := fixedz0.asSInt
  x(0) := fixedx0.asSInt
  y(0) := fixedy0.asSInt

  zr(0) := fixedz0.asSInt
  xr(0) := fixedx0.asSInt
  yr(0) := fixedy0.asSInt


  if (bw == 32 && pipeline_depth == 16) {

    var iter = 0
    for (n <- 0 to rounds - 1 by iterperround) {


      val fxxterm = Mux(yr(n) < 0.S(64.W), -xr(n), xr(n))
      val fxyterm = Mux(yr(n) < 0.S(64.W), -yr(n), yr(n))
      val fxthetaterm = Mux(yr(n) < 0.S(64.W), -atantable(n), atantable(n))


      x(n + 1) := xr(n) + (fxyterm >> n.asUInt).asSInt
      y(n + 1) := yr(n) - (fxxterm >> n.asUInt).asSInt
      z(n + 1) := zr(n) + fxthetaterm.asSInt

      xr(n + 1) := x(n + 1) //divide val in regx by 2 then sub from curr xreg
      yr(n + 1) := y(n + 1) // divide val in regy by 2 then add to curr reg yr
      zr(n + 1) := z(n + 1)

      iter = iter + 1
    }


    val tofloatxout = Module(new Fixed64ToFloat32())
    val tofloatyout = Module(new Fixed64ToFloat32())
    val tofloatzout = Module(new Fixed64ToFloat32())


    tofloatxout.io.in := xr(iter).asUInt
    tofloatyout.io.in := yr(iter).asUInt
    tofloatzout.io.in := zr(iter).asUInt
    printf(p"round = $rounds")
    io.out_x := tofloatxout.io.out
    io.out_y := tofloatyout.io.out
    io.out_z := tofloatzout.io.out

  }

  else if (bw == 32 && pipeline_depth == 8) {

    var iter = 0
    for (n <- 0 to rounds - 1 by iterperround) {
      for (i <- 1 to iterperround) {
        var prevn = n + i - 1
        if (i == 1) {
          val cond = yr(iter) < 0.S(64.W)

          val xterm = Mux(cond, -xr(iter), xr(iter))
          val yterm = Mux(cond, -yr(iter), yr(iter))
          val zterm = Mux(cond, -atantable(prevn), atantable(prevn))

          x(n + i) := xr(iter) + (yterm >> prevn.asUInt).asSInt
          y(n + i) := yr(iter) - (xterm >> prevn.asUInt).asSInt
          z(n + i) := zr(iter) + zterm.asSInt
        }
        else {
          val cond = y(prevn) < 0.S(64.W)
          val xterm = Mux(cond, -x(prevn), x(prevn))
          val yterm = Mux(cond, -y(prevn), y(prevn))
          val zterm = Mux(cond, -atantable(prevn), atantable(prevn))

          x(n + i) := x(prevn) + (yterm >> prevn.asUInt).asSInt
          y(n + i) := y(prevn) - (xterm >> prevn.asUInt).asSInt
          z(n + i) := z(prevn) + zterm.asSInt
        }
      }

      xr(iter + 1) := x(n + iterperround)
      yr(iter + 1) := y(n + iterperround)
      zr(iter + 1) := z(n + iterperround)

      iter = iter + 1
    }

    val tofloatxout = Module(new Fixed64ToFloat32())
    val tofloatyout = Module(new Fixed64ToFloat32())
    val tofloatzout = Module(new Fixed64ToFloat32())

    //Translate back to floating point
    tofloatxout.io.in := xr(iter).asUInt
    tofloatyout.io.in := yr(iter).asUInt
    tofloatzout.io.in := zr(iter).asUInt

    io.out_x := tofloatxout.io.out
    io.out_y := tofloatyout.io.out
    io.out_z := tofloatzout.io.out

  }

  else if (bw == 32 && pipeline_depth == 4) {


    var reg = 0
    for (n <- 0 to rounds - 1 by 1) {


      if (n % 4 == 0) { // first iteration


        val fxxterm = Mux(yr(n) < 0.S(64.W), -xr(reg), xr(reg))
        val fxyterm = Mux(yr(n) < 0.S(64.W), -yr(reg), yr(reg))
        val fxthetaterm = Mux(yr(n) < 0.S(64.W), -atantable(n), atantable(n))

        x(n + 1) := xr(n) + (fxyterm >> n.asUInt).asSInt
        y(n + 1) := yr(n) - (fxxterm >> n.asUInt).asSInt
        z(n + 1) := zr(n) + fxthetaterm.asSInt


      }
      else if (n % 4 == 1 || n % 4 == 2) {


        val fxxterm = Mux(yr(n) < 0.S(64.W), -x(n), x(n))
        val fxyterm = Mux(yr(n) < 0.S(64.W), -y(n), y(n))
        val fxthetaterm = Mux(yr(n) < 0.S(64.W), -atantable(n), atantable(n))

        x(n + 1) := x(n) + (fxyterm >> n.asUInt).asSInt
        y(n + 1) := y(n) - (fxxterm >> n.asUInt).asSInt
        z(n + 1) := z(n) + fxthetaterm.asSInt


      }

      else if (n % 4 == 3) {


        val fxxterm = Mux(yr(n) < 0.S(64.W), -x(n), x(n))
        val fxyterm = Mux(yr(n) < 0.S(64.W), -y(n), y(n))
        val fxthetaterm = Mux(yr(n) < 0.S(64.W), -atantable(n), atantable(n))

        x(n + 1) := x(n) + (fxyterm >> n.asUInt).asSInt
        y(n + 1) := y(n) - (fxxterm >> n.asUInt).asSInt
        z(n + 1) := z(n) + fxthetaterm.asSInt

        reg = reg + 1


        zr(reg) := z(n + 1)
        xr(reg) := x(n + 1)
        yr(reg) := y(n + 1)

      }


    }


    val tofloatxout = Module(new Fixed64ToFloat32())
    val tofloatyout = Module(new Fixed64ToFloat32())
    val tofloatzout = Module(new Fixed64ToFloat32())


    tofloatxout.io.in := xr(reg).asUInt
    tofloatyout.io.in := yr(reg).asUInt
    tofloatzout.io.in := zr(reg).asUInt


    io.out_x := tofloatxout.io.out
    io.out_y := tofloatyout.io.out
    io.out_z := tofloatzout.io.out


  }


  else if (pipeline_depth == 2) {

    var reg = 0
    for (n <- 0 to rounds - 1 by 1) {

      if (n % 8 == 0) { // first iteration


        val fxxterm = Mux(yr(n) < 0.S(64.W), -xr(reg), xr(reg))
        val fxyterm = Mux(yr(n) < 0.S(64.W), -yr(reg), yr(reg))
        val fxthetaterm = Mux(yr(n) < 0.S(64.W), -atantable(n), atantable(n))

        x(n + 1) := xr(n) + (fxyterm >> n.asUInt).asSInt
        y(n + 1) := yr(n) - (fxxterm >> n.asUInt).asSInt
        z(n + 1) := zr(n) + fxthetaterm.asSInt


      }
      else if (n % 8 == 1 || n % 8 == 2 || n % 8 == 3 || n % 8 == 4 || n % 8 == 5 || n % 8 == 6) {


        val fxxterm = Mux(yr(n) < 0.S(64.W), -x(n), x(n))
        val fxyterm = Mux(yr(n) < 0.S(64.W), -y(n), y(n))
        val fxthetaterm = Mux(yr(n) < 0.S(64.W), -atantable(n), atantable(n))

        x(n + 1) := x(n) + (fxyterm >> n.asUInt).asSInt
        y(n + 1) := y(n) - (fxxterm >> n.asUInt).asSInt
        z(n + 1) := z(n) + fxthetaterm.asSInt


      }

      else if (n % 8 == 7) {


        val fxxterm = Mux(yr(n) < 0.S(64.W), -x(n), x(n))
        val fxyterm = Mux(yr(n) < 0.S(64.W), -y(n), y(n))
        val fxthetaterm = Mux(yr(n) < 0.S(64.W), -atantable(n), atantable(n))

        x(n + 1) := x(n) + (fxyterm >> n.asUInt).asSInt
        y(n + 1) := y(n) - (fxxterm >> n.asUInt).asSInt
        z(n + 1) := z(n) + fxthetaterm.asSInt

        reg = reg + 1


        zr(reg) := z(n + 1)
        xr(reg) := x(n + 1)
        yr(reg) := y(n + 1)
      }


    }

    val tofloatxout = Module(new Fixed64ToFloat32())
    val tofloatyout = Module(new Fixed64ToFloat32())
    val tofloatzout = Module(new Fixed64ToFloat32())


    tofloatxout.io.in := xr(reg).asUInt
    tofloatyout.io.in := yr(reg).asUInt
    tofloatzout.io.in := zr(reg).asUInt

    io.out_x := tofloatxout.io.out
    io.out_y := tofloatyout.io.out
    io.out_z := tofloatzout.io.out
  }


  else if (pipeline_depth == 1) {


    for (n <- 0 to rounds - 1 by 1) {


      if (n == 0) {


        val fxxterm = Mux(yr(n) < 0.S(64.W), -xr(0), xr(0))
        val fxyterm = Mux(yr(n) < 0.S(64.W), -yr(0), yr(0))
        val fxthetaterm = Mux(yr(n) < 0.S(64.W), -atantable(n), atantable(n))

        x(n + 1) := xr(n) + (fxyterm >> n.asUInt).asSInt
        y(n + 1) := yr(n) - (fxxterm >> n.asUInt).asSInt
        z(n + 1) := zr(n) + fxthetaterm.asSInt


      }

      else if (n == rounds - 2) {


        val fxxterm = Mux(yr(n) < 0.S(64.W), -x(n), x(n))
        val fxyterm = Mux(yr(n) < 0.S(64.W), -y(n), y(n))
        val fxthetaterm = Mux(yr(n) < 0.S(64.W), -atantable(n), atantable(n))

        x(n + 1) := x(n) + (fxyterm >> n.asUInt).asSInt
        y(n + 1) := y(n) - (fxxterm >> n.asUInt).asSInt
        z(n + 1) := z(n) + fxthetaterm.asSInt


        zr(1) := z(n + 1)
        xr(1) := x(n + 1)
        yr(1) := y(n + 1)
      }


      else {
        val fxxterm = Mux(yr(n) < 0.S(64.W), -x(n), x(n))
        val fxyterm = Mux(yr(n) < 0.S(64.W), -y(n), y(n))
        val fxthetaterm = Mux(yr(n) < 0.S(64.W), -atantable(n), atantable(n))

        x(n + 1) := x(n) + (fxyterm >> n.asUInt).asSInt
        y(n + 1) := y(n) - (fxxterm >> n.asUInt).asSInt
        z(n + 1) := z(n) + fxthetaterm.asSInt

      }


    }

    val tofloatxout = Module(new Fixed64ToFloat32())
    val tofloatyout = Module(new Fixed64ToFloat32())
    val tofloatzout = Module(new Fixed64ToFloat32())


    tofloatxout.io.in := xr(1).asUInt
    tofloatyout.io.in := yr(1).asUInt
    tofloatzout.io.in := zr(1).asUInt

    io.out_x := tofloatxout.io.out
    io.out_y := tofloatyout.io.out
    io.out_z := tofloatzout.io.out

  }



}

object VCORDICMain extends App {
  (new ChiselStage).execute(
    Array(
      "-X", "verilog",
      "-e", "verilog",
      "--target-dir", "GeneratedVerilog/Trig/VCORDIC"),
    Seq(ChiselGeneratorAnnotation(() => new VCORDIC(32,1,16)))
  )
}
