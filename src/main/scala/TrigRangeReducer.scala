package Trig

import chisel3._

import java.io.PrintWriter
import chisel3.util._
import Binary_Modules.BinaryDesigns._
import FP_Modules.FloatingPointDesigns._
import chisel3.stage.ChiselStage

class TrigRangeReducer(bw: Int) extends Module {
  /* Reduces a single precision floating point angle to between -2*pi and 2*pi.
  This uses a division and multiplication, which is very slow. Consider replacing with
  Double Modular Range Reduction in the future */
  require(bw == 32)
  val io = IO(new Bundle() {
    val in = Input(UInt(bw.W))
    val out = Output(UInt(bw.W))
  }
  )
  val TWO_PI = 0x40c90fdbL.U // 2*pi as a single precision float
  val divider = Module(new FP_divider_newfpu(32, 1))
  val extractor = Module(new FP_extract(32))
  val mul = Module(new FP_multiplier_10ccs(32))

  divider.io.in_en := 1.U
  divider.io.in_a := io.in
  divider.io.in_b := TWO_PI

  extractor.io.in_a := divider.io.out_s
  extractor.io.out_frac //fractional part
  extractor.io.out //integer part

  mul.io.in_en := 1.U
  mul.io.in_a := extractor.io.out_frac
  mul.io.in_b := TWO_PI
  io.out := mul.io.out_s
}
