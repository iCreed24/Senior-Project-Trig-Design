package Trig
import chisel3._

import java.io.PrintWriter
import chisel3.util._
import Binary_Modules.BinaryDesigns._
import FP_Modules.FloatingPointDesigns._
import chisel3.stage.ChiselStage


class Cos(bw: Int) extends Module
{
  val io = IO(new Bundle() {
    val in = Input(UInt(bw.W))
    val out = Output(UInt(bw.W))
  }
  )
  val PI_DIV_TWO = 0x1921fb60L.S
  val TWO_PI = 0x6487ed80L.S
  val PI = 0x3243f6c0L.S
  val THREE_PI_DIV_TWO = 0x4b65f200L.S

  val tofixedz0 = Module(new FloatToFixed32())
  tofixedz0.io.in := io.in


  val cordic = Module(new CORDIC(32))
  cordic.io.in_x0 := 1058764014.U //This is k ~ .607
  cordic.io.in_y0 := 0.U

  /* We perform the float to fixed conversion for CORDIC here so we can use integer comparisons
    for the fixed point quadrant determination.

    Since:
    1) The input and output may be separated by dozens of cycles, and
    2) We decide how to adjust both the input and output from the value of the input angle at the time of input

    We need to encode the type of range reduction into a value we pass through the CORDIC pipeline
    along with the inputs to it so that when we get the output of the module we remember how to adjust
    the output.
  */

  val theta = Mux(tofixedz0.io.out.asSInt < 0.S, tofixedz0.io.out.asSInt + TWO_PI, tofixedz0.io.out.asSInt)
  val outmode = cordic.io.out_mode

  when(theta > THREE_PI_DIV_TWO){
    cordic.io.in_mode := 2.U
  }.elsewhen(theta > PI_DIV_TWO && theta < THREE_PI_DIV_TWO){
    cordic.io.in_mode := 1.U
  }.otherwise
  {
    cordic.io.in_mode := 0.U
  }

  when(outmode === 2.U){
    cordic.io.in_z0 := (theta - TWO_PI).asUInt
    io.out := cordic.io.out_x
  }.elsewhen(outmode === 1.U){
    cordic.io.in_z0 := (PI - theta).asUInt
    io.out := ~cordic.io.out_x(31) ## cordic.io.out_x(30,0)
  }.otherwise
  {
    cordic.io.in_z0 := theta.asUInt
    io.out := cordic.io.out_x
  }

}
