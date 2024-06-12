import chisel3._
import java.io.PrintWriter
import chisel3.util._
import Binary_Modules.BinaryDesigns._
import FP_Modules.FloatingPointDesigns._


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



class CORDIC(bw: Int) extends Module {
/* Am told we only care about single precision */
require(bw == 32)
val io = IO(new Bundle() {
  val in_x0 : UInt = Input(UInt(bw.W))
  val in_y0 : UInt = Input(UInt(bw.W))
  val in_z0 : UInt = Input(UInt(bw.W))

  val out_x : UInt = Output(UInt(bw.W))
  val out_y : UInt = Output(UInt(bw.W))
  val out_z : UInt = Output(UInt(bw.W))
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
  val tofixedz0 = Module(new FloatToFixed32())

  tofixedx0.io.in := io.in_x0
  tofixedy0.io.in := io.in_y0
  tofixedz0.io.in := io.in_z0 // Disable for cos

  val x = RegInit(VecInit(Seq.fill(bw)(0.S(bw.W))))
  val y = RegInit(VecInit(Seq.fill(bw)(0.S(bw.W))))
  var theta = RegInit(VecInit(Seq.fill(bw)(0.S(bw.W))))
  var z0s = RegInit(VecInit(Seq.fill(bw)(0.S(bw.W))))

  /* Floating point inputs converted to fixed point */
  val fixedx0 = tofixedx0.io.out
  val fixedy0 = tofixedy0.io.out
  val fixedz0 = tofixedz0.io.out // change this directly to input for cos


  theta(0) := 0.S
  x(0) := fixedx0.asSInt
  y(0) := fixedy0.asSInt
  z0s(0) := fixedz0.asSInt

  for(n <- 0 to 30){

    var fxxterm = Mux(theta(n) > z0s(n), -x(n), x(n))
    var fxyterm = Mux(theta(n) > z0s(n), -y(n), y(n))
    var fxthetaterm = Mux(theta(n) > z0s(n), -atantable(n), atantable(n))

    theta(n + 1) := theta(n) + fxthetaterm.asSInt;
    x(n + 1) := x(n) - (fxyterm >> n.asUInt).asSInt
    y(n + 1) := (fxxterm >> n.asUInt).asSInt + y(n)
    z0s(n + 1) := z0s(n)
  }

  val tofloatxout = Module(new FixedToFloat32())
  val tofloatyout = Module(new FixedToFloat32())
  val tofloatzout = Module(new FixedToFloat32())

  /*
  //Output fixed point
  io.out_x := x(31).asUInt
  io.out_y := y(31).asUInt
  io.out_z := theta(31).asUInt
  */

  //Translate back to floating point
  tofloatxout.io.in := x(31).asUInt
  tofloatyout.io.in := y(31).asUInt
  tofloatzout.io.in := z0s(31).asUInt

  io.out_x := tofloatxout.io.out
  io.out_y := tofloatyout.io.out
  io.out_z := tofloatzout.io.out

}

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

  /*  PI/2: 0x1921fb60
      2PI: 0x6487ed80
      PI: 0x3243f6c0
      1.5*PI: 0x4b65f200
  */

  val cordic = Module(new CORDIC(32))
  cordic.io.in_x0 := 1058764014.U //This is k ~ .607
  //cordic.io.in_x0 := 0x10000000L.U
  cordic.io.in_y0 := 0.U

  /* We perform the float to fixed conversion for CORDIC here so we can use integer comparisons for the fixed point
    quadrant determination
  */

  //If theta < 0, theta = theta + 2*pi

   val theta = Reg(SInt(bw.W))
   theta := Mux(tofixedz0.io.out.asSInt < 0.S, tofixedz0.io.out.asSInt + TWO_PI, tofixedz0.io.out.asSInt)

  when(theta > TWO_PI){
    //Angle should already be fmodded to under 2*pi; this should be unnecessary
    //cos(theta - 2*pi)
    cordic.io.in_z0 := (theta - TWO_PI).asUInt
    io.out := cordic.io.out_x
  } .elsewhen(theta > THREE_PI_DIV_TWO){
    //cos(2*pi - theta)
    cordic.io.in_z0 := (TWO_PI - theta).asUInt
    io.out := cordic.io.out_x}
  .elsewhen(theta > PI_DIV_TWO){
    //-sin(theta - pi/2)
    cordic.io.in_z0 := (theta - PI_DIV_TWO).asUInt
    io.out := ~cordic.io.out_y(31) ## cordic.io.out_y(30,0)
  }
  .elsewhen(theta > PI){
    //-cos(theta - pi)
    cordic.io.in_z0 := (theta - PI).asUInt
    io.out := ~cordic.io.out_x(31) ## cordic.io.out_x(30,0)
  }.otherwise{
    //cos(theta)
      cordic.io.in_z0 := theta.asUInt
      io.out := cordic.io.out_x
    }


}

object Main extends App {

val pw = new PrintWriter("testcordic.v")
pw.println(getVerilogString(new CORDIC(32)))
pw.close()
val pw2 = new PrintWriter("fixed.v")
pw2.println(getVerilogString(new FloatToFixed32()))
pw2.println(getVerilogString(new FixedToFloat32()))
pw2.close()

val pw3 = new PrintWriter("clz.v")
pw3.println(getVerilogString(new CLZ32()))
pw3.close()

  val pw4 = new PrintWriter("trig.v")
  pw4.println(getVerilogString(new Cos(32)))
  pw4.close()

}