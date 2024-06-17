package Trig
import chisel3._

import java.io.PrintWriter
import chisel3.util._
import Binary_Modules.BinaryDesigns._
import FP_Modules.FloatingPointDesigns._
import chisel3.stage.ChiselStage

object Main extends App {
    val pw = new PrintWriter("fixed64.v")
    pw.println(getVerilogString(new Float32ToFixed64()))
  pw.println(getVerilogString(new Fixed64ToFloat32()))
      pw.close()
}
