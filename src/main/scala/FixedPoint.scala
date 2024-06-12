package Trig
import chisel3._

import java.io.PrintWriter
import chisel3.util._
import Binary_Modules.BinaryDesigns._
import FP_Modules.FloatingPointDesigns._
import chisel3.stage.ChiselStage

class FloatToFixed32 extends Module {
  /* Converts a single precision float to a Q4.28 fixed point number */
  /* Q4.28 means a fixed point number w/ 4 integer bits, 28 fractional */
  val io = IO(new Bundle() {
    val in : UInt = Input(UInt(32.W))
    val out : UInt = Output(UInt(32.W))
  })
  val frac : UInt = ("b000000000".U(9.W) ## io.in(22, 0))
  val exp : UInt = io.in(30, 23)
  val sign : UInt = io.in(31)
  val shiftamt = (exp - 127.U(8.W)).asSInt

  val data = Mux(shiftamt(7) === 1.U,
    ((frac(31,0) | 0x00800000.U(32.W)) << 5.U) >> (-shiftamt).asUInt,
    ((frac(31,0) | 0x00800000.U(32.W)) << 5.U) << (shiftamt).asUInt).asUInt
  io.out := Mux(io.in(31) === 1.U, 0.U - data, data)
}

class CLZ32 extends Module{
  val io = IO(new Bundle() {
    val in : UInt = Input(UInt(32.W))
    val out : UInt = Output(UInt(5.W))
  })
  /* Uses a sequence of masks in a binary search to find the number of leading zeros */
  val x = io.in
  val ax = x
  val bx = Mux((ax & 0xFFFF0000L.U) === 0.U, ax << 16, ax)
  val cx = Mux((bx & 0xFF000000L.U) === 0.U, bx << 8, bx)
  val dx = Mux((cx & 0xF0000000L.U) === 0.U, cx << 4, cx)
  val ex = Mux((dx & 0xC0000000L.U) === 0.U, dx << 2, dx)

  io.out := ((ax & 0xFFFF0000L.U) === 0.U) ## ((bx & 0xFF000000L.U) === 0.U) ## ((cx & 0xF0000000L.U) === 0.U) ##
    ((dx & 0xC0000000L.U) === 0.U) ## ((ex & 0x80000000L.U) === 0.U)

}

class FixedToFloat32 extends Module {
  /* Converts a Q4.28 fixed point number to a single precision float */
  /* Q4.28 means a fixed point number w/ 4 integer bits, 28 fractional */
  val io = IO(new Bundle() {
    val in : UInt = Input(UInt(32.W))
    val out : UInt = Output(UInt(32.W))
  })

  val sign  = Wire(SInt(1.W))
  val exp = Wire(SInt(8.W))
  val frac = Wire(SInt(23.W))

  val data = Wire(UInt(32.W))
  data := Mux(io.in(31) === 1.U, (~io.in).asUInt + 1.U, io.in)
  sign := io.in(31).asSInt

  val clz32 = Module(new CLZ32())
  clz32.io.in := data.asUInt
  val leadingzeros = Wire(UInt(19.W))
  leadingzeros := 0x0L.U(14.W) ## clz32.io.out(4,0)

  exp := ((4.S - 1.S) - leadingzeros.asSInt) + 127.S
  frac := (((data.asSInt << (leadingzeros + 1.U).asUInt)).asSInt >> (32.U - 23.U));

  io.out := io.in(31) ## exp.asUInt ## frac(22,0)
}
