package Trig
import chisel3._

import java.io.PrintWriter
import chisel3.util._
import Binary_Modules.BinaryDesigns._
import FP_Modules.FloatingPointDesigns._
import chisel3.stage.ChiselStage

object Main extends App {
    val cstage = new ChiselStage
    cstage.emitVerilog(new CORDIC(32), args)
    cstage.emitVerilog(new Sin(32), args)
    cstage.emitVerilog(new Cos(32), args)
    cstage.emitVerilog(new TrigRangeReducer(32), args)
}
