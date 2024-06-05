import chisel3._
import java.io.PrintWriter
import chisel3.util._
import Binary_Modules.BinaryDesigns._
import FP_Modules.FloatingPointDesigns._


class AdderSubber(bw: Int) extends Module {
  require(bw == 16 || bw == 32 || bw == 64 || bw == 128)
  val io = IO(new Bundle() {
    val in_a: UInt = Input(UInt(bw.W))
    val in_b: UInt = Input(UInt(bw.W))
    val in_sel: UInt = Input(UInt(1.W)) // 0 for add, 1 for subtract
    val out_s: UInt = Output(UInt(bw.W))
  })

  /* in_sel is 1 for subtraction, 0 for addition */
  private val adder: FP_adder = Module(new FP_adder(bw))

  adder.io.in_a := io.in_a
  adder.io.in_b := Mux(io.in_sel === 0.U, io.in_b(bw - 1), ~io.in_b(bw - 1) ) ## io.in_b(bw - 2, 0)

  io.out_s := adder.io.out_s
}

class FloatHalver(bw: Int) extends Module {
  val io = IO(new Bundle() {
    val in: UInt = Input(UInt(bw.W))
    val amt: UInt = Input(UInt(log2Up(bw).W))
    val out: UInt = Output(UInt(bw.W))
  })

  private def GetExponentFieldWidth(bitwidth: Int): Int = {
    bitwidth match {
      case 16 => 5
      case 32 => 8
      case 64 => 11
      case 128 => 15
    }
  }

  private val subber = Module(new full_subber(GetExponentFieldWidth(bw)))
  subber.io.in_c := 0.U //0 carry in
  subber.io.in_a := io.in(bw - 2, bw - (1 + GetExponentFieldWidth(bw)))
  subber.io.in_b := io.amt
  io.out := Mux(io.in === 0.U, 0.U, io.in(bw - 1) ## subber.io.out_s ## io.in(bw - (2 + GetExponentFieldWidth(bw)), 0))
}

class CORDIC_Controller(bw: Int) extends Module {
  require(bw == 16 || bw == 32 || bw == 64 || bw == 128)
  val io = IO(new Bundle() {
    val out_output_rdy: UInt = Output(UInt(1.W))
    val out_pipe_rdy: UInt = Output(UInt(1.W))
  })

  private val iteration_count = RegInit(0.U(bw.W))
  val pipeline_count : UInt = RegInit(0.U(bw.W))

  // Need an iteration per bit of precision. When this resets to 0, the output should be ready

  io.out_output_rdy := Mux(iteration_count === bw.U - 1.U, 1.U, 0.U) // When output is ready, there have been bw iterations
  io.out_pipe_rdy := Mux(pipeline_count === 3.U, 1.U, 0.U) // When pipe_rdy is high, an iteration is complete

  pipeline_count := Mux(pipeline_count === 4.U, 0.U, pipeline_count + 1.U)
  iteration_count := Mux(iteration_count === 31.U, 0.U, iteration_count + 1.U)
}

class CORDIC(bw: Int) extends Module {
  require(bw == 16 || bw == 32 || bw == 64 || bw == 128)
  val io = IO(new Bundle() {
    val in_x0 : UInt = Input(UInt(bw.W))
    val in_y0 : UInt = Input(UInt(bw.W))
    val in_z0 : UInt = Input(UInt(bw.W))
    val in_cc : UInt = Input(UInt(log2Up(bw).W))

    val out_x : UInt = Output(UInt(bw.W))
    val out_y : UInt = Output(UInt(bw.W))
    val out_z : UInt = Output(UInt(bw.W))
    val dbg_out_atan : UInt = Output((UInt(bw.W)))
    val dbg_out_counter : UInt = Output(UInt(log2Up(bw).W))
    val out_output_ready : UInt = Output((UInt(1.W)))
    val out_pipe_ready : UInt = Output((UInt(1.W)))
  })

  private val stages : Int = 5
  private val x = RegInit(VecInit.fill(stages)(0.U(bw.W)))
  private val y = RegInit(VecInit.fill(stages)(0.U(bw.W)))
  private val theta = RegInit(VecInit.fill(stages)(0.U(bw.W)))
  private val cnt = RegInit(VecInit.fill(stages)(0.U(bw.W)))

  private val controller = Module(new CORDIC_Controller(bw))
  io.out_output_ready := controller.io.out_output_rdy
  io.out_pipe_ready := controller.io.out_pipe_rdy

  private val rom = Module(new CORDIC_ROM(bw))

  def sgn(float: UInt): UInt = {
    float(bw - 1)
  }

  //Stage 1

  private val xadder = Module(new AdderSubber(bw))
  private val yadder = Module(new AdderSubber(bw))

  x(0) := Mux(controller.io.out_pipe_rdy === 1.U, x(4), io.in_x0)
  y(0) := Mux(controller.io.out_pipe_rdy === 1.U, y(4), io.in_y0)
  theta(0) := Mux(controller.io.out_pipe_rdy === 1.U, theta(4), 0.U)
  io.dbg_out_counter := cnt(0)
  cnt(0) := Mux(controller.io.out_pipe_rdy === 1.U, cnt(3) + 1.U, 0.U)

  //Stage 2

  x(1) := x(0)
  y(1) := y(0)
  theta(1) := theta(0)
  cnt(1) := cnt(0)

  private val floatcmp = Module(new FP_comparator(bw))
  floatcmp.io.in_a := theta(0)
  floatcmp.io.in_b := io.in_z0
  private val ageb_st3 = RegNext(floatcmp.io.out_s === theta(0))

  //Stage 3


  theta(2) := theta(1)
  cnt(2) := cnt(1)

  private val yhalver = Module(new FloatHalver(bw))
  private val xhalver = Module(new FloatHalver(bw))

  xhalver.io.in := x(1)
  xhalver.io.amt := cnt(1)
  yhalver.io.in := y(1)
  yhalver.io.amt := cnt(1)

  xadder.io.in_a := x(1)
  xadder.io.in_b := Mux(ageb_st3 === 1.U, ~yhalver.io.out(bw - 1),
      yhalver.io.out(bw - 1)) ## yhalver.io.out(bw - 2, 0)
  xadder.io.in_sel := 1.U

  yadder.io.in_a := Mux(ageb_st3 === 1.U, ~xhalver.io.out(bw - 1),
      xhalver.io.out(bw - 1)) ## xhalver.io.out(bw - 2, 0)
  yadder.io.in_b := y(1)
  yadder.io.in_sel := 0.U

  private val theta_addersubber = Module(new AdderSubber(bw))
  theta_addersubber.io.in_a := theta(1) //theta
  rom.io.atanselect := cnt(1) // This doesn't have a clock so it should be combinational?
  theta_addersubber.io.in_b := rom.io.atanout // alpha
  theta_addersubber.io.in_sel := ageb_st3 // sel === 0 means add
  x(2) := xadder.io.out_s
  y(2) := yadder.io.out_s

  //Stage 4
  x(3) := x(2)
  y(3) := y(2)
  theta(3) := theta_addersubber.io.out_s
  cnt(3) := cnt(2)
  io.out_x := xadder.io.out_s
  io.out_y := yadder.io.out_s
  io.out_z := theta(3)

  //Stage 5
  x(4) := x(3)
  y(4) := y(3)
  theta(4) := theta(3)
  io.dbg_out_atan := rom.io.atanout
}

class CORDIC_ROM(bw: Int) extends Module {
  val io = IO(new Bundle() {
    val k = Output(UInt(bw.W))
    val atanout = Output(UInt(bw.W))

    val atanselect = Input(UInt(log2Up(bw).W))
  })

  var quadprec_k = scala.BigInt("0", 16)
  var doubleprec_k = scala.BigInt("0", 10)
  var singleprec_k = UInt(32.W)
  var halfprec_k = UInt(16.W)

  val atantable = Wire(Vec(bw, UInt(bw.W)))

  io.atanout := atantable(io.atanselect)

  bw match {
    case 16 => io.k := 14556.U
    case 32 => io.k := 1058764014.U
    case 64 => io.k := scala.BigInt("4603644867728927691", 10).U
    case 128 => io.k := scala.BigInt("3ffe36e9db5086bcb4cfebf21257affb", 16).U
  }

  if (128 == bw) {
    atantable(0) := scala.BigInt("3ffe921fb54442d18469898cc51701b8", 16).U(128.W) //7.853982e-01
    atantable(1) := scala.BigInt("3ffddac670561bb4f68adfc88bd97875", 16).U(128.W) //4.636476e-01
    atantable(2) := scala.BigInt("3ffcf5b75f92c80dd62adb8f3debef44", 16).U(128.W) //2.449787e-01
    atantable(3) := scala.BigInt("3ffbfd5ba9aac2f6dc65912f313e7d11", 16).U(128.W) //1.243550e-01
    atantable(4) := scala.BigInt("3ffaff55bb72cfde9c6d964f25b81c5c", 16).U(128.W) //6.241881e-02
    atantable(5) := scala.BigInt("3ff9ffd55bba97624a84ef3aeedbb519", 16).U(128.W) //3.123983e-02
    atantable(6) := scala.BigInt("3ff8fff555bbb729ab77cf18ac802bef", 16).U(128.W) //1.562373e-02
    atantable(7) := scala.BigInt("3ff7fffd555bbba972d00c46a3f77cc1", 16).U(128.W) //7.812341e-03
    atantable(8) := scala.BigInt("3ff6ffff5555bbbb72976255f6d6da9f", 16).U(128.W) //3.906230e-03
    atantable(9) := scala.BigInt("3ff5ffffd5555bbbba9729ab7aac0894", 16).U(128.W) //1.953123e-03
    atantable(10) := scala.BigInt("3ff4fffff55555bbbbb72972d00cfde7", 16).U(128.W) //9.765622e-04
    atantable(11) := scala.BigInt("3ff3fffffd55555bbbbba97297625625", 16).U(128.W) //4.882812e-04
    atantable(12) := scala.BigInt("3ff2ffffff555555bbbbbb729729ab7b", 16).U(128.W) //2.441406e-04
    atantable(13) := scala.BigInt("3ff1ffffffd555555bbbbbba972972d0", 16).U(128.W) //1.220703e-04
    atantable(14) := scala.BigInt("3ff0fffffff5555555bbbbbbb7297297", 16).U(128.W) //6.103516e-05
    atantable(15) := scala.BigInt("3feffffffffd5555555bbbbbbba97297", 16).U(128.W) //3.051758e-05
    atantable(16) := scala.BigInt("3feeffffffff55555555bbbbbbbb7297", 16).U(128.W) //1.525879e-05
    atantable(17) := scala.BigInt("3fedffffffffd55555555bbbbbbbba97", 16).U(128.W) //7.629395e-06
    atantable(18) := scala.BigInt("3fecfffffffff555555555bbbbbbbbb7", 16).U(128.W) //3.814697e-06
    atantable(19) := scala.BigInt("3febfffffffffd555555555bbbbbbbbc", 16).U(128.W) //1.907349e-06
    atantable(20) := scala.BigInt("3feaffffffffff5555555555bbbbbbbc", 16).U(128.W) //9.536743e-07
    atantable(21) := scala.BigInt("3fe9ffffffffffd5555555555bbbbbbc", 16).U(128.W) //4.768372e-07
    atantable(22) := scala.BigInt("3fe8fffffffffff55555555555bbbbbc", 16).U(128.W) //2.384186e-07
    atantable(23) := scala.BigInt("3fe7fffffffffffd55555555555bbbbc", 16).U(128.W) //1.192093e-07
    atantable(24) := scala.BigInt("3fe6ffffffffffff555555555555bbbc", 16).U(128.W) //5.960464e-08
    atantable(25) := scala.BigInt("3fe5ffffffffffffd555555555555bbc", 16).U(128.W) //2.980232e-08
    atantable(26) := scala.BigInt("3fe4fffffffffffff5555555555555bc", 16).U(128.W) //1.490116e-08
    atantable(27) := scala.BigInt("3fe3fffffffffffffd5555555555555c", 16).U(128.W) //7.450581e-09
    atantable(28) := scala.BigInt("3fe2ffffffffffffff55555555555556", 16).U(128.W) //3.725290e-09
    atantable(29) := scala.BigInt("3fe1ffffffffffffffd5555555555555", 16).U(128.W) //1.862645e-09
    atantable(30) := scala.BigInt("3fe0fffffffffffffff5555555555555", 16).U(128.W) //9.313226e-10
    atantable(31) := scala.BigInt("4000921fb54342d18469898cc518570e", 16).U(128.W) //3.141593e+00
    atantable(32) := scala.BigInt("3ffe921fb54442d18469898cc51701b8", 16).U(128.W) //7.853982e-01
    atantable(33) := scala.BigInt("3ffddac670561bb4f68adfc88bd97875", 16).U(128.W) //4.636476e-01
    atantable(34) := scala.BigInt("3ffcf5b75f92c80dd62adb8f3debef44", 16).U(128.W) //2.449787e-01
    atantable(35) := scala.BigInt("3ffbfd5ba9aac2f6dc65912f313e7d11", 16).U(128.W) //1.243550e-01
    atantable(36) := scala.BigInt("3ffaff55bb72cfde9c6d964f25b81c5c", 16).U(128.W) //6.241881e-02
    atantable(37) := scala.BigInt("3ff9ffd55bba97624a84ef3aeedbb519", 16).U(128.W) //3.123983e-02
    atantable(38) := scala.BigInt("3ff8fff555bbb729ab77cf18ac802bef", 16).U(128.W) //1.562373e-02
    atantable(39) := scala.BigInt("3ff7fffd555bbba972d00c46a3f77cc1", 16).U(128.W) //7.812341e-03
    atantable(40) := scala.BigInt("3ff6ffff5555bbbb72976255f6d6da9f", 16).U(128.W) //3.906230e-03
    atantable(41) := scala.BigInt("3ff5ffffd5555bbbba9729ab7aac0894", 16).U(128.W) //1.953123e-03
    atantable(42) := scala.BigInt("3ff4fffff55555bbbbb72972d00cfde7", 16).U(128.W) //9.765622e-04
    atantable(43) := scala.BigInt("3ff3fffffd55555bbbbba97297625625", 16).U(128.W) //4.882812e-04
    atantable(44) := scala.BigInt("3ff2ffffff555555bbbbbb729729ab7b", 16).U(128.W) //2.441406e-04
    atantable(45) := scala.BigInt("3ff1ffffffd555555bbbbbba972972d0", 16).U(128.W) //1.220703e-04
    atantable(46) := scala.BigInt("3ff0fffffff5555555bbbbbbb7297297", 16).U(128.W) //6.103516e-05
    atantable(47) := scala.BigInt("3feffffffffd5555555bbbbbbba97297", 16).U(128.W) //3.051758e-05
    atantable(48) := scala.BigInt("3feeffffffff55555555bbbbbbbb7297", 16).U(128.W) //1.525879e-05
    atantable(49) := scala.BigInt("3fedffffffffd55555555bbbbbbbba97", 16).U(128.W) //7.629395e-06
    atantable(50) := scala.BigInt("3fecfffffffff555555555bbbbbbbbb7", 16).U(128.W) //3.814697e-06
    atantable(51) := scala.BigInt("3febfffffffffd555555555bbbbbbbbc", 16).U(128.W) //1.907349e-06
    atantable(52) := scala.BigInt("3feaffffffffff5555555555bbbbbbbc", 16).U(128.W) //9.536743e-07
    atantable(53) := scala.BigInt("3fe9ffffffffffd5555555555bbbbbbc", 16).U(128.W) //4.768372e-07
    atantable(54) := scala.BigInt("3fe8fffffffffff55555555555bbbbbc", 16).U(128.W) //2.384186e-07
    atantable(55) := scala.BigInt("3fe7fffffffffffd55555555555bbbbc", 16).U(128.W) //1.192093e-07
    atantable(56) := scala.BigInt("3fe6ffffffffffff555555555555bbbc", 16).U(128.W) //5.960464e-08
    atantable(57) := scala.BigInt("3fe5ffffffffffffd555555555555bbc", 16).U(128.W) //2.980232e-08
    atantable(58) := scala.BigInt("3fe4fffffffffffff5555555555555bc", 16).U(128.W) //1.490116e-08
    atantable(59) := scala.BigInt("3fe3fffffffffffffd5555555555555c", 16).U(128.W) //7.450581e-09
    atantable(60) := scala.BigInt("3fe2ffffffffffffff55555555555556", 16).U(128.W) //3.725290e-09
    atantable(61) := scala.BigInt("3fe1ffffffffffffffd5555555555555", 16).U(128.W) //1.862645e-09
    atantable(62) := scala.BigInt("3fe0fffffffffffffff5555555555555", 16).U(128.W) //9.313226e-10
    atantable(63) := scala.BigInt("4000921fb54342d18469898cc518570e", 16).U(128.W) //3.141593e+00
    atantable(64) := scala.BigInt("3ffe921fb54442d18469898cc51701b8", 16).U(128.W) //7.853982e-01
    atantable(65) := scala.BigInt("3ffddac670561bb4f68adfc88bd97875", 16).U(128.W) //4.636476e-01
    atantable(66) := scala.BigInt("3ffcf5b75f92c80dd62adb8f3debef44", 16).U(128.W) //2.449787e-01
    atantable(67) := scala.BigInt("3ffbfd5ba9aac2f6dc65912f313e7d11", 16).U(128.W) //1.243550e-01
    atantable(68) := scala.BigInt("3ffaff55bb72cfde9c6d964f25b81c5c", 16).U(128.W) //6.241881e-02
    atantable(69) := scala.BigInt("3ff9ffd55bba97624a84ef3aeedbb519", 16).U(128.W) //3.123983e-02
    atantable(70) := scala.BigInt("3ff8fff555bbb729ab77cf18ac802bef", 16).U(128.W) //1.562373e-02
    atantable(71) := scala.BigInt("3ff7fffd555bbba972d00c46a3f77cc1", 16).U(128.W) //7.812341e-03
    atantable(72) := scala.BigInt("3ff6ffff5555bbbb72976255f6d6da9f", 16).U(128.W) //3.906230e-03
    atantable(73) := scala.BigInt("3ff5ffffd5555bbbba9729ab7aac0894", 16).U(128.W) //1.953123e-03
    atantable(74) := scala.BigInt("3ff4fffff55555bbbbb72972d00cfde7", 16).U(128.W) //9.765622e-04
    atantable(75) := scala.BigInt("3ff3fffffd55555bbbbba97297625625", 16).U(128.W) //4.882812e-04
    atantable(76) := scala.BigInt("3ff2ffffff555555bbbbbb729729ab7b", 16).U(128.W) //2.441406e-04
    atantable(77) := scala.BigInt("3ff1ffffffd555555bbbbbba972972d0", 16).U(128.W) //1.220703e-04
    atantable(78) := scala.BigInt("3ff0fffffff5555555bbbbbbb7297297", 16).U(128.W) //6.103516e-05
    atantable(79) := scala.BigInt("3feffffffffd5555555bbbbbbba97297", 16).U(128.W) //3.051758e-05
    atantable(80) := scala.BigInt("3feeffffffff55555555bbbbbbbb7297", 16).U(128.W) //1.525879e-05
    atantable(81) := scala.BigInt("3fedffffffffd55555555bbbbbbbba97", 16).U(128.W) //7.629395e-06
    atantable(82) := scala.BigInt("3fecfffffffff555555555bbbbbbbbb7", 16).U(128.W) //3.814697e-06
    atantable(83) := scala.BigInt("3febfffffffffd555555555bbbbbbbbc", 16).U(128.W) //1.907349e-06
    atantable(84) := scala.BigInt("3feaffffffffff5555555555bbbbbbbc", 16).U(128.W) //9.536743e-07
    atantable(85) := scala.BigInt("3fe9ffffffffffd5555555555bbbbbbc", 16).U(128.W) //4.768372e-07
    atantable(86) := scala.BigInt("3fe8fffffffffff55555555555bbbbbc", 16).U(128.W) //2.384186e-07
    atantable(87) := scala.BigInt("3fe7fffffffffffd55555555555bbbbc", 16).U(128.W) //1.192093e-07
    atantable(88) := scala.BigInt("3fe6ffffffffffff555555555555bbbc", 16).U(128.W) //5.960464e-08
    atantable(89) := scala.BigInt("3fe5ffffffffffffd555555555555bbc", 16).U(128.W) //2.980232e-08
    atantable(90) := scala.BigInt("3fe4fffffffffffff5555555555555bc", 16).U(128.W) //1.490116e-08
    atantable(91) := scala.BigInt("3fe3fffffffffffffd5555555555555c", 16).U(128.W) //7.450581e-09
    atantable(92) := scala.BigInt("3fe2ffffffffffffff55555555555556", 16).U(128.W) //3.725290e-09
    atantable(93) := scala.BigInt("3fe1ffffffffffffffd5555555555555", 16).U(128.W) //1.862645e-09
    atantable(94) := scala.BigInt("3fe0fffffffffffffff5555555555555", 16).U(128.W) //9.313226e-10
    atantable(95) := scala.BigInt("4000921fb54342d18469898cc518570e", 16).U(128.W) //3.141593e+00
    atantable(96) := scala.BigInt("3ffe921fb54442d18469898cc51701b8", 16).U(128.W) //7.853982e-01
    atantable(97) := scala.BigInt("3ffddac670561bb4f68adfc88bd97875", 16).U(128.W) //4.636476e-01
    atantable(98) := scala.BigInt("3ffcf5b75f92c80dd62adb8f3debef44", 16).U(128.W) //2.449787e-01
    atantable(99) := scala.BigInt("3ffbfd5ba9aac2f6dc65912f313e7d11", 16).U(128.W) //1.243550e-01
    atantable(100) := scala.BigInt("3ffaff55bb72cfde9c6d964f25b81c5c", 16).U(128.W) //6.241881e-02
    atantable(101) := scala.BigInt("3ff9ffd55bba97624a84ef3aeedbb519", 16).U(128.W) //3.123983e-02
    atantable(102) := scala.BigInt("3ff8fff555bbb729ab77cf18ac802bef", 16).U(128.W) //1.562373e-02
    atantable(103) := scala.BigInt("3ff7fffd555bbba972d00c46a3f77cc1", 16).U(128.W) //7.812341e-03
    atantable(104) := scala.BigInt("3ff6ffff5555bbbb72976255f6d6da9f", 16).U(128.W) //3.906230e-03
    atantable(105) := scala.BigInt("3ff5ffffd5555bbbba9729ab7aac0894", 16).U(128.W) //1.953123e-03
    atantable(106) := scala.BigInt("3ff4fffff55555bbbbb72972d00cfde7", 16).U(128.W) //9.765622e-04
    atantable(107) := scala.BigInt("3ff3fffffd55555bbbbba97297625625", 16).U(128.W) //4.882812e-04
    atantable(108) := scala.BigInt("3ff2ffffff555555bbbbbb729729ab7b", 16).U(128.W) //2.441406e-04
    atantable(109) := scala.BigInt("3ff1ffffffd555555bbbbbba972972d0", 16).U(128.W) //1.220703e-04
    atantable(110) := scala.BigInt("3ff0fffffff5555555bbbbbbb7297297", 16).U(128.W) //6.103516e-05
    atantable(111) := scala.BigInt("3feffffffffd5555555bbbbbbba97297", 16).U(128.W) //3.051758e-05
    atantable(112) := scala.BigInt("3feeffffffff55555555bbbbbbbb7297", 16).U(128.W) //1.525879e-05
    atantable(113) := scala.BigInt("3fedffffffffd55555555bbbbbbbba97", 16).U(128.W) //7.629395e-06
    atantable(114) := scala.BigInt("3fecfffffffff555555555bbbbbbbbb7", 16).U(128.W) //3.814697e-06
    atantable(115) := scala.BigInt("3febfffffffffd555555555bbbbbbbbc", 16).U(128.W) //1.907349e-06
    atantable(116) := scala.BigInt("3feaffffffffff5555555555bbbbbbbc", 16).U(128.W) //9.536743e-07
    atantable(117) := scala.BigInt("3fe9ffffffffffd5555555555bbbbbbc", 16).U(128.W) //4.768372e-07
    atantable(118) := scala.BigInt("3fe8fffffffffff55555555555bbbbbc", 16).U(128.W) //2.384186e-07
    atantable(119) := scala.BigInt("3fe7fffffffffffd55555555555bbbbc", 16).U(128.W) //1.192093e-07
    atantable(120) := scala.BigInt("3fe6ffffffffffff555555555555bbbc", 16).U(128.W) //5.960464e-08
    atantable(121) := scala.BigInt("3fe5ffffffffffffd555555555555bbc", 16).U(128.W) //2.980232e-08
    atantable(122) := scala.BigInt("3fe4fffffffffffff5555555555555bc", 16).U(128.W) //1.490116e-08
    atantable(123) := scala.BigInt("3fe3fffffffffffffd5555555555555c", 16).U(128.W) //7.450581e-09
    atantable(124) := scala.BigInt("3fe2ffffffffffffff55555555555556", 16).U(128.W) //3.725290e-09
    atantable(125) := scala.BigInt("3fe1ffffffffffffffd5555555555555", 16).U(128.W) //1.862645e-09
    atantable(126) := scala.BigInt("3fe0fffffffffffffff5555555555555", 16).U(128.W) //9.313226e-10
    atantable(127) := scala.BigInt("4000921fb54342d18469898cc518570e", 16).U(128.W) //3.141593e+00

  }
  else if (64 == bw) {
    atantable(0) := scala.BigInt("4605249457297304856", 10).U(64.W) //0.785398
    atantable(1) := scala.BigInt("4602023952714414927", 10).U(64.W) //0.463648
    atantable(2) := scala.BigInt("4597994306818310365", 10).U(64.W) //0.244979
    atantable(3) := scala.BigInt("4593625142376804206", 10).U(64.W) //0.124355
    atantable(4) := scala.BigInt("4589156319577832938", 10).U(64.W) //0.062419
    atantable(5) := scala.BigInt("4584661490348946981", 10).U(64.W) //0.031240
    atantable(6) := scala.BigInt("4580160088135398043", 10).U(64.W) //0.015624
    atantable(7) := scala.BigInt("4575657038163196567", 10).U(64.W) //0.007812
    atantable(8) := scala.BigInt("4571153575968488375", 10).U(64.W) //0.003906
    atantable(9) := scala.BigInt("4566650010700463036", 10).U(64.W) //0.001953
    atantable(10) := scala.BigInt("4562146419663002556", 10).U(64.W) //0.000977
    atantable(11) := scala.BigInt("4557642822183114172", 10).U(64.W) //0.000488
    atantable(12) := scala.BigInt("4553139223092614492", 10).U(64.W) //0.000244
    atantable(13) := scala.BigInt("4548635623599461718", 10).U(64.W) //0.000122
    atantable(14) := scala.BigInt("4544132024005645653", 10).U(64.W) //0.000061
    atantable(15) := scala.BigInt("4539628424386663765", 10).U(64.W) //0.000031
    atantable(16) := scala.BigInt("4535124824761390421", 10).U(64.W) //0.000015
    atantable(17) := scala.BigInt("4530621225134544213", 10).U(64.W) //0.000008
    atantable(18) := scala.BigInt("4526117625507304789", 10).U(64.W) //0.000004
    atantable(19) := scala.BigInt("4521614025879967061", 10).U(64.W) //0.000002
    atantable(20) := scala.BigInt("4517110426252604757", 10).U(64.W) //0.000001
    atantable(21) := scala.BigInt("4512606826625236309", 10).U(64.W) //0.000000
    atantable(22) := scala.BigInt("4508103226997866325", 10).U(64.W) //0.000000
    atantable(23) := scala.BigInt("4503599627370495957", 10).U(64.W) //0.000000
    atantable(24) := scala.BigInt("4499096027743125493", 10).U(64.W) //0.000000
    atantable(25) := scala.BigInt("4494592428115755005", 10).U(64.W) //0.000000
    atantable(26) := scala.BigInt("4490088828488384511", 10).U(64.W) //0.000000
    atantable(27) := scala.BigInt("4485585228861014016", 10).U(64.W) //0.000000
    atantable(28) := scala.BigInt("4481081629233643520", 10).U(64.W) //0.000000
    atantable(29) := scala.BigInt("4476578029606273024", 10).U(64.W) //0.000000
    atantable(30) := scala.BigInt("4472074429978902528", 10).U(64.W) //0.000000
    atantable(31) := scala.BigInt("4614256656550997272", 10).U(64.W) //3.141593
    atantable(32) := scala.BigInt("4605249457297304856", 10).U(64.W) //0.785398
    atantable(33) := scala.BigInt("4602023952714414927", 10).U(64.W) //0.463648
    atantable(34) := scala.BigInt("4597994306818310365", 10).U(64.W) //0.244979
    atantable(35) := scala.BigInt("4593625142376804206", 10).U(64.W) //0.124355
    atantable(36) := scala.BigInt("4589156319577832938", 10).U(64.W) //0.062419
    atantable(37) := scala.BigInt("4584661490348946981", 10).U(64.W) //0.031240
    atantable(38) := scala.BigInt("4580160088135398043", 10).U(64.W) //0.015624
    atantable(39) := scala.BigInt("4575657038163196567", 10).U(64.W) //0.007812
    atantable(40) := scala.BigInt("4571153575968488375", 10).U(64.W) //0.003906
    atantable(41) := scala.BigInt("4566650010700463036", 10).U(64.W) //0.001953
    atantable(42) := scala.BigInt("4562146419663002556", 10).U(64.W) //0.000977
    atantable(43) := scala.BigInt("4557642822183114172", 10).U(64.W) //0.000488
    atantable(44) := scala.BigInt("4553139223092614492", 10).U(64.W) //0.000244
    atantable(45) := scala.BigInt("4548635623599461718", 10).U(64.W) //0.000122
    atantable(46) := scala.BigInt("4544132024005645653", 10).U(64.W) //0.000061
    atantable(47) := scala.BigInt("4539628424386663765", 10).U(64.W) //0.000031
    atantable(48) := scala.BigInt("4535124824761390421", 10).U(64.W) //0.000015
    atantable(49) := scala.BigInt("4530621225134544213", 10).U(64.W) //0.000008
    atantable(50) := scala.BigInt("4526117625507304789", 10).U(64.W) //0.000004
    atantable(51) := scala.BigInt("4521614025879967061", 10).U(64.W) //0.000002
    atantable(52) := scala.BigInt("4517110426252604757", 10).U(64.W) //0.000001
    atantable(53) := scala.BigInt("4512606826625236309", 10).U(64.W) //0.000000
    atantable(54) := scala.BigInt("4508103226997866325", 10).U(64.W) //0.000000
    atantable(55) := scala.BigInt("4503599627370495957", 10).U(64.W) //0.000000
    atantable(56) := scala.BigInt("4499096027743125493", 10).U(64.W) //0.000000
    atantable(57) := scala.BigInt("4494592428115755005", 10).U(64.W) //0.000000
    atantable(58) := scala.BigInt("4490088828488384511", 10).U(64.W) //0.000000
    atantable(59) := scala.BigInt("4485585228861014016", 10).U(64.W) //0.000000
    atantable(60) := scala.BigInt("4481081629233643520", 10).U(64.W) //0.000000
    atantable(61) := scala.BigInt("4476578029606273024", 10).U(64.W) //0.000000
    atantable(62) := scala.BigInt("4472074429978902528", 10).U(64.W) //0.000000
    atantable(63) := scala.BigInt("4614256656550997272", 10).U(64.W) //3.141593
  }
  else if (32 == bw) {
    atantable(0) := 1061752795.U //0.785398
    atantable(1) := 1055744824.U //0.463648
    atantable(2) := 1048239024.U //0.244979
    atantable(3) := 1040100821.U //0.124355
    atantable(4) := 1031776990.U //0.062419
    atantable(5) := 1023404718.U //0.031240
    atantable(6) := 1015020203.U //0.015624
    atantable(7) := 1006632619.U //0.007812
    atantable(8) := 998244267.U //0.003906
    atantable(9) := 989855723.U //0.001953
    atantable(10) := 981467131.U //0.000977
    atantable(11) := 973078527.U //0.000488
    atantable(12) := 964689920.U //0.000244
    atantable(13) := 956301312.U //0.000122
    atantable(14) := 947912704.U //0.000061
    atantable(15) := 939524096.U //0.000031
    atantable(16) := 931135488.U //0.000015
    atantable(17) := 922746880.U //0.000008
    atantable(18) := 914358272.U //0.000004
    atantable(19) := 905969664.U //0.000002
    atantable(20) := 897581056.U //0.000001
    atantable(21) := 889192448.U //0.000000
    atantable(22) := 880803840.U //0.000000
    atantable(23) := 872415232.U //0.000000
    atantable(24) := 864026624.U //0.000000
    atantable(25) := 855638016.U //0.000000
    atantable(26) := 847249408.U //0.000000
    atantable(27) := 838860800.U //0.000000
    atantable(28) := 830472192.U //0.000000
    atantable(29) := 822083584.U //0.000000
    atantable(30) := 813694976.U //0.000000
    atantable(31) := 1078530011.U //3.141593
  }
  else if (16 == bw) {
    atantable(0) := 14920.U //0.785156
    atantable(1) := 14187.U //0.463623
    atantable(2) := 13271.U //0.244995
    atantable(3) := 12277.U //0.124329
    atantable(4) := 11261.U //0.062408
    atantable(5) := 10239.U //0.031235
    atantable(6) := 9216.U //0.015625
    atantable(7) := 8192.U //0.007812
    atantable(8) := 7168.U //0.003906
    atantable(9) := 6144.U //0.001953
    atantable(10) := 5120.U //0.000977
    atantable(11) := 4096.U //0.000488
    atantable(12) := 3072.U //0.000244
    atantable(13) := 2048.U //0.000122
    atantable(14) := 1024.U //0.000061
    atantable(15) := 512.U //0.000031
  }


}


object Main extends App {

  val pw = new PrintWriter("testcordic.v")
  pw.println(getVerilogString(new CORDIC(32)))
  pw.close()

}