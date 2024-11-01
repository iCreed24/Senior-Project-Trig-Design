package Trig

import chisel3._

import java.io.PrintWriter
import chisel3.util._
import Binary_Modules.BinaryDesigns._
import FP_Modules.FloatingPointDesigns._
import chisel3.stage.{ChiselGeneratorAnnotation, ChiselStage}


/* Module will run 4 iterations per rounds_param, so 8 rounds_param runs 32 iterations */
class CORDIC(bw: Int ,  pipeline_depth: Int , rounds: Int) extends Module {
  /* Am told we only care about single precision */
  require(bw == 32)
  val io = IO(new Bundle() {
    val in_x0: UInt = Input(UInt(bw.W))
    val in_y0: UInt = Input(UInt(bw.W))
    val in_z0: UInt = Input(UInt(bw.W))
    val in_mode: UInt = Input(UInt(bw.W))

    val out_x: UInt = Output(UInt(bw.W))
    val out_y: UInt = Output(UInt(bw.W))
    val out_z: UInt = Output(UInt(bw.W))
    val out_mode: UInt = Output(UInt(2.W))
  })


  var iterperround = 0


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

  //val rounds =16
  val atantable = Wire(Vec(32, UInt(bw.W))) // mux
  atantable(0) := 210828720.U //Q4.28 fixed point of 0.785398 == 45 deg
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


  val atantable2 = Wire(Vec(64, UInt(bw.W))) // mux

  atantable2(0):= 210828714.U
  atantable2(1):= 124459457.U
  atantable2(2):= 65760959.U
  atantable2(3):= 33381289.U
  atantable2(4):= 16755421.U
  atantable2(5):= 8385878.U
  atantable2(6):= 4193962.U
  atantable2(7):= 2097109.U
  atantable2(8):= 1048570.U
  atantable2(9):= 524287.U
  atantable2(10):= 262143.U
  atantable2(11):= 131071.U
  atantable2(12):= 65535.U
  atantable2(13):= 32767.U
  atantable2(14):= 16383.U
  atantable2(15):= 8191.U
  atantable2(16):= 4095.U
  atantable2(17):= 2047.U
  atantable2(18):= 1023.U
  atantable2(19):= 511.U
  atantable2(20):= 255.U
  atantable2(21):= 127.U
  atantable2(22):= 63.U
  atantable2(23):= 31.U
  atantable2(24):= 15.U
  atantable2(25):= 7.U
  atantable2(26):= 3.U
  atantable2(27):= 2.U
  atantable2(28):= 1.U
  atantable2(29):= 0.U
  atantable2(30):= 0.U
  atantable2(31):= 0.U
  atantable2(32):= 0.U
  atantable2(33):= 0.U
  atantable2(34):= 0.U
  atantable2(35):= 0.U
  atantable2(36):= 0.U
  atantable2(37):= 0.U
  atantable2(38):= 0.U
  atantable2(39):= 0.U
  atantable2(40):= 0.U
  atantable2(41):= 0.U
  atantable2(42):= 0.U
  atantable2(43):= 0.U
  atantable2(44):= 0.U
  atantable2(45):= 0.U
  atantable2(46):= 0.U
  atantable2(47):= 0.U
  atantable2(48):= 0.U
  atantable2(49):= 0.U
  atantable2(50):= 0.U
  atantable2(51):= 0.U
  atantable2(52):= 0.U
  atantable2(53):= 0.U
  atantable2(54):= 0.U
  atantable2(55):= 0.U
  atantable2(56):= 0.U
  atantable2(57):= 0.U
  atantable2(58):= 0.U
  atantable2(59):= 0.U
  atantable2(60):= 0.U
  atantable2(61):= 0.U
  atantable2(62):= 0.U
  atantable2(63):= 0.U
//Q4.60 notation
  val atantable64 = Wire(Vec(128, UInt(bw.W))) // mux

  atantable64(0) := 767584873610432512L.U
  atantable64(1) := 431419399927101504L.U
  atantable64(2) := 223531939555623552L.U
  atantable64(3) := 112826247155049424L.U
  atantable64(4) := 56548511938233216L.U
  atantable64(5) := 28291271100603192L.U
  atantable64(6) := 14147765323190622L.U
  atantable64(7) := 7074148973404375L.U
  atantable64(8) := 3537107778498200L.U
  atantable64(9) := 1768558050811732L.U
  atantable64(10) := 884279545603949L.U
  atantable64(11) := 442139837826821L.U
  atantable64(12) := 221069927041519L.U
  atantable64(13) := 110534964536773L.U
  atantable64(14) := 55267482395388L.U
  atantable64(15) := 27633741213569L.U
  atantable64(16) := 13816870608769L.U
  atantable64(17) := 6908435304633L.U
  atantable64(18) := 3454217652347L.U
  atantable64(19) := 1727108826178L.U
  atantable64(20) := 863554413089L.U
  atantable64(21) := 431777206545L.U
  atantable64(22) := 215888603272L.U
  atantable64(23) := 107944301636L.U
  atantable64(24) := 53972150818L.U
  atantable64(25) := 26986075409L.U
  atantable64(26) := 13493037705L.U
  atantable64(27) := 6746518852L.U
  atantable64(28) := 3373259426L.U
  atantable64(29) := 1686629713L.U
  atantable64(30) := 843314857L.U
  atantable64(31) := 421657428L.U
  atantable64(32) := 210828714L.U
  atantable64(33) := 105414357L.U
  atantable64(34) := 52707179L.U
  atantable64(35) := 26353589L.U
  atantable64(36) := 13176795L.U
  atantable64(37) := 6588397L.U
  atantable64(38) := 3294199L.U
  atantable64(39) := 1647099L.U
  atantable64(40) := 823550L.U
  atantable64(41) := 411775L.U
  atantable64(42) := 205887L.U
  atantable64(43) := 102944L.U
  atantable64(44) := 51472L.U
  atantable64(45) := 25736L.U
  atantable64(46) := 12868L.U
  atantable64(47) := 6434L.U
  atantable64(48) := 3217L.U
  atantable64(49) := 1608L.U
  atantable64(50) := 804L.U
  atantable64(51) := 402L.U
  atantable64(52) := 201L.U
  atantable64(53) := 101L.U
  atantable64(54) := 50L.U
  atantable64(55) := 25L.U
  atantable64(56) := 13L.U
  atantable64(57) := 6L.U
  atantable64(58) := 3L.U
  atantable64(59) := 2L.U
  atantable64(60) := 1L.U
  atantable64(61) := 0L.U
  atantable64(62) := 0L.U
  atantable64(63) := 0L.U
  atantable64(64) := 0L.U
  atantable64(65) := 0L.U
  atantable64(66) := 0L.U
  atantable64(67) := 0L.U
  atantable64(68) := 0L.U
  atantable64(69) := 0L.U
  atantable64(70) := 0L.U
  atantable64(71) := 0L.U
  atantable64(72) := 0L.U
  atantable64(73) := 0L.U
  atantable64(74) := 0L.U
  atantable64(75) := 0L.U
  atantable64(76) := 0L.U
  atantable64(77) := 0L.U
  atantable64(78) := 0L.U
  atantable64(79) := 0L.U
  atantable64(80) := 0L.U
  atantable64(81) := 0L.U
  atantable64(82) := 0L.U
  atantable64(83) := 0L.U
  atantable64(84) := 0L.U
  atantable64(85) := 0L.U
  atantable64(86) := 0L.U
  atantable64(87) := 0L.U
  atantable64(88) := 0L.U
  atantable64(89) := 0L.U
  atantable64(90) := 0L.U
  atantable64(91) := 0L.U
  atantable64(92) := 0L.U
  atantable64(93) := 0L.U
  atantable64(94) := 0L.U
  atantable64(95) := 0L.U
  atantable64(96) := 0L.U
  atantable64(97) := 0L.U
  atantable64(98) := 0L.U
  atantable64(99) := 0L.U
  atantable64(100) := 0L.U
  atantable64(101) := 0L.U
  atantable64(102) := 0L.U
  atantable64(103) := 0L.U
  atantable64(104) := 0L.U
  atantable64(105) := 0L.U
  atantable64(106) := 0L.U
  atantable64(107) := 0L.U
  atantable64(108) := 0L.U
  atantable64(109) := 0L.U
  atantable64(110) := 0L.U
  atantable64(111) := 0L.U
  atantable64(112) := 0L.U
  atantable64(113) := 0L.U
  atantable64(114) := 0L.U
  atantable64(115) := 0L.U
  atantable64(116) := 0L.U
  atantable64(117) := 0L.U
  atantable64(118) := 0L.U
  atantable64(119) := 0L.U
  atantable64(120) := 0L.U
  atantable64(121) := 0L.U
  atantable64(122) := 0L.U
  atantable64(123) := 0L.U
  atantable64(124) := 0L.U
  atantable64(125) := 0L.U
  atantable64(126) := 0L.U
  atantable64(127) := 0L.U


  val atantable128 = Wire(Vec(160, UInt(bw.W))) // mux

  atantable128(0) := 210828720.U //Q4.28 fixed point of 0.785398 == 45 deg
  atantable128(1) := 124459456.U //Q4.28 fixed point of 0.463648
  atantable128(2) := 65760960.U //Q4.28 fixed point of 0.244979
  atantable128(3) := 33381290.U //Q4.28 fixed point of 0.124355
  atantable128(4) := 16755422.U //Q4.28 fixed point of 0.062419
  atantable128(5) := 8385879.U //Q4.28 fixed point of 0.031240
  atantable128(6) := 4193962.U //Q4.28 fixed point of 0.015624
  atantable128(7) := 2097109.U //Q4.28 fixed point of 0.007812
  atantable128(8) := 1048570.U //Q4.28 fixed point of 0.003906
  atantable128(9) := 524287.U //Q4.28 fixed point of 0.001953
  atantable128(10) := 262143.U //Q4.28 fixed point of 0.000977
  atantable128(11) := 131071.U //Q4.28 fixed point of 0.000488
  atantable128(12) := 65536.U //Q4.28 fixed point of 0.000244
  atantable128(13) := 32768.U //Q4.28 fixed point of 0.000122
  atantable128(14) := 16384.U //Q4.28 fixed point of 0.000061
  atantable128(15) := 8192.U //Q4.28 fixed point of 0.000031
  atantable128(16) := 4096.U //Q4.28 fixed point of 0.000015
  atantable128(17) := 2048.U //Q4.28 fixed point of 0.000008
  atantable128(18) := 1024.U //Q4.28 fixed point of 0.000004
  atantable128(19) := 512.U //Q4.28 fixed point of 0.000002
  atantable128(20) := 256.U //Q4.28 fixed point of 0.000001
  atantable128(21) := 128.U //Q4.28 fixed point of 0.000000
  atantable128(22) := 64.U //Q4.28 fixed point of 0.000000
  atantable128(23) := 32.U //Q4.28 fixed point of 0.000000
  atantable128(24) := 16.U //Q4.28 fixed point of 0.000000
  atantable128(25) := 8.U //Q4.28 fixed point of 0.000000
  atantable128(26) := 4.U //Q4.28 fixed point of 0.000000
  atantable128(27) := 2.U //Q4.28 fixed point of 0.000000
  atantable128(28) := 1.U //Q4.28 fixed point of 0.000000
  atantable128(29) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(30) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(31) := 0.U
  atantable128(32) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(33) := 0.U
  atantable128(34) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(35) := 0.U
  atantable128(36) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(37) := 0.U
  atantable128(38) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(39) := 0.U
  atantable128(40) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(41) := 0.U
  atantable128(42) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(43) := 0.U
  atantable128(44) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(45) := 0.U
  atantable128(46) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(47) := 0.U
  atantable128(48) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(49) := 0.U
  atantable128(50) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(51) := 0.U
  atantable128(52) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(53) := 0.U
  atantable128(54) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(55) := 0.U
  atantable128(56) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(57) := 0.U
  atantable128(58) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(59) := 0.U
  atantable128(60) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(61) := 0.U
  atantable128(62) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(63) := 0.U
  atantable128(64) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(65) := 0.U
  atantable128(66) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(67) := 0.U
  atantable128(68) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(69) := 0.U
  atantable128(70) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(71) := 0.U
  atantable128(72) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(73) := 0.U
  atantable128(74) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(75) := 0.U
  atantable128(76) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(77) := 0.U
  atantable128(78) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(79) := 0.U
  atantable128(80) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(81) := 0.U
  atantable128(82) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(83) := 0.U
  atantable128(84) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(85) := 0.U
  atantable128(86) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(87) := 0.U
  atantable128(88) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(89) := 0.U
  atantable128(90) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(91) := 0.U
  atantable128(92) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(93) := 0.U
  atantable128(94) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(95) := 0.U
  atantable128(96) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(97) := 0.U
  atantable128(98) := 0.U
  atantable128(99) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(100) := 0.U
  atantable128(101) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(102) := 0.U
  atantable128(103) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(104) := 0.U
  atantable128(105) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(106) := 0.U
  atantable128(107) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(108) := 0.U
  atantable128(109) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(110) := 0.U
  atantable128(111) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(112) := 0.U
  atantable128(113) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(114) := 0.U
  atantable128(115) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(116) := 0.U
  atantable128(117) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(118) := 0.U
  atantable128(119) := 0.U
  atantable128(120) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(121) := 0.U
  atantable128(122) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(123) := 0.U
  atantable128(124) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(125) := 0.U
  atantable128(126) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(127) := 0.U
  atantable128(128) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(129) := 0.U
  atantable128(130) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(131) := 0.U
  atantable128(132) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(133) := 0.U
  atantable128(134) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(135) := 0.U
  atantable128(136) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(137) := 0.U
  atantable128(138) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(139) := 0.U
  atantable128(140) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(141) := 0.U
  atantable128(142) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(143) := 0.U
  atantable128(144) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(145) := 0.U
  atantable128(146) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(147) := 0.U
  atantable128(148) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(149) := 0.U
  atantable128(150) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(151) := 0.U
  atantable128(152) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(153) := 0.U
  atantable128(154) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(155) := 0.U
  atantable128(156) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(157) := 0.U
  atantable128(158) := 0.U //Q4.28 fixed point of 0.000000
  atantable128(159) := 0.U

  val x = Wire(Vec(rounds + 1, SInt(bw.W)))
  val y = Wire(Vec(rounds + 1, SInt(bw.W)))
  val theta = Wire(Vec(rounds + 1, SInt(bw.W))) // actual theta
  val z0s = Wire(Vec(rounds + 1, SInt(bw.W))) // The z parameter here is not part of the vector, but rather tracks our target angle over time. The sign of this parameter determines if we rotate clockwise or anti-clockwise.
  val modes = Wire(Vec(rounds + 1, UInt(2.W)))

  val xr = RegInit(VecInit(Seq.fill(rounds + 1)(0.S(bw.W)))) // x register of round+1 elements
  val yr = RegInit(VecInit(Seq.fill(rounds + 1)(0.S(bw.W)))) // y register of round+1 elements
  val thetar = RegInit(VecInit(Seq.fill(rounds + 1)(0.S(bw.W)))) // theta register of round+1 elements
  val z0sr = RegInit(VecInit(Seq.fill(rounds + 1)(0.S(bw.W))))
  val modesr = RegInit(VecInit(Seq.fill(rounds + 1)(0.U(2.W))))

//if (pipeline_depth == 1 || pipeline_depth == 2 || pipeline_depth ==4){

 // val tofixedx0 = Module(new Float32ToFixed64()) //**
  //val tofixedy0 = Module(new Float32ToFixed64()) //**

 // tofixedx0.io.in := io.in_x0
 // tofixedy0.io.in := io.in_y0

 // val fixedx0 = tofixedx0.io.out
 // val fixedy0 = tofixedy0.io.out
 // val fixedz0 = io.in_z0



 // theta(0) := 0.S
 // x(0) := fixedx0.asSInt
 // y(0) := fixedy0.asSInt
 // z0s(0) := fixedz0.asSInt
 // modes(0) := io.in_mode

 // thetar(0) := 0.S
 // xr(0) := fixedx0.asSInt
 // yr(0) := fixedy0.asSInt
 // z0sr(0) := fixedz0.asSInt
 // modesr(0) := io.in_mode
//}

//else{
  val tofixedx0 = Module(new FloatToFixed32()) //**
  val tofixedy0 = Module(new FloatToFixed32()) //**

  tofixedx0.io.in := io.in_x0
  tofixedy0.io.in := io.in_y0

  val fixedx0 = tofixedx0.io.out
  val fixedy0 = tofixedy0.io.out
  val fixedz0 = io.in_z0



  theta(0) := 0.S
  x(0) := fixedx0.asSInt
  y(0) := fixedy0.asSInt
  z0s(0) := fixedz0.asSInt
  modes(0) := io.in_mode

  thetar(0) := 0.S
  xr(0) := fixedx0.asSInt
  yr(0) := fixedy0.asSInt
  z0sr(0) := fixedz0.asSInt
  modesr(0) := io.in_mode
//}












  ///// Consider changing rounds to 16 for all cases - Dania

  if (bw == 32 && pipeline_depth == 16) {

    var iter = 0
    for (n <- 0 to rounds - 1 by iterperround) {


      val fxxterm = Mux(thetar(n) > z0sr(n), -xr(n), xr(n))
      val fxyterm = Mux(thetar(n) > z0sr(n), -yr(n), yr(n))
      val fxthetaterm = Mux(thetar(n) > z0sr(n), -atantable(n), atantable(n))


      theta(n + 1) := thetar(n) + fxthetaterm.asSInt
      x(n + 1) := xr(n) - (fxyterm >> n.asUInt).asSInt
      y(n + 1) := (fxxterm >> n.asUInt).asSInt + yr(n)
      z0s(n + 1) := z0sr(n)
      modes(n + 1) := modesr(n)

      thetar(n + 1) := theta(n + 1) //set the next theta to what's in theta latch from curr iteration +45 or -45
      xr(n + 1) := x(n + 1) //divide val in regx by 2 then sub from curr xreg
      yr(n + 1) := y(n + 1) // divide val in regy by 2 then add to curr reg yr
      z0sr(n + 1) := z0s(n + 1)
      modesr(n + 1) := modes(n + 1)

      iter = iter + 1
    }


    val tofloatxout = Module(new FixedToFloat32())
    val tofloatyout = Module(new FixedToFloat32())
    val tofloatzout = Module(new FixedToFloat32())


    tofloatxout.io.in := xr(iter).asUInt
    tofloatyout.io.in := yr(iter).asUInt
    tofloatzout.io.in := z0sr(iter).asUInt
    io.out_mode := modesr(iter).asUInt
    printf(p"round = $rounds")
    io.out_x := tofloatxout.io.out
    io.out_y := tofloatyout.io.out
    io.out_z := tofloatzout.io.out

  }

  else if (bw == 32 && pipeline_depth == 8) {

    var iter = 0
    for (n <- 0 to rounds - 1 by iterperround) { // changed vars into vals from the original code - Dania
      for (i <- 1 to iterperround) {
        if (i == 1) {
          val prevn = n + i - 1
          val fxxterm = Mux(thetar(iter) > z0sr(iter), -xr(iter), xr(iter))
          val fxyterm = Mux(thetar(iter) > z0sr(iter), -yr(iter), yr(iter))
          val fxthetaterm = Mux(thetar(iter) > z0sr(iter), -atantable(prevn), atantable(prevn))

          theta(n + i) := thetar(iter) + fxthetaterm.asSInt;
          x(n + i) := xr(iter) - (fxyterm >> prevn.asUInt).asSInt
          y(n + i) := (fxxterm >> prevn.asUInt).asSInt + yr(iter)
          z0s(n + i) := z0sr(iter)
          modes(n + i) := modesr(iter)
        }
        else {
          val prevn = n + i - 1
          val fxxterm = Mux(theta(prevn) > z0s(prevn), -x(prevn), x(prevn))
          val fxyterm = Mux(theta(prevn) > z0s(prevn), -y(prevn), y(prevn))
          val fxthetaterm = Mux(theta(prevn) > z0s(prevn), -atantable(prevn), atantable(prevn))

          theta(n + i) := theta(prevn) + fxthetaterm.asSInt;
          x(n + i) := x(prevn) - (fxyterm >> prevn.asUInt).asSInt
          y(n + i) := (fxxterm >> prevn.asUInt).asSInt + y(prevn)
          z0s(n + i) := z0s(prevn)
          modes(n + i) := modes(prevn)
        }
      }

      thetar(iter + 1) := theta(n + iterperround)
      xr(iter + 1) := x(n + iterperround)
      yr(iter + 1) := y(n + iterperround)
      z0sr(iter + 1) := z0s(n + iterperround)
      modesr(iter + 1) := modes(n + iterperround)

      iter = iter + 1
    }
    val tofloatxout = Module(new FixedToFloat32())
    val tofloatyout = Module(new FixedToFloat32())
    val tofloatzout = Module(new FixedToFloat32())


    tofloatxout.io.in := xr(iter).asUInt
    tofloatyout.io.in := yr(iter).asUInt
    tofloatzout.io.in := z0sr(iter).asUInt
    io.out_mode := modesr(iter).asUInt

    io.out_x := tofloatxout.io.out
    io.out_y := tofloatyout.io.out
    io.out_z := tofloatzout.io.out


  }

  else if (bw == 32 && pipeline_depth == 4) {


    var reg = 0
    for (n <- 0 to rounds - 1 by 1) {


      if (n % 4 == 0) { // first iteration


        val fxxterm = Mux(thetar(reg) > z0sr(reg), -xr(reg), xr(reg))
        val fxyterm = Mux(thetar(reg) > z0sr(reg), -yr(reg), yr(reg))
        val fxthetaterm = Mux(thetar(reg) > z0sr(reg), -atantable(n), atantable(n))

        theta(n + 1) := thetar(reg) + fxthetaterm.asSInt;
        x(n + 1) := xr(reg) - (fxyterm >> n.asUInt).asSInt
        y(n + 1) := (fxxterm >> n.asUInt).asSInt + yr(reg)
        z0s(n + 1) := z0sr(reg)
        modes(n + 1) := modesr(reg)



      }
      else if (n % 4 == 1 || n % 4 == 2) {


        val fxxterm = Mux(theta(n) > z0s(n), -x(n), x(n))
        val fxyterm = Mux(theta(n) > z0s(n), -y(n), y(n))
        val fxthetaterm = Mux(theta(n) > z0s(n), -atantable(n), atantable(n))

        theta(n + 1) := theta(n) + fxthetaterm.asSInt;
        x(n + 1) := x(n) - (fxyterm >> n.asUInt).asSInt
        y(n + 1) := (fxxterm >> n.asUInt).asSInt + y(n)
        z0s(n + 1) := z0s(n)
        modes(n + 1) := modes(n)


      }

      else if (n % 4 == 3) {


        val fxxterm = Mux(theta(n) > z0s(n), -x(n), x(n))
        val fxyterm = Mux(theta(n) > z0s(n), -y(n), y(n))
        val fxthetaterm = Mux(theta(n) > z0s(n), -atantable(n), atantable(n))

        theta(n + 1) := theta(n) + fxthetaterm.asSInt;
        x(n + 1) := x(n) - (fxyterm >> n.asUInt).asSInt
        y(n + 1) := (fxxterm >> n.asUInt).asSInt + y(n)
        z0s(n + 1) := z0s(n)
        modes(n + 1) := modes(n)

        reg = reg + 1


        thetar(reg) := theta(n + 1)
        xr(reg) := x(n + 1)
        yr(reg) := y(n + 1)
        z0sr(reg) := z0s(n + 1)
        modesr(reg) := modes(n + 1)
      }


    }


    val tofloatxout = Module(new FixedToFloat32())
    val tofloatyout = Module(new FixedToFloat32())
    val tofloatzout = Module(new FixedToFloat32())


    tofloatxout.io.in := xr(reg).asUInt
    tofloatyout.io.in := yr(reg).asUInt
    tofloatzout.io.in := z0sr(reg).asUInt
    io.out_mode := modesr(reg).asUInt

    io.out_x := tofloatxout.io.out
    io.out_y := tofloatyout.io.out
    io.out_z := tofloatzout.io.out


  }


  else if (pipeline_depth == 2){

    var reg = 0
    for (n <- 0 to rounds-1 by 1) {

      if (n % 8 == 0) { // first iteration


        val fxxterm = Mux(thetar(reg) > z0sr(reg), -xr(reg), xr(reg))
        val fxyterm = Mux(thetar(reg) > z0sr(reg), -yr(reg), yr(reg))
        val fxthetaterm = Mux(thetar(reg) > z0sr(reg), -atantable(n), atantable(n))

        theta(n + 1) := thetar(reg) + fxthetaterm.asSInt;
        x(n + 1) := xr(reg) - (fxyterm >> n.asUInt).asSInt
        y(n + 1) := (fxxterm >> n.asUInt).asSInt + yr(reg)
        z0s(n + 1) := z0sr(reg)
        modes(n + 1) := modesr(reg)



      }
      else if (n % 8 == 1 || n % 8 == 2 || n % 8 == 3 ||n % 8 == 4 ||n % 8 == 5 ||n % 8 == 6 ) {


        val fxxterm = Mux(theta(n) > z0s(n), -x(n), x(n))
        val fxyterm = Mux(theta(n) > z0s(n), -y(n), y(n))
        val fxthetaterm = Mux(theta(n) > z0s(n), -atantable(n), atantable(n))

        theta(n + 1) := theta(n) + fxthetaterm.asSInt;
        x(n + 1) := x(n) - (fxyterm >> n.asUInt).asSInt
        y(n + 1) := (fxxterm >> n.asUInt).asSInt + y(n)
        z0s(n + 1) := z0s(n)
        modes(n + 1) := modes(n)


      }

      else if (n % 8 == 7) {


        val fxxterm = Mux(theta(n) > z0s(n), -x(n), x(n))
        val fxyterm = Mux(theta(n) > z0s(n), -y(n), y(n))
        val fxthetaterm = Mux(theta(n) > z0s(n), -atantable(n), atantable(n))

        theta(n + 1) := theta(n) + fxthetaterm.asSInt;
        x(n + 1) := x(n) - (fxyterm >> n.asUInt).asSInt
        y(n + 1) := (fxxterm >> n.asUInt).asSInt + y(n)
        z0s(n + 1) := z0s(n)
        modes(n + 1) := modes(n)

        reg = reg + 1


        thetar(reg) := theta(n + 1)
        xr(reg) := x(n + 1)
        yr(reg) := y(n + 1)
        z0sr(reg) := z0s(n + 1)
        modesr(reg) := modes(n + 1)
      }




    }

    val tofloatxout = Module(new FixedToFloat32())
    val tofloatyout = Module(new FixedToFloat32())
    val tofloatzout = Module(new FixedToFloat32())


    tofloatxout.io.in := xr(reg).asUInt
    tofloatyout.io.in := yr(reg).asUInt
    tofloatzout.io.in := z0sr(reg).asUInt
    io.out_mode := modesr(reg).asUInt

    io.out_x := tofloatxout.io.out
    io.out_y := tofloatyout.io.out
    io.out_z := tofloatzout.io.out
  }





  else if( pipeline_depth == 1 ){



    for (n <- 0 to rounds - 1 by 1) {



    if (n == 0 ){


      val fxxterm = Mux(thetar(0) > z0sr(0), -xr(0), xr(0))
      val fxyterm = Mux(thetar(0) > z0sr(0), -yr(0), yr(0))
      val fxthetaterm = Mux(thetar(0) > z0sr(0), -atantable(n), atantable(n))

      theta(n + 1) := thetar(0) + fxthetaterm.asSInt;
      x(n + 1) := xr(0) - (fxyterm >> n.asUInt).asSInt
      y(n + 1) := (fxxterm >> n.asUInt).asSInt + yr(0)
      z0s(n + 1) := z0sr(0)
      modes(n + 1) := modesr(0)



    }

    else if (n == rounds-2) {


      val fxxterm = Mux(theta(n) > z0s(n), -x(n), x(n))
      val fxyterm = Mux(theta(n) > z0s(n), -y(n), y(n))
      val fxthetaterm = Mux(theta(n) > z0s(n), -atantable(n), atantable(n))

      theta(n + 1) := theta(n) + fxthetaterm.asSInt;
      x(n + 1) := x(n) - (fxyterm >> n.asUInt).asSInt
      y(n + 1) := (fxxterm >> n.asUInt).asSInt + y(n)
      z0s(n + 1) := z0s(n)
      modes(n + 1) := modes(n)




      thetar(1) := theta(n + 1)
      xr(1) := x(n + 1)
      yr(1) := y(n + 1)
      z0sr(1) := z0s(n + 1)
      modesr(1) := modes(n + 1)
    }


    else {
      val fxxterm = Mux(theta(n) > z0s(n), -x(n), x(n))
      val fxyterm = Mux(theta(n) > z0s(n), -y(n), y(n))
      val fxthetaterm = Mux(theta(n) > z0s(n), -atantable(n), atantable(n))

      theta(n + 1) := theta(n) + fxthetaterm.asSInt;
      x(n + 1) := x(n) - (fxyterm >> n.asUInt).asSInt
      y(n + 1) := (fxxterm >> n.asUInt).asSInt + y(n)
      z0s(n + 1) := z0s(n)
      modes(n + 1) := modes(n)

    }




    }

    val tofloatxout = Module(new FixedToFloat32())
    val tofloatyout = Module(new FixedToFloat32())
    val tofloatzout = Module(new FixedToFloat32())


    tofloatxout.io.in := xr(1).asUInt
    tofloatyout.io.in := yr(1).asUInt
    tofloatzout.io.in := z0sr(1).asUInt
    io.out_mode := modesr(1).asUInt

    io.out_x := tofloatxout.io.out
    io.out_y := tofloatyout.io.out
    io.out_z := tofloatzout.io.out

    }


}

object CORDICMain extends App {
  (new ChiselStage).execute(
    Array(
      "-X", "verilog",
      "-e", "verilog"),
    Seq(ChiselGeneratorAnnotation(() => new CORDIC(32,  4, 16)))
  )
}
