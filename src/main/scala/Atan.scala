package Trig

import chisel3._

import java.io.PrintWriter
import chisel3.util._
import Binary_Modules.BinaryDesigns._
import FP_Modules.FloatingPointDesigns._
import chisel3.stage.ChiselStage

class Atan (bw : Int) extends Module {
  require (bw == 32)
  val io = IO(new Bundle() {
    val in = Input(UInt(bw.W))
    val out = Output(UInt(bw.W))
  }
  )

  /* If 6 digits of precision are good enough, z = atan(y) is PI/2 to 6 decimal places by y=1E7,
  and it is also 0 to 6 decimal places by y=1E-7. Straying outside that range will not change the
   result inside of 6 decimal places. */
  val y_upper_bound = 0x4b189680L.S(32.W)
  val y_lower_bound = 0x322bcc77L.S(32.W)
  val inputsign = io.in(31)
  val inputmag = 0.U ## io.in(30,0)
  val vcordic = Module(new VCORDIC(32))
  vcordic.io.in_x0 := 0x3f800000L.U //This is 1.0f

  vcordic.io.in_y0 := Mux(inputmag.asSInt > y_upper_bound, (inputsign ## y_upper_bound(30, 0)).asUInt,
    Mux(inputmag.asSInt <= y_lower_bound, (inputsign ## y_lower_bound(30, 0)).asUInt, io.in))

  vcordic.io.in_z0 := 0.U

  io.out := vcordic.io.out_z

}

object AtanMain extends App {
  val pw = new PrintWriter("atan.v")
  pw.println(getVerilogString(new Atan(32)))
  pw.close()
}
