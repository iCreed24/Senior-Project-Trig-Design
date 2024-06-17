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

  val vcordic = Module(new VCORDIC(32))
  vcordic.io.in_x0 := 0x3f800000L.U //This is 1.0f
  vcordic.io.in_y0 := io.in
  vcordic.io.in_z0 := 0.U
  vcordic.io.in_mode := 0.U

  io.out := vcordic.io.out_z

}

object AtanMain extends App {
  val pw = new PrintWriter("atan.v")
  pw.println(getVerilogString(new Atan(32)))
  pw.close()
}
