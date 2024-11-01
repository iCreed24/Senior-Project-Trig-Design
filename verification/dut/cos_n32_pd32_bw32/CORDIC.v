module CORDIC(
  input         clock,
  input         reset,
  input  [31:0] io_in_z0,
  input  [31:0] io_in_mode,
  output [31:0] io_out_x,
  output [1:0]  io_out_mode
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_157;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] tofixedx0_io_in; // @[CORDIC.scala 503:25]
  wire [31:0] tofixedx0_io_out; // @[CORDIC.scala 503:25]
  wire [31:0] tofixedy0_io_in; // @[CORDIC.scala 504:25]
  wire [31:0] tofixedy0_io_out; // @[CORDIC.scala 504:25]
  wire [31:0] tofloatxout_io_in; // @[CORDIC.scala 568:29]
  wire [31:0] tofloatxout_io_out; // @[CORDIC.scala 568:29]
  wire [31:0] tofloatyout_io_in; // @[CORDIC.scala 569:29]
  wire [31:0] tofloatyout_io_out; // @[CORDIC.scala 569:29]
  wire [31:0] tofloatzout_io_in; // @[CORDIC.scala 570:29]
  wire [31:0] tofloatzout_io_out; // @[CORDIC.scala 570:29]
  reg [31:0] xr_0; // @[CORDIC.scala 469:19]
  reg [31:0] xr_1; // @[CORDIC.scala 469:19]
  reg [31:0] xr_2; // @[CORDIC.scala 469:19]
  reg [31:0] xr_3; // @[CORDIC.scala 469:19]
  reg [31:0] xr_4; // @[CORDIC.scala 469:19]
  reg [31:0] xr_5; // @[CORDIC.scala 469:19]
  reg [31:0] xr_6; // @[CORDIC.scala 469:19]
  reg [31:0] xr_7; // @[CORDIC.scala 469:19]
  reg [31:0] xr_8; // @[CORDIC.scala 469:19]
  reg [31:0] xr_9; // @[CORDIC.scala 469:19]
  reg [31:0] xr_10; // @[CORDIC.scala 469:19]
  reg [31:0] xr_11; // @[CORDIC.scala 469:19]
  reg [31:0] xr_12; // @[CORDIC.scala 469:19]
  reg [31:0] xr_13; // @[CORDIC.scala 469:19]
  reg [31:0] xr_14; // @[CORDIC.scala 469:19]
  reg [31:0] xr_15; // @[CORDIC.scala 469:19]
  reg [31:0] xr_16; // @[CORDIC.scala 469:19]
  reg [31:0] xr_17; // @[CORDIC.scala 469:19]
  reg [31:0] xr_18; // @[CORDIC.scala 469:19]
  reg [31:0] xr_19; // @[CORDIC.scala 469:19]
  reg [31:0] xr_20; // @[CORDIC.scala 469:19]
  reg [31:0] xr_21; // @[CORDIC.scala 469:19]
  reg [31:0] xr_22; // @[CORDIC.scala 469:19]
  reg [31:0] xr_23; // @[CORDIC.scala 469:19]
  reg [31:0] xr_24; // @[CORDIC.scala 469:19]
  reg [31:0] xr_25; // @[CORDIC.scala 469:19]
  reg [31:0] xr_26; // @[CORDIC.scala 469:19]
  reg [31:0] xr_27; // @[CORDIC.scala 469:19]
  reg [31:0] xr_28; // @[CORDIC.scala 469:19]
  reg [31:0] xr_29; // @[CORDIC.scala 469:19]
  reg [31:0] xr_30; // @[CORDIC.scala 469:19]
  reg [31:0] xr_31; // @[CORDIC.scala 469:19]
  reg [31:0] yr_0; // @[CORDIC.scala 470:19]
  reg [31:0] yr_1; // @[CORDIC.scala 470:19]
  reg [31:0] yr_2; // @[CORDIC.scala 470:19]
  reg [31:0] yr_3; // @[CORDIC.scala 470:19]
  reg [31:0] yr_4; // @[CORDIC.scala 470:19]
  reg [31:0] yr_5; // @[CORDIC.scala 470:19]
  reg [31:0] yr_6; // @[CORDIC.scala 470:19]
  reg [31:0] yr_7; // @[CORDIC.scala 470:19]
  reg [31:0] yr_8; // @[CORDIC.scala 470:19]
  reg [31:0] yr_9; // @[CORDIC.scala 470:19]
  reg [31:0] yr_10; // @[CORDIC.scala 470:19]
  reg [31:0] yr_11; // @[CORDIC.scala 470:19]
  reg [31:0] yr_12; // @[CORDIC.scala 470:19]
  reg [31:0] yr_13; // @[CORDIC.scala 470:19]
  reg [31:0] yr_14; // @[CORDIC.scala 470:19]
  reg [31:0] yr_15; // @[CORDIC.scala 470:19]
  reg [31:0] yr_16; // @[CORDIC.scala 470:19]
  reg [31:0] yr_17; // @[CORDIC.scala 470:19]
  reg [31:0] yr_18; // @[CORDIC.scala 470:19]
  reg [31:0] yr_19; // @[CORDIC.scala 470:19]
  reg [31:0] yr_20; // @[CORDIC.scala 470:19]
  reg [31:0] yr_21; // @[CORDIC.scala 470:19]
  reg [31:0] yr_22; // @[CORDIC.scala 470:19]
  reg [31:0] yr_23; // @[CORDIC.scala 470:19]
  reg [31:0] yr_24; // @[CORDIC.scala 470:19]
  reg [31:0] yr_25; // @[CORDIC.scala 470:19]
  reg [31:0] yr_26; // @[CORDIC.scala 470:19]
  reg [31:0] yr_27; // @[CORDIC.scala 470:19]
  reg [31:0] yr_28; // @[CORDIC.scala 470:19]
  reg [31:0] yr_29; // @[CORDIC.scala 470:19]
  reg [31:0] yr_30; // @[CORDIC.scala 470:19]
  reg [31:0] yr_31; // @[CORDIC.scala 470:19]
  reg [31:0] thetar_1; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_2; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_3; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_4; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_5; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_6; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_7; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_8; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_9; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_10; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_11; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_12; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_13; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_14; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_15; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_16; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_17; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_18; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_19; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_20; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_21; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_22; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_23; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_24; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_25; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_26; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_27; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_28; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_29; // @[CORDIC.scala 471:23]
  reg [31:0] thetar_30; // @[CORDIC.scala 471:23]
  reg [31:0] z0sr_0; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_1; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_2; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_3; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_4; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_5; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_6; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_7; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_8; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_9; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_10; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_11; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_12; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_13; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_14; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_15; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_16; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_17; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_18; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_19; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_20; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_21; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_22; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_23; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_24; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_25; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_26; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_27; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_28; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_29; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_30; // @[CORDIC.scala 472:21]
  reg [31:0] z0sr_31; // @[CORDIC.scala 472:21]
  reg [1:0] modesr_0; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_1; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_2; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_3; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_4; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_5; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_6; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_7; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_8; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_9; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_10; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_11; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_12; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_13; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_14; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_15; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_16; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_17; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_18; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_19; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_20; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_21; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_22; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_23; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_24; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_25; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_26; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_27; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_28; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_29; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_30; // @[CORDIC.scala 473:23]
  reg [1:0] modesr_31; // @[CORDIC.scala 473:23]
  wire  _fxxterm_T = 32'sh0 > $signed(z0sr_0); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_3 = 32'sh0 - $signed(xr_0); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm = 32'sh0 > $signed(z0sr_0) ? $signed(_fxxterm_T_3) : $signed(xr_0); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_3 = 32'sh0 - $signed(yr_0); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm = _fxxterm_T ? $signed(_fxyterm_T_3) : $signed(yr_0); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_2 = 32'h0 - 32'hc90fdb0; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_1_T = _fxxterm_T ? _fxthetaterm_T_2 : 32'hc90fdb0; // @[CORDIC.scala 552:47]
  wire [32:0] _theta_1_T_1 = {{1{_theta_1_T[31]}},_theta_1_T}; // @[CORDIC.scala 552:33]
  wire [31:0] theta_1 = _theta_1_T_1[31:0]; // @[CORDIC.scala 552:33]
  wire [31:0] x_1 = $signed(xr_0) - $signed(fxyterm); // @[CORDIC.scala 553:25]
  wire [31:0] y_1 = $signed(fxxterm) + $signed(yr_0); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_4 = $signed(thetar_1) > $signed(z0sr_1); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_7 = 32'sh0 - $signed(xr_1); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_1 = $signed(thetar_1) > $signed(z0sr_1) ? $signed(_fxxterm_T_7) : $signed(xr_1); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_7 = 32'sh0 - $signed(yr_1); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_1 = _fxxterm_T_4 ? $signed(_fxyterm_T_7) : $signed(yr_1); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_5 = 32'h0 - 32'h76b19c0; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_2_T = _fxxterm_T_4 ? _fxthetaterm_T_5 : 32'h76b19c0; // @[CORDIC.scala 552:47]
  wire [31:0] theta_2 = $signed(thetar_1) + $signed(_theta_2_T); // @[CORDIC.scala 552:33]
  wire [30:0] _GEN_0 = fxyterm_1[31:1]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_2_T = {{1{_GEN_0[30]}},_GEN_0}; // @[CORDIC.scala 553:36]
  wire [31:0] x_2 = $signed(xr_1) - $signed(_x_2_T); // @[CORDIC.scala 553:25]
  wire [30:0] _GEN_1 = fxxterm_1[31:1]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_2_T = {{1{_GEN_1[30]}},_GEN_1}; // @[CORDIC.scala 554:28]
  wire [31:0] y_2 = $signed(_y_2_T) + $signed(yr_1); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_8 = $signed(thetar_2) > $signed(z0sr_2); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_11 = 32'sh0 - $signed(xr_2); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_2 = $signed(thetar_2) > $signed(z0sr_2) ? $signed(_fxxterm_T_11) : $signed(xr_2); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_11 = 32'sh0 - $signed(yr_2); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_2 = _fxxterm_T_8 ? $signed(_fxyterm_T_11) : $signed(yr_2); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_8 = 32'h0 - 32'h3eb6ec0; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_3_T = _fxxterm_T_8 ? _fxthetaterm_T_8 : 32'h3eb6ec0; // @[CORDIC.scala 552:47]
  wire [31:0] theta_3 = $signed(thetar_2) + $signed(_theta_3_T); // @[CORDIC.scala 552:33]
  wire [29:0] _GEN_2 = fxyterm_2[31:2]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_3_T = {{2{_GEN_2[29]}},_GEN_2}; // @[CORDIC.scala 553:36]
  wire [31:0] x_3 = $signed(xr_2) - $signed(_x_3_T); // @[CORDIC.scala 553:25]
  wire [29:0] _GEN_3 = fxxterm_2[31:2]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_3_T = {{2{_GEN_3[29]}},_GEN_3}; // @[CORDIC.scala 554:28]
  wire [31:0] y_3 = $signed(_y_3_T) + $signed(yr_2); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_12 = $signed(thetar_3) > $signed(z0sr_3); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_15 = 32'sh0 - $signed(xr_3); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_3 = $signed(thetar_3) > $signed(z0sr_3) ? $signed(_fxxterm_T_15) : $signed(xr_3); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_15 = 32'sh0 - $signed(yr_3); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_3 = _fxxterm_T_12 ? $signed(_fxyterm_T_15) : $signed(yr_3); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_11 = 32'h0 - 32'h1fd5baa; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_4_T = _fxxterm_T_12 ? _fxthetaterm_T_11 : 32'h1fd5baa; // @[CORDIC.scala 552:47]
  wire [31:0] theta_4 = $signed(thetar_3) + $signed(_theta_4_T); // @[CORDIC.scala 552:33]
  wire [28:0] _GEN_4 = fxyterm_3[31:3]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_4_T = {{3{_GEN_4[28]}},_GEN_4}; // @[CORDIC.scala 553:36]
  wire [31:0] x_4 = $signed(xr_3) - $signed(_x_4_T); // @[CORDIC.scala 553:25]
  wire [28:0] _GEN_5 = fxxterm_3[31:3]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_4_T = {{3{_GEN_5[28]}},_GEN_5}; // @[CORDIC.scala 554:28]
  wire [31:0] y_4 = $signed(_y_4_T) + $signed(yr_3); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_16 = $signed(thetar_4) > $signed(z0sr_4); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_19 = 32'sh0 - $signed(xr_4); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_4 = $signed(thetar_4) > $signed(z0sr_4) ? $signed(_fxxterm_T_19) : $signed(xr_4); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_19 = 32'sh0 - $signed(yr_4); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_4 = _fxxterm_T_16 ? $signed(_fxyterm_T_19) : $signed(yr_4); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_14 = 32'h0 - 32'hffaade; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_5_T = _fxxterm_T_16 ? _fxthetaterm_T_14 : 32'hffaade; // @[CORDIC.scala 552:47]
  wire [31:0] theta_5 = $signed(thetar_4) + $signed(_theta_5_T); // @[CORDIC.scala 552:33]
  wire [27:0] _GEN_6 = fxyterm_4[31:4]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_5_T = {{4{_GEN_6[27]}},_GEN_6}; // @[CORDIC.scala 553:36]
  wire [31:0] x_5 = $signed(xr_4) - $signed(_x_5_T); // @[CORDIC.scala 553:25]
  wire [27:0] _GEN_7 = fxxterm_4[31:4]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_5_T = {{4{_GEN_7[27]}},_GEN_7}; // @[CORDIC.scala 554:28]
  wire [31:0] y_5 = $signed(_y_5_T) + $signed(yr_4); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_20 = $signed(thetar_5) > $signed(z0sr_5); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_23 = 32'sh0 - $signed(xr_5); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_5 = $signed(thetar_5) > $signed(z0sr_5) ? $signed(_fxxterm_T_23) : $signed(xr_5); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_23 = 32'sh0 - $signed(yr_5); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_5 = _fxxterm_T_20 ? $signed(_fxyterm_T_23) : $signed(yr_5); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_17 = 32'h0 - 32'h7ff557; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_6_T = _fxxterm_T_20 ? _fxthetaterm_T_17 : 32'h7ff557; // @[CORDIC.scala 552:47]
  wire [31:0] theta_6 = $signed(thetar_5) + $signed(_theta_6_T); // @[CORDIC.scala 552:33]
  wire [26:0] _GEN_8 = fxyterm_5[31:5]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_6_T = {{5{_GEN_8[26]}},_GEN_8}; // @[CORDIC.scala 553:36]
  wire [31:0] x_6 = $signed(xr_5) - $signed(_x_6_T); // @[CORDIC.scala 553:25]
  wire [26:0] _GEN_9 = fxxterm_5[31:5]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_6_T = {{5{_GEN_9[26]}},_GEN_9}; // @[CORDIC.scala 554:28]
  wire [31:0] y_6 = $signed(_y_6_T) + $signed(yr_5); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_24 = $signed(thetar_6) > $signed(z0sr_6); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_27 = 32'sh0 - $signed(xr_6); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_6 = $signed(thetar_6) > $signed(z0sr_6) ? $signed(_fxxterm_T_27) : $signed(xr_6); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_27 = 32'sh0 - $signed(yr_6); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_6 = _fxxterm_T_24 ? $signed(_fxyterm_T_27) : $signed(yr_6); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_20 = 32'h0 - 32'h3ffeaa; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_7_T = _fxxterm_T_24 ? _fxthetaterm_T_20 : 32'h3ffeaa; // @[CORDIC.scala 552:47]
  wire [31:0] theta_7 = $signed(thetar_6) + $signed(_theta_7_T); // @[CORDIC.scala 552:33]
  wire [25:0] _GEN_10 = fxyterm_6[31:6]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_7_T = {{6{_GEN_10[25]}},_GEN_10}; // @[CORDIC.scala 553:36]
  wire [31:0] x_7 = $signed(xr_6) - $signed(_x_7_T); // @[CORDIC.scala 553:25]
  wire [25:0] _GEN_11 = fxxterm_6[31:6]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_7_T = {{6{_GEN_11[25]}},_GEN_11}; // @[CORDIC.scala 554:28]
  wire [31:0] y_7 = $signed(_y_7_T) + $signed(yr_6); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_28 = $signed(thetar_7) > $signed(z0sr_7); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_31 = 32'sh0 - $signed(xr_7); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_7 = $signed(thetar_7) > $signed(z0sr_7) ? $signed(_fxxterm_T_31) : $signed(xr_7); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_31 = 32'sh0 - $signed(yr_7); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_7 = _fxxterm_T_28 ? $signed(_fxyterm_T_31) : $signed(yr_7); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_23 = 32'h0 - 32'h1fffd5; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_8_T = _fxxterm_T_28 ? _fxthetaterm_T_23 : 32'h1fffd5; // @[CORDIC.scala 552:47]
  wire [31:0] theta_8 = $signed(thetar_7) + $signed(_theta_8_T); // @[CORDIC.scala 552:33]
  wire [24:0] _GEN_12 = fxyterm_7[31:7]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_8_T = {{7{_GEN_12[24]}},_GEN_12}; // @[CORDIC.scala 553:36]
  wire [31:0] x_8 = $signed(xr_7) - $signed(_x_8_T); // @[CORDIC.scala 553:25]
  wire [24:0] _GEN_13 = fxxterm_7[31:7]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_8_T = {{7{_GEN_13[24]}},_GEN_13}; // @[CORDIC.scala 554:28]
  wire [31:0] y_8 = $signed(_y_8_T) + $signed(yr_7); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_32 = $signed(thetar_8) > $signed(z0sr_8); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_35 = 32'sh0 - $signed(xr_8); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_8 = $signed(thetar_8) > $signed(z0sr_8) ? $signed(_fxxterm_T_35) : $signed(xr_8); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_35 = 32'sh0 - $signed(yr_8); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_8 = _fxxterm_T_32 ? $signed(_fxyterm_T_35) : $signed(yr_8); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_26 = 32'h0 - 32'hffffa; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_9_T = _fxxterm_T_32 ? _fxthetaterm_T_26 : 32'hffffa; // @[CORDIC.scala 552:47]
  wire [31:0] theta_9 = $signed(thetar_8) + $signed(_theta_9_T); // @[CORDIC.scala 552:33]
  wire [23:0] _GEN_14 = fxyterm_8[31:8]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_9_T = {{8{_GEN_14[23]}},_GEN_14}; // @[CORDIC.scala 553:36]
  wire [31:0] x_9 = $signed(xr_8) - $signed(_x_9_T); // @[CORDIC.scala 553:25]
  wire [23:0] _GEN_15 = fxxterm_8[31:8]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_9_T = {{8{_GEN_15[23]}},_GEN_15}; // @[CORDIC.scala 554:28]
  wire [31:0] y_9 = $signed(_y_9_T) + $signed(yr_8); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_36 = $signed(thetar_9) > $signed(z0sr_9); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_39 = 32'sh0 - $signed(xr_9); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_9 = $signed(thetar_9) > $signed(z0sr_9) ? $signed(_fxxterm_T_39) : $signed(xr_9); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_39 = 32'sh0 - $signed(yr_9); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_9 = _fxxterm_T_36 ? $signed(_fxyterm_T_39) : $signed(yr_9); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_29 = 32'h0 - 32'h7ffff; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_10_T = _fxxterm_T_36 ? _fxthetaterm_T_29 : 32'h7ffff; // @[CORDIC.scala 552:47]
  wire [31:0] theta_10 = $signed(thetar_9) + $signed(_theta_10_T); // @[CORDIC.scala 552:33]
  wire [22:0] _GEN_16 = fxyterm_9[31:9]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_10_T = {{9{_GEN_16[22]}},_GEN_16}; // @[CORDIC.scala 553:36]
  wire [31:0] x_10 = $signed(xr_9) - $signed(_x_10_T); // @[CORDIC.scala 553:25]
  wire [22:0] _GEN_17 = fxxterm_9[31:9]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_10_T = {{9{_GEN_17[22]}},_GEN_17}; // @[CORDIC.scala 554:28]
  wire [31:0] y_10 = $signed(_y_10_T) + $signed(yr_9); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_40 = $signed(thetar_10) > $signed(z0sr_10); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_43 = 32'sh0 - $signed(xr_10); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_10 = $signed(thetar_10) > $signed(z0sr_10) ? $signed(_fxxterm_T_43) : $signed(xr_10); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_43 = 32'sh0 - $signed(yr_10); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_10 = _fxxterm_T_40 ? $signed(_fxyterm_T_43) : $signed(yr_10); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_32 = 32'h0 - 32'h3ffff; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_11_T = _fxxterm_T_40 ? _fxthetaterm_T_32 : 32'h3ffff; // @[CORDIC.scala 552:47]
  wire [31:0] theta_11 = $signed(thetar_10) + $signed(_theta_11_T); // @[CORDIC.scala 552:33]
  wire [21:0] _GEN_18 = fxyterm_10[31:10]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_11_T = {{10{_GEN_18[21]}},_GEN_18}; // @[CORDIC.scala 553:36]
  wire [31:0] x_11 = $signed(xr_10) - $signed(_x_11_T); // @[CORDIC.scala 553:25]
  wire [21:0] _GEN_19 = fxxterm_10[31:10]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_11_T = {{10{_GEN_19[21]}},_GEN_19}; // @[CORDIC.scala 554:28]
  wire [31:0] y_11 = $signed(_y_11_T) + $signed(yr_10); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_44 = $signed(thetar_11) > $signed(z0sr_11); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_47 = 32'sh0 - $signed(xr_11); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_11 = $signed(thetar_11) > $signed(z0sr_11) ? $signed(_fxxterm_T_47) : $signed(xr_11); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_47 = 32'sh0 - $signed(yr_11); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_11 = _fxxterm_T_44 ? $signed(_fxyterm_T_47) : $signed(yr_11); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_35 = 32'h0 - 32'h1ffff; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_12_T = _fxxterm_T_44 ? _fxthetaterm_T_35 : 32'h1ffff; // @[CORDIC.scala 552:47]
  wire [31:0] theta_12 = $signed(thetar_11) + $signed(_theta_12_T); // @[CORDIC.scala 552:33]
  wire [20:0] _GEN_20 = fxyterm_11[31:11]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_12_T = {{11{_GEN_20[20]}},_GEN_20}; // @[CORDIC.scala 553:36]
  wire [31:0] x_12 = $signed(xr_11) - $signed(_x_12_T); // @[CORDIC.scala 553:25]
  wire [20:0] _GEN_21 = fxxterm_11[31:11]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_12_T = {{11{_GEN_21[20]}},_GEN_21}; // @[CORDIC.scala 554:28]
  wire [31:0] y_12 = $signed(_y_12_T) + $signed(yr_11); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_48 = $signed(thetar_12) > $signed(z0sr_12); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_51 = 32'sh0 - $signed(xr_12); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_12 = $signed(thetar_12) > $signed(z0sr_12) ? $signed(_fxxterm_T_51) : $signed(xr_12); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_51 = 32'sh0 - $signed(yr_12); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_12 = _fxxterm_T_48 ? $signed(_fxyterm_T_51) : $signed(yr_12); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_38 = 32'h0 - 32'h10000; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_13_T = _fxxterm_T_48 ? _fxthetaterm_T_38 : 32'h10000; // @[CORDIC.scala 552:47]
  wire [31:0] theta_13 = $signed(thetar_12) + $signed(_theta_13_T); // @[CORDIC.scala 552:33]
  wire [19:0] _GEN_22 = fxyterm_12[31:12]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_13_T = {{12{_GEN_22[19]}},_GEN_22}; // @[CORDIC.scala 553:36]
  wire [31:0] x_13 = $signed(xr_12) - $signed(_x_13_T); // @[CORDIC.scala 553:25]
  wire [19:0] _GEN_23 = fxxterm_12[31:12]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_13_T = {{12{_GEN_23[19]}},_GEN_23}; // @[CORDIC.scala 554:28]
  wire [31:0] y_13 = $signed(_y_13_T) + $signed(yr_12); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_52 = $signed(thetar_13) > $signed(z0sr_13); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_55 = 32'sh0 - $signed(xr_13); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_13 = $signed(thetar_13) > $signed(z0sr_13) ? $signed(_fxxterm_T_55) : $signed(xr_13); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_55 = 32'sh0 - $signed(yr_13); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_13 = _fxxterm_T_52 ? $signed(_fxyterm_T_55) : $signed(yr_13); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_41 = 32'h0 - 32'h8000; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_14_T = _fxxterm_T_52 ? _fxthetaterm_T_41 : 32'h8000; // @[CORDIC.scala 552:47]
  wire [31:0] theta_14 = $signed(thetar_13) + $signed(_theta_14_T); // @[CORDIC.scala 552:33]
  wire [18:0] _GEN_24 = fxyterm_13[31:13]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_14_T = {{13{_GEN_24[18]}},_GEN_24}; // @[CORDIC.scala 553:36]
  wire [31:0] x_14 = $signed(xr_13) - $signed(_x_14_T); // @[CORDIC.scala 553:25]
  wire [18:0] _GEN_25 = fxxterm_13[31:13]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_14_T = {{13{_GEN_25[18]}},_GEN_25}; // @[CORDIC.scala 554:28]
  wire [31:0] y_14 = $signed(_y_14_T) + $signed(yr_13); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_56 = $signed(thetar_14) > $signed(z0sr_14); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_59 = 32'sh0 - $signed(xr_14); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_14 = $signed(thetar_14) > $signed(z0sr_14) ? $signed(_fxxterm_T_59) : $signed(xr_14); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_59 = 32'sh0 - $signed(yr_14); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_14 = _fxxterm_T_56 ? $signed(_fxyterm_T_59) : $signed(yr_14); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_44 = 32'h0 - 32'h4000; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_15_T = _fxxterm_T_56 ? _fxthetaterm_T_44 : 32'h4000; // @[CORDIC.scala 552:47]
  wire [31:0] theta_15 = $signed(thetar_14) + $signed(_theta_15_T); // @[CORDIC.scala 552:33]
  wire [17:0] _GEN_26 = fxyterm_14[31:14]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_15_T = {{14{_GEN_26[17]}},_GEN_26}; // @[CORDIC.scala 553:36]
  wire [31:0] x_15 = $signed(xr_14) - $signed(_x_15_T); // @[CORDIC.scala 553:25]
  wire [17:0] _GEN_27 = fxxterm_14[31:14]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_15_T = {{14{_GEN_27[17]}},_GEN_27}; // @[CORDIC.scala 554:28]
  wire [31:0] y_15 = $signed(_y_15_T) + $signed(yr_14); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_60 = $signed(thetar_15) > $signed(z0sr_15); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_63 = 32'sh0 - $signed(xr_15); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_15 = $signed(thetar_15) > $signed(z0sr_15) ? $signed(_fxxterm_T_63) : $signed(xr_15); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_63 = 32'sh0 - $signed(yr_15); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_15 = _fxxterm_T_60 ? $signed(_fxyterm_T_63) : $signed(yr_15); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_47 = 32'h0 - 32'h2000; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_16_T = _fxxterm_T_60 ? _fxthetaterm_T_47 : 32'h2000; // @[CORDIC.scala 552:47]
  wire [31:0] theta_16 = $signed(thetar_15) + $signed(_theta_16_T); // @[CORDIC.scala 552:33]
  wire [16:0] _GEN_28 = fxyterm_15[31:15]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_16_T = {{15{_GEN_28[16]}},_GEN_28}; // @[CORDIC.scala 553:36]
  wire [31:0] x_16 = $signed(xr_15) - $signed(_x_16_T); // @[CORDIC.scala 553:25]
  wire [16:0] _GEN_29 = fxxterm_15[31:15]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_16_T = {{15{_GEN_29[16]}},_GEN_29}; // @[CORDIC.scala 554:28]
  wire [31:0] y_16 = $signed(_y_16_T) + $signed(yr_15); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_64 = $signed(thetar_16) > $signed(z0sr_16); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_67 = 32'sh0 - $signed(xr_16); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_16 = $signed(thetar_16) > $signed(z0sr_16) ? $signed(_fxxterm_T_67) : $signed(xr_16); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_67 = 32'sh0 - $signed(yr_16); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_16 = _fxxterm_T_64 ? $signed(_fxyterm_T_67) : $signed(yr_16); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_50 = 32'h0 - 32'h1000; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_17_T = _fxxterm_T_64 ? _fxthetaterm_T_50 : 32'h1000; // @[CORDIC.scala 552:47]
  wire [31:0] theta_17 = $signed(thetar_16) + $signed(_theta_17_T); // @[CORDIC.scala 552:33]
  wire [15:0] _GEN_30 = fxyterm_16[31:16]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_17_T = {{16{_GEN_30[15]}},_GEN_30}; // @[CORDIC.scala 553:36]
  wire [31:0] x_17 = $signed(xr_16) - $signed(_x_17_T); // @[CORDIC.scala 553:25]
  wire [15:0] _GEN_31 = fxxterm_16[31:16]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_17_T = {{16{_GEN_31[15]}},_GEN_31}; // @[CORDIC.scala 554:28]
  wire [31:0] y_17 = $signed(_y_17_T) + $signed(yr_16); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_68 = $signed(thetar_17) > $signed(z0sr_17); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_71 = 32'sh0 - $signed(xr_17); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_17 = $signed(thetar_17) > $signed(z0sr_17) ? $signed(_fxxterm_T_71) : $signed(xr_17); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_71 = 32'sh0 - $signed(yr_17); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_17 = _fxxterm_T_68 ? $signed(_fxyterm_T_71) : $signed(yr_17); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_53 = 32'h0 - 32'h800; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_18_T = _fxxterm_T_68 ? _fxthetaterm_T_53 : 32'h800; // @[CORDIC.scala 552:47]
  wire [31:0] theta_18 = $signed(thetar_17) + $signed(_theta_18_T); // @[CORDIC.scala 552:33]
  wire [14:0] _GEN_32 = fxyterm_17[31:17]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_18_T = {{17{_GEN_32[14]}},_GEN_32}; // @[CORDIC.scala 553:36]
  wire [31:0] x_18 = $signed(xr_17) - $signed(_x_18_T); // @[CORDIC.scala 553:25]
  wire [14:0] _GEN_33 = fxxterm_17[31:17]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_18_T = {{17{_GEN_33[14]}},_GEN_33}; // @[CORDIC.scala 554:28]
  wire [31:0] y_18 = $signed(_y_18_T) + $signed(yr_17); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_72 = $signed(thetar_18) > $signed(z0sr_18); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_75 = 32'sh0 - $signed(xr_18); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_18 = $signed(thetar_18) > $signed(z0sr_18) ? $signed(_fxxterm_T_75) : $signed(xr_18); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_75 = 32'sh0 - $signed(yr_18); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_18 = _fxxterm_T_72 ? $signed(_fxyterm_T_75) : $signed(yr_18); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_56 = 32'h0 - 32'h400; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_19_T = _fxxterm_T_72 ? _fxthetaterm_T_56 : 32'h400; // @[CORDIC.scala 552:47]
  wire [31:0] theta_19 = $signed(thetar_18) + $signed(_theta_19_T); // @[CORDIC.scala 552:33]
  wire [13:0] _GEN_34 = fxyterm_18[31:18]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_19_T = {{18{_GEN_34[13]}},_GEN_34}; // @[CORDIC.scala 553:36]
  wire [31:0] x_19 = $signed(xr_18) - $signed(_x_19_T); // @[CORDIC.scala 553:25]
  wire [13:0] _GEN_35 = fxxterm_18[31:18]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_19_T = {{18{_GEN_35[13]}},_GEN_35}; // @[CORDIC.scala 554:28]
  wire [31:0] y_19 = $signed(_y_19_T) + $signed(yr_18); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_76 = $signed(thetar_19) > $signed(z0sr_19); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_79 = 32'sh0 - $signed(xr_19); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_19 = $signed(thetar_19) > $signed(z0sr_19) ? $signed(_fxxterm_T_79) : $signed(xr_19); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_79 = 32'sh0 - $signed(yr_19); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_19 = _fxxterm_T_76 ? $signed(_fxyterm_T_79) : $signed(yr_19); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_59 = 32'h0 - 32'h200; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_20_T = _fxxterm_T_76 ? _fxthetaterm_T_59 : 32'h200; // @[CORDIC.scala 552:47]
  wire [31:0] theta_20 = $signed(thetar_19) + $signed(_theta_20_T); // @[CORDIC.scala 552:33]
  wire [12:0] _GEN_36 = fxyterm_19[31:19]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_20_T = {{19{_GEN_36[12]}},_GEN_36}; // @[CORDIC.scala 553:36]
  wire [31:0] x_20 = $signed(xr_19) - $signed(_x_20_T); // @[CORDIC.scala 553:25]
  wire [12:0] _GEN_37 = fxxterm_19[31:19]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_20_T = {{19{_GEN_37[12]}},_GEN_37}; // @[CORDIC.scala 554:28]
  wire [31:0] y_20 = $signed(_y_20_T) + $signed(yr_19); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_80 = $signed(thetar_20) > $signed(z0sr_20); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_83 = 32'sh0 - $signed(xr_20); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_20 = $signed(thetar_20) > $signed(z0sr_20) ? $signed(_fxxterm_T_83) : $signed(xr_20); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_83 = 32'sh0 - $signed(yr_20); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_20 = _fxxterm_T_80 ? $signed(_fxyterm_T_83) : $signed(yr_20); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_62 = 32'h0 - 32'h100; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_21_T = _fxxterm_T_80 ? _fxthetaterm_T_62 : 32'h100; // @[CORDIC.scala 552:47]
  wire [31:0] theta_21 = $signed(thetar_20) + $signed(_theta_21_T); // @[CORDIC.scala 552:33]
  wire [11:0] _GEN_38 = fxyterm_20[31:20]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_21_T = {{20{_GEN_38[11]}},_GEN_38}; // @[CORDIC.scala 553:36]
  wire [31:0] x_21 = $signed(xr_20) - $signed(_x_21_T); // @[CORDIC.scala 553:25]
  wire [11:0] _GEN_39 = fxxterm_20[31:20]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_21_T = {{20{_GEN_39[11]}},_GEN_39}; // @[CORDIC.scala 554:28]
  wire [31:0] y_21 = $signed(_y_21_T) + $signed(yr_20); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_84 = $signed(thetar_21) > $signed(z0sr_21); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_87 = 32'sh0 - $signed(xr_21); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_21 = $signed(thetar_21) > $signed(z0sr_21) ? $signed(_fxxterm_T_87) : $signed(xr_21); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_87 = 32'sh0 - $signed(yr_21); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_21 = _fxxterm_T_84 ? $signed(_fxyterm_T_87) : $signed(yr_21); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_65 = 32'h0 - 32'h80; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_22_T = _fxxterm_T_84 ? _fxthetaterm_T_65 : 32'h80; // @[CORDIC.scala 552:47]
  wire [31:0] theta_22 = $signed(thetar_21) + $signed(_theta_22_T); // @[CORDIC.scala 552:33]
  wire [10:0] _GEN_40 = fxyterm_21[31:21]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_22_T = {{21{_GEN_40[10]}},_GEN_40}; // @[CORDIC.scala 553:36]
  wire [31:0] x_22 = $signed(xr_21) - $signed(_x_22_T); // @[CORDIC.scala 553:25]
  wire [10:0] _GEN_41 = fxxterm_21[31:21]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_22_T = {{21{_GEN_41[10]}},_GEN_41}; // @[CORDIC.scala 554:28]
  wire [31:0] y_22 = $signed(_y_22_T) + $signed(yr_21); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_88 = $signed(thetar_22) > $signed(z0sr_22); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_91 = 32'sh0 - $signed(xr_22); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_22 = $signed(thetar_22) > $signed(z0sr_22) ? $signed(_fxxterm_T_91) : $signed(xr_22); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_91 = 32'sh0 - $signed(yr_22); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_22 = _fxxterm_T_88 ? $signed(_fxyterm_T_91) : $signed(yr_22); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_68 = 32'h0 - 32'h40; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_23_T = _fxxterm_T_88 ? _fxthetaterm_T_68 : 32'h40; // @[CORDIC.scala 552:47]
  wire [31:0] theta_23 = $signed(thetar_22) + $signed(_theta_23_T); // @[CORDIC.scala 552:33]
  wire [9:0] _GEN_42 = fxyterm_22[31:22]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_23_T = {{22{_GEN_42[9]}},_GEN_42}; // @[CORDIC.scala 553:36]
  wire [31:0] x_23 = $signed(xr_22) - $signed(_x_23_T); // @[CORDIC.scala 553:25]
  wire [9:0] _GEN_43 = fxxterm_22[31:22]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_23_T = {{22{_GEN_43[9]}},_GEN_43}; // @[CORDIC.scala 554:28]
  wire [31:0] y_23 = $signed(_y_23_T) + $signed(yr_22); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_92 = $signed(thetar_23) > $signed(z0sr_23); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_95 = 32'sh0 - $signed(xr_23); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_23 = $signed(thetar_23) > $signed(z0sr_23) ? $signed(_fxxterm_T_95) : $signed(xr_23); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_95 = 32'sh0 - $signed(yr_23); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_23 = _fxxterm_T_92 ? $signed(_fxyterm_T_95) : $signed(yr_23); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_71 = 32'h0 - 32'h20; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_24_T = _fxxterm_T_92 ? _fxthetaterm_T_71 : 32'h20; // @[CORDIC.scala 552:47]
  wire [31:0] theta_24 = $signed(thetar_23) + $signed(_theta_24_T); // @[CORDIC.scala 552:33]
  wire [8:0] _GEN_44 = fxyterm_23[31:23]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_24_T = {{23{_GEN_44[8]}},_GEN_44}; // @[CORDIC.scala 553:36]
  wire [31:0] x_24 = $signed(xr_23) - $signed(_x_24_T); // @[CORDIC.scala 553:25]
  wire [8:0] _GEN_45 = fxxterm_23[31:23]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_24_T = {{23{_GEN_45[8]}},_GEN_45}; // @[CORDIC.scala 554:28]
  wire [31:0] y_24 = $signed(_y_24_T) + $signed(yr_23); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_96 = $signed(thetar_24) > $signed(z0sr_24); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_99 = 32'sh0 - $signed(xr_24); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_24 = $signed(thetar_24) > $signed(z0sr_24) ? $signed(_fxxterm_T_99) : $signed(xr_24); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_99 = 32'sh0 - $signed(yr_24); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_24 = _fxxterm_T_96 ? $signed(_fxyterm_T_99) : $signed(yr_24); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_74 = 32'h0 - 32'h10; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_25_T = _fxxterm_T_96 ? _fxthetaterm_T_74 : 32'h10; // @[CORDIC.scala 552:47]
  wire [31:0] theta_25 = $signed(thetar_24) + $signed(_theta_25_T); // @[CORDIC.scala 552:33]
  wire [7:0] _GEN_46 = fxyterm_24[31:24]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_25_T = {{24{_GEN_46[7]}},_GEN_46}; // @[CORDIC.scala 553:36]
  wire [31:0] x_25 = $signed(xr_24) - $signed(_x_25_T); // @[CORDIC.scala 553:25]
  wire [7:0] _GEN_47 = fxxterm_24[31:24]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_25_T = {{24{_GEN_47[7]}},_GEN_47}; // @[CORDIC.scala 554:28]
  wire [31:0] y_25 = $signed(_y_25_T) + $signed(yr_24); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_100 = $signed(thetar_25) > $signed(z0sr_25); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_103 = 32'sh0 - $signed(xr_25); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_25 = $signed(thetar_25) > $signed(z0sr_25) ? $signed(_fxxterm_T_103) : $signed(xr_25); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_103 = 32'sh0 - $signed(yr_25); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_25 = _fxxterm_T_100 ? $signed(_fxyterm_T_103) : $signed(yr_25); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_77 = 32'h0 - 32'h8; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_26_T = _fxxterm_T_100 ? _fxthetaterm_T_77 : 32'h8; // @[CORDIC.scala 552:47]
  wire [31:0] theta_26 = $signed(thetar_25) + $signed(_theta_26_T); // @[CORDIC.scala 552:33]
  wire [6:0] _GEN_48 = fxyterm_25[31:25]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_26_T = {{25{_GEN_48[6]}},_GEN_48}; // @[CORDIC.scala 553:36]
  wire [31:0] x_26 = $signed(xr_25) - $signed(_x_26_T); // @[CORDIC.scala 553:25]
  wire [6:0] _GEN_49 = fxxterm_25[31:25]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_26_T = {{25{_GEN_49[6]}},_GEN_49}; // @[CORDIC.scala 554:28]
  wire [31:0] y_26 = $signed(_y_26_T) + $signed(yr_25); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_104 = $signed(thetar_26) > $signed(z0sr_26); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_107 = 32'sh0 - $signed(xr_26); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_26 = $signed(thetar_26) > $signed(z0sr_26) ? $signed(_fxxterm_T_107) : $signed(xr_26); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_107 = 32'sh0 - $signed(yr_26); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_26 = _fxxterm_T_104 ? $signed(_fxyterm_T_107) : $signed(yr_26); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_80 = 32'h0 - 32'h4; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_27_T = _fxxterm_T_104 ? _fxthetaterm_T_80 : 32'h4; // @[CORDIC.scala 552:47]
  wire [31:0] theta_27 = $signed(thetar_26) + $signed(_theta_27_T); // @[CORDIC.scala 552:33]
  wire [5:0] _GEN_50 = fxyterm_26[31:26]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_27_T = {{26{_GEN_50[5]}},_GEN_50}; // @[CORDIC.scala 553:36]
  wire [31:0] x_27 = $signed(xr_26) - $signed(_x_27_T); // @[CORDIC.scala 553:25]
  wire [5:0] _GEN_51 = fxxterm_26[31:26]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_27_T = {{26{_GEN_51[5]}},_GEN_51}; // @[CORDIC.scala 554:28]
  wire [31:0] y_27 = $signed(_y_27_T) + $signed(yr_26); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_108 = $signed(thetar_27) > $signed(z0sr_27); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_111 = 32'sh0 - $signed(xr_27); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_27 = $signed(thetar_27) > $signed(z0sr_27) ? $signed(_fxxterm_T_111) : $signed(xr_27); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_111 = 32'sh0 - $signed(yr_27); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_27 = _fxxterm_T_108 ? $signed(_fxyterm_T_111) : $signed(yr_27); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_83 = 32'h0 - 32'h2; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_28_T = _fxxterm_T_108 ? _fxthetaterm_T_83 : 32'h2; // @[CORDIC.scala 552:47]
  wire [31:0] theta_28 = $signed(thetar_27) + $signed(_theta_28_T); // @[CORDIC.scala 552:33]
  wire [4:0] _GEN_52 = fxyterm_27[31:27]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_28_T = {{27{_GEN_52[4]}},_GEN_52}; // @[CORDIC.scala 553:36]
  wire [31:0] x_28 = $signed(xr_27) - $signed(_x_28_T); // @[CORDIC.scala 553:25]
  wire [4:0] _GEN_53 = fxxterm_27[31:27]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_28_T = {{27{_GEN_53[4]}},_GEN_53}; // @[CORDIC.scala 554:28]
  wire [31:0] y_28 = $signed(_y_28_T) + $signed(yr_27); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_112 = $signed(thetar_28) > $signed(z0sr_28); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_115 = 32'sh0 - $signed(xr_28); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_28 = $signed(thetar_28) > $signed(z0sr_28) ? $signed(_fxxterm_T_115) : $signed(xr_28); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_115 = 32'sh0 - $signed(yr_28); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_28 = _fxxterm_T_112 ? $signed(_fxyterm_T_115) : $signed(yr_28); // @[CORDIC.scala 548:24]
  wire [31:0] _fxthetaterm_T_86 = 32'h0 - 32'h1; // @[CORDIC.scala 549:50]
  wire [31:0] _theta_29_T = _fxxterm_T_112 ? _fxthetaterm_T_86 : 32'h1; // @[CORDIC.scala 552:47]
  wire [31:0] theta_29 = $signed(thetar_28) + $signed(_theta_29_T); // @[CORDIC.scala 552:33]
  wire [3:0] _GEN_54 = fxyterm_28[31:28]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_29_T = {{28{_GEN_54[3]}},_GEN_54}; // @[CORDIC.scala 553:36]
  wire [31:0] x_29 = $signed(xr_28) - $signed(_x_29_T); // @[CORDIC.scala 553:25]
  wire [3:0] _GEN_55 = fxxterm_28[31:28]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_29_T = {{28{_GEN_55[3]}},_GEN_55}; // @[CORDIC.scala 554:28]
  wire [31:0] y_29 = $signed(_y_29_T) + $signed(yr_28); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_116 = $signed(thetar_29) > $signed(z0sr_29); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_119 = 32'sh0 - $signed(xr_29); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_29 = $signed(thetar_29) > $signed(z0sr_29) ? $signed(_fxxterm_T_119) : $signed(xr_29); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_119 = 32'sh0 - $signed(yr_29); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_29 = _fxxterm_T_116 ? $signed(_fxyterm_T_119) : $signed(yr_29); // @[CORDIC.scala 548:24]
  wire [32:0] _theta_30_T_1 = {{1{thetar_29[31]}},thetar_29}; // @[CORDIC.scala 552:33]
  wire [31:0] theta_30 = _theta_30_T_1[31:0]; // @[CORDIC.scala 552:33]
  wire [2:0] _GEN_56 = fxyterm_29[31:29]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_30_T = {{29{_GEN_56[2]}},_GEN_56}; // @[CORDIC.scala 553:36]
  wire [31:0] x_30 = $signed(xr_29) - $signed(_x_30_T); // @[CORDIC.scala 553:25]
  wire [2:0] _GEN_57 = fxxterm_29[31:29]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_30_T = {{29{_GEN_57[2]}},_GEN_57}; // @[CORDIC.scala 554:28]
  wire [31:0] y_30 = $signed(_y_30_T) + $signed(yr_29); // @[CORDIC.scala 554:48]
  wire  _fxxterm_T_120 = $signed(thetar_30) > $signed(z0sr_30); // @[CORDIC.scala 547:35]
  wire [31:0] _fxxterm_T_123 = 32'sh0 - $signed(xr_30); // @[CORDIC.scala 547:46]
  wire [31:0] fxxterm_30 = $signed(thetar_30) > $signed(z0sr_30) ? $signed(_fxxterm_T_123) : $signed(xr_30); // @[CORDIC.scala 547:24]
  wire [31:0] _fxyterm_T_123 = 32'sh0 - $signed(yr_30); // @[CORDIC.scala 548:46]
  wire [31:0] fxyterm_30 = _fxxterm_T_120 ? $signed(_fxyterm_T_123) : $signed(yr_30); // @[CORDIC.scala 548:24]
  wire [1:0] _GEN_58 = fxyterm_30[31:30]; // @[CORDIC.scala 553:36]
  wire [31:0] _x_31_T = {{30{_GEN_58[1]}},_GEN_58}; // @[CORDIC.scala 553:36]
  wire [31:0] x_31 = $signed(xr_30) - $signed(_x_31_T); // @[CORDIC.scala 553:25]
  wire [1:0] _GEN_59 = fxxterm_30[31:30]; // @[CORDIC.scala 554:28]
  wire [31:0] _y_31_T = {{30{_GEN_59[1]}},_GEN_59}; // @[CORDIC.scala 554:28]
  wire [31:0] y_31 = $signed(_y_31_T) + $signed(yr_30); // @[CORDIC.scala 554:48]
  wire [31:0] _GEN_62 = reset ? 32'h0 : io_in_mode; // @[CORDIC.scala 473:{23,23} 525:13]
  FloatToFixed32 tofixedx0 ( // @[CORDIC.scala 503:25]
    .io_in(tofixedx0_io_in),
    .io_out(tofixedx0_io_out)
  );
  FloatToFixed32 tofixedy0 ( // @[CORDIC.scala 504:25]
    .io_in(tofixedy0_io_in),
    .io_out(tofixedy0_io_out)
  );
  FixedToFloat32 tofloatxout ( // @[CORDIC.scala 568:29]
    .io_in(tofloatxout_io_in),
    .io_out(tofloatxout_io_out)
  );
  FixedToFloat32 tofloatyout ( // @[CORDIC.scala 569:29]
    .io_in(tofloatyout_io_in),
    .io_out(tofloatyout_io_out)
  );
  FixedToFloat32 tofloatzout ( // @[CORDIC.scala 570:29]
    .io_in(tofloatzout_io_in),
    .io_out(tofloatzout_io_out)
  );
  assign io_out_x = tofloatxout_io_out; // @[CORDIC.scala 578:14]
  assign io_out_mode = modesr_31; // @[CORDIC.scala 576:17]
  assign tofixedx0_io_in = 32'h3f1b74ee; // @[CORDIC.scala 506:19]
  assign tofixedy0_io_in = 32'h0; // @[CORDIC.scala 507:19]
  assign tofloatxout_io_in = xr_31; // @[CORDIC.scala 573:39]
  assign tofloatyout_io_in = yr_31; // @[CORDIC.scala 574:39]
  assign tofloatzout_io_in = z0sr_31; // @[CORDIC.scala 575:41]
  always @(posedge clock) begin
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_0 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_0 <= tofixedx0_io_out; // @[CORDIC.scala 522:9]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_1 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_1 <= x_1; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_2 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_2 <= x_2; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_3 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_3 <= x_3; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_4 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_4 <= x_4; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_5 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_5 <= x_5; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_6 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_6 <= x_6; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_7 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_7 <= x_7; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_8 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_8 <= x_8; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_9 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_9 <= x_9; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_10 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_10 <= x_10; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_11 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_11 <= x_11; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_12 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_12 <= x_12; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_13 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_13 <= x_13; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_14 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_14 <= x_14; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_15 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_15 <= x_15; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_16 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_16 <= x_16; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_17 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_17 <= x_17; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_18 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_18 <= x_18; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_19 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_19 <= x_19; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_20 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_20 <= x_20; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_21 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_21 <= x_21; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_22 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_22 <= x_22; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_23 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_23 <= x_23; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_24 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_24 <= x_24; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_25 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_25 <= x_25; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_26 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_26 <= x_26; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_27 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_27 <= x_27; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_28 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_28 <= x_28; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_29 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_29 <= x_29; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_30 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_30 <= x_30; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      xr_31 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      xr_31 <= x_31; // @[CORDIC.scala 559:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_0 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_0 <= tofixedy0_io_out; // @[CORDIC.scala 523:9]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_1 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_1 <= y_1; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_2 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_2 <= y_2; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_3 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_3 <= y_3; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_4 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_4 <= y_4; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_5 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_5 <= y_5; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_6 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_6 <= y_6; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_7 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_7 <= y_7; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_8 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_8 <= y_8; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_9 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_9 <= y_9; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_10 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_10 <= y_10; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_11 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_11 <= y_11; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_12 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_12 <= y_12; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_13 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_13 <= y_13; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_14 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_14 <= y_14; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_15 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_15 <= y_15; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_16 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_16 <= y_16; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_17 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_17 <= y_17; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_18 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_18 <= y_18; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_19 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_19 <= y_19; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_20 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_20 <= y_20; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_21 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_21 <= y_21; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_22 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_22 <= y_22; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_23 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_23 <= y_23; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_24 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_24 <= y_24; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_25 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_25 <= y_25; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_26 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_26 <= y_26; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_27 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_27 <= y_27; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_28 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_28 <= y_28; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_29 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_29 <= y_29; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_30 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_30 <= y_30; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 470:19]
      yr_31 <= 32'sh0; // @[CORDIC.scala 470:19]
    end else begin
      yr_31 <= y_31; // @[CORDIC.scala 560:17]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_1 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_1 <= theta_1; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_2 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_2 <= theta_2; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_3 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_3 <= theta_3; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_4 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_4 <= theta_4; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_5 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_5 <= theta_5; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_6 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_6 <= theta_6; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_7 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_7 <= theta_7; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_8 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_8 <= theta_8; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_9 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_9 <= theta_9; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_10 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_10 <= theta_10; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_11 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_11 <= theta_11; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_12 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_12 <= theta_12; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_13 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_13 <= theta_13; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_14 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_14 <= theta_14; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_15 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_15 <= theta_15; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_16 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_16 <= theta_16; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_17 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_17 <= theta_17; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_18 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_18 <= theta_18; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_19 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_19 <= theta_19; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_20 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_20 <= theta_20; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_21 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_21 <= theta_21; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_22 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_22 <= theta_22; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_23 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_23 <= theta_23; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_24 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_24 <= theta_24; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_25 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_25 <= theta_25; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_26 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_26 <= theta_26; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_27 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_27 <= theta_27; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_28 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_28 <= theta_28; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_29 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_29 <= theta_29; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 471:23]
      thetar_30 <= 32'sh0; // @[CORDIC.scala 471:23]
    end else begin
      thetar_30 <= theta_30; // @[CORDIC.scala 558:21]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_0 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_0 <= io_in_z0; // @[CORDIC.scala 524:11]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_1 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_1 <= z0sr_0; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_2 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_2 <= z0sr_1; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_3 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_3 <= z0sr_2; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_4 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_4 <= z0sr_3; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_5 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_5 <= z0sr_4; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_6 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_6 <= z0sr_5; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_7 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_7 <= z0sr_6; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_8 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_8 <= z0sr_7; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_9 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_9 <= z0sr_8; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_10 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_10 <= z0sr_9; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_11 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_11 <= z0sr_10; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_12 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_12 <= z0sr_11; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_13 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_13 <= z0sr_12; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_14 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_14 <= z0sr_13; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_15 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_15 <= z0sr_14; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_16 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_16 <= z0sr_15; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_17 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_17 <= z0sr_16; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_18 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_18 <= z0sr_17; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_19 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_19 <= z0sr_18; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_20 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_20 <= z0sr_19; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_21 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_21 <= z0sr_20; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_22 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_22 <= z0sr_21; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_23 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_23 <= z0sr_22; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_24 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_24 <= z0sr_23; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_25 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_25 <= z0sr_24; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_26 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_26 <= z0sr_25; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_27 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_27 <= z0sr_26; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_28 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_28 <= z0sr_27; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_29 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_29 <= z0sr_28; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_30 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_30 <= z0sr_29; // @[CORDIC.scala 561:19]
    end
    if (reset) begin // @[CORDIC.scala 472:21]
      z0sr_31 <= 32'sh0; // @[CORDIC.scala 472:21]
    end else begin
      z0sr_31 <= z0sr_30; // @[CORDIC.scala 561:19]
    end
    modesr_0 <= _GEN_62[1:0]; // @[CORDIC.scala 473:{23,23} 525:13]
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_1 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_1 <= modesr_0; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_2 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_2 <= modesr_1; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_3 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_3 <= modesr_2; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_4 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_4 <= modesr_3; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_5 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_5 <= modesr_4; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_6 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_6 <= modesr_5; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_7 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_7 <= modesr_6; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_8 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_8 <= modesr_7; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_9 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_9 <= modesr_8; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_10 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_10 <= modesr_9; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_11 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_11 <= modesr_10; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_12 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_12 <= modesr_11; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_13 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_13 <= modesr_12; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_14 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_14 <= modesr_13; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_15 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_15 <= modesr_14; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_16 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_16 <= modesr_15; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_17 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_17 <= modesr_16; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_18 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_18 <= modesr_17; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_19 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_19 <= modesr_18; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_20 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_20 <= modesr_19; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_21 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_21 <= modesr_20; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_22 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_22 <= modesr_21; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_23 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_23 <= modesr_22; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_24 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_24 <= modesr_23; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_25 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_25 <= modesr_24; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_26 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_26 <= modesr_25; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_27 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_27 <= modesr_26; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_28 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_28 <= modesr_27; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_29 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_29 <= modesr_28; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_30 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_30 <= modesr_29; // @[CORDIC.scala 562:21]
    end
    if (reset) begin // @[CORDIC.scala 473:23]
      modesr_31 <= 2'h0; // @[CORDIC.scala 473:23]
    end else begin
      modesr_31 <= modesr_30; // @[CORDIC.scala 562:21]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,"round = 32"); // @[CORDIC.scala 577:11]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  xr_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  xr_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  xr_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  xr_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  xr_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  xr_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  xr_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  xr_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  xr_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  xr_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  xr_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  xr_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  xr_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  xr_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  xr_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  xr_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  xr_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  xr_17 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  xr_18 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  xr_19 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  xr_20 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  xr_21 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  xr_22 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  xr_23 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  xr_24 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  xr_25 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  xr_26 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  xr_27 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  xr_28 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  xr_29 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  xr_30 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  xr_31 = _RAND_31[31:0];
  _RAND_32 = {1{`RANDOM}};
  yr_0 = _RAND_32[31:0];
  _RAND_33 = {1{`RANDOM}};
  yr_1 = _RAND_33[31:0];
  _RAND_34 = {1{`RANDOM}};
  yr_2 = _RAND_34[31:0];
  _RAND_35 = {1{`RANDOM}};
  yr_3 = _RAND_35[31:0];
  _RAND_36 = {1{`RANDOM}};
  yr_4 = _RAND_36[31:0];
  _RAND_37 = {1{`RANDOM}};
  yr_5 = _RAND_37[31:0];
  _RAND_38 = {1{`RANDOM}};
  yr_6 = _RAND_38[31:0];
  _RAND_39 = {1{`RANDOM}};
  yr_7 = _RAND_39[31:0];
  _RAND_40 = {1{`RANDOM}};
  yr_8 = _RAND_40[31:0];
  _RAND_41 = {1{`RANDOM}};
  yr_9 = _RAND_41[31:0];
  _RAND_42 = {1{`RANDOM}};
  yr_10 = _RAND_42[31:0];
  _RAND_43 = {1{`RANDOM}};
  yr_11 = _RAND_43[31:0];
  _RAND_44 = {1{`RANDOM}};
  yr_12 = _RAND_44[31:0];
  _RAND_45 = {1{`RANDOM}};
  yr_13 = _RAND_45[31:0];
  _RAND_46 = {1{`RANDOM}};
  yr_14 = _RAND_46[31:0];
  _RAND_47 = {1{`RANDOM}};
  yr_15 = _RAND_47[31:0];
  _RAND_48 = {1{`RANDOM}};
  yr_16 = _RAND_48[31:0];
  _RAND_49 = {1{`RANDOM}};
  yr_17 = _RAND_49[31:0];
  _RAND_50 = {1{`RANDOM}};
  yr_18 = _RAND_50[31:0];
  _RAND_51 = {1{`RANDOM}};
  yr_19 = _RAND_51[31:0];
  _RAND_52 = {1{`RANDOM}};
  yr_20 = _RAND_52[31:0];
  _RAND_53 = {1{`RANDOM}};
  yr_21 = _RAND_53[31:0];
  _RAND_54 = {1{`RANDOM}};
  yr_22 = _RAND_54[31:0];
  _RAND_55 = {1{`RANDOM}};
  yr_23 = _RAND_55[31:0];
  _RAND_56 = {1{`RANDOM}};
  yr_24 = _RAND_56[31:0];
  _RAND_57 = {1{`RANDOM}};
  yr_25 = _RAND_57[31:0];
  _RAND_58 = {1{`RANDOM}};
  yr_26 = _RAND_58[31:0];
  _RAND_59 = {1{`RANDOM}};
  yr_27 = _RAND_59[31:0];
  _RAND_60 = {1{`RANDOM}};
  yr_28 = _RAND_60[31:0];
  _RAND_61 = {1{`RANDOM}};
  yr_29 = _RAND_61[31:0];
  _RAND_62 = {1{`RANDOM}};
  yr_30 = _RAND_62[31:0];
  _RAND_63 = {1{`RANDOM}};
  yr_31 = _RAND_63[31:0];
  _RAND_64 = {1{`RANDOM}};
  thetar_1 = _RAND_64[31:0];
  _RAND_65 = {1{`RANDOM}};
  thetar_2 = _RAND_65[31:0];
  _RAND_66 = {1{`RANDOM}};
  thetar_3 = _RAND_66[31:0];
  _RAND_67 = {1{`RANDOM}};
  thetar_4 = _RAND_67[31:0];
  _RAND_68 = {1{`RANDOM}};
  thetar_5 = _RAND_68[31:0];
  _RAND_69 = {1{`RANDOM}};
  thetar_6 = _RAND_69[31:0];
  _RAND_70 = {1{`RANDOM}};
  thetar_7 = _RAND_70[31:0];
  _RAND_71 = {1{`RANDOM}};
  thetar_8 = _RAND_71[31:0];
  _RAND_72 = {1{`RANDOM}};
  thetar_9 = _RAND_72[31:0];
  _RAND_73 = {1{`RANDOM}};
  thetar_10 = _RAND_73[31:0];
  _RAND_74 = {1{`RANDOM}};
  thetar_11 = _RAND_74[31:0];
  _RAND_75 = {1{`RANDOM}};
  thetar_12 = _RAND_75[31:0];
  _RAND_76 = {1{`RANDOM}};
  thetar_13 = _RAND_76[31:0];
  _RAND_77 = {1{`RANDOM}};
  thetar_14 = _RAND_77[31:0];
  _RAND_78 = {1{`RANDOM}};
  thetar_15 = _RAND_78[31:0];
  _RAND_79 = {1{`RANDOM}};
  thetar_16 = _RAND_79[31:0];
  _RAND_80 = {1{`RANDOM}};
  thetar_17 = _RAND_80[31:0];
  _RAND_81 = {1{`RANDOM}};
  thetar_18 = _RAND_81[31:0];
  _RAND_82 = {1{`RANDOM}};
  thetar_19 = _RAND_82[31:0];
  _RAND_83 = {1{`RANDOM}};
  thetar_20 = _RAND_83[31:0];
  _RAND_84 = {1{`RANDOM}};
  thetar_21 = _RAND_84[31:0];
  _RAND_85 = {1{`RANDOM}};
  thetar_22 = _RAND_85[31:0];
  _RAND_86 = {1{`RANDOM}};
  thetar_23 = _RAND_86[31:0];
  _RAND_87 = {1{`RANDOM}};
  thetar_24 = _RAND_87[31:0];
  _RAND_88 = {1{`RANDOM}};
  thetar_25 = _RAND_88[31:0];
  _RAND_89 = {1{`RANDOM}};
  thetar_26 = _RAND_89[31:0];
  _RAND_90 = {1{`RANDOM}};
  thetar_27 = _RAND_90[31:0];
  _RAND_91 = {1{`RANDOM}};
  thetar_28 = _RAND_91[31:0];
  _RAND_92 = {1{`RANDOM}};
  thetar_29 = _RAND_92[31:0];
  _RAND_93 = {1{`RANDOM}};
  thetar_30 = _RAND_93[31:0];
  _RAND_94 = {1{`RANDOM}};
  z0sr_0 = _RAND_94[31:0];
  _RAND_95 = {1{`RANDOM}};
  z0sr_1 = _RAND_95[31:0];
  _RAND_96 = {1{`RANDOM}};
  z0sr_2 = _RAND_96[31:0];
  _RAND_97 = {1{`RANDOM}};
  z0sr_3 = _RAND_97[31:0];
  _RAND_98 = {1{`RANDOM}};
  z0sr_4 = _RAND_98[31:0];
  _RAND_99 = {1{`RANDOM}};
  z0sr_5 = _RAND_99[31:0];
  _RAND_100 = {1{`RANDOM}};
  z0sr_6 = _RAND_100[31:0];
  _RAND_101 = {1{`RANDOM}};
  z0sr_7 = _RAND_101[31:0];
  _RAND_102 = {1{`RANDOM}};
  z0sr_8 = _RAND_102[31:0];
  _RAND_103 = {1{`RANDOM}};
  z0sr_9 = _RAND_103[31:0];
  _RAND_104 = {1{`RANDOM}};
  z0sr_10 = _RAND_104[31:0];
  _RAND_105 = {1{`RANDOM}};
  z0sr_11 = _RAND_105[31:0];
  _RAND_106 = {1{`RANDOM}};
  z0sr_12 = _RAND_106[31:0];
  _RAND_107 = {1{`RANDOM}};
  z0sr_13 = _RAND_107[31:0];
  _RAND_108 = {1{`RANDOM}};
  z0sr_14 = _RAND_108[31:0];
  _RAND_109 = {1{`RANDOM}};
  z0sr_15 = _RAND_109[31:0];
  _RAND_110 = {1{`RANDOM}};
  z0sr_16 = _RAND_110[31:0];
  _RAND_111 = {1{`RANDOM}};
  z0sr_17 = _RAND_111[31:0];
  _RAND_112 = {1{`RANDOM}};
  z0sr_18 = _RAND_112[31:0];
  _RAND_113 = {1{`RANDOM}};
  z0sr_19 = _RAND_113[31:0];
  _RAND_114 = {1{`RANDOM}};
  z0sr_20 = _RAND_114[31:0];
  _RAND_115 = {1{`RANDOM}};
  z0sr_21 = _RAND_115[31:0];
  _RAND_116 = {1{`RANDOM}};
  z0sr_22 = _RAND_116[31:0];
  _RAND_117 = {1{`RANDOM}};
  z0sr_23 = _RAND_117[31:0];
  _RAND_118 = {1{`RANDOM}};
  z0sr_24 = _RAND_118[31:0];
  _RAND_119 = {1{`RANDOM}};
  z0sr_25 = _RAND_119[31:0];
  _RAND_120 = {1{`RANDOM}};
  z0sr_26 = _RAND_120[31:0];
  _RAND_121 = {1{`RANDOM}};
  z0sr_27 = _RAND_121[31:0];
  _RAND_122 = {1{`RANDOM}};
  z0sr_28 = _RAND_122[31:0];
  _RAND_123 = {1{`RANDOM}};
  z0sr_29 = _RAND_123[31:0];
  _RAND_124 = {1{`RANDOM}};
  z0sr_30 = _RAND_124[31:0];
  _RAND_125 = {1{`RANDOM}};
  z0sr_31 = _RAND_125[31:0];
  _RAND_126 = {1{`RANDOM}};
  modesr_0 = _RAND_126[1:0];
  _RAND_127 = {1{`RANDOM}};
  modesr_1 = _RAND_127[1:0];
  _RAND_128 = {1{`RANDOM}};
  modesr_2 = _RAND_128[1:0];
  _RAND_129 = {1{`RANDOM}};
  modesr_3 = _RAND_129[1:0];
  _RAND_130 = {1{`RANDOM}};
  modesr_4 = _RAND_130[1:0];
  _RAND_131 = {1{`RANDOM}};
  modesr_5 = _RAND_131[1:0];
  _RAND_132 = {1{`RANDOM}};
  modesr_6 = _RAND_132[1:0];
  _RAND_133 = {1{`RANDOM}};
  modesr_7 = _RAND_133[1:0];
  _RAND_134 = {1{`RANDOM}};
  modesr_8 = _RAND_134[1:0];
  _RAND_135 = {1{`RANDOM}};
  modesr_9 = _RAND_135[1:0];
  _RAND_136 = {1{`RANDOM}};
  modesr_10 = _RAND_136[1:0];
  _RAND_137 = {1{`RANDOM}};
  modesr_11 = _RAND_137[1:0];
  _RAND_138 = {1{`RANDOM}};
  modesr_12 = _RAND_138[1:0];
  _RAND_139 = {1{`RANDOM}};
  modesr_13 = _RAND_139[1:0];
  _RAND_140 = {1{`RANDOM}};
  modesr_14 = _RAND_140[1:0];
  _RAND_141 = {1{`RANDOM}};
  modesr_15 = _RAND_141[1:0];
  _RAND_142 = {1{`RANDOM}};
  modesr_16 = _RAND_142[1:0];
  _RAND_143 = {1{`RANDOM}};
  modesr_17 = _RAND_143[1:0];
  _RAND_144 = {1{`RANDOM}};
  modesr_18 = _RAND_144[1:0];
  _RAND_145 = {1{`RANDOM}};
  modesr_19 = _RAND_145[1:0];
  _RAND_146 = {1{`RANDOM}};
  modesr_20 = _RAND_146[1:0];
  _RAND_147 = {1{`RANDOM}};
  modesr_21 = _RAND_147[1:0];
  _RAND_148 = {1{`RANDOM}};
  modesr_22 = _RAND_148[1:0];
  _RAND_149 = {1{`RANDOM}};
  modesr_23 = _RAND_149[1:0];
  _RAND_150 = {1{`RANDOM}};
  modesr_24 = _RAND_150[1:0];
  _RAND_151 = {1{`RANDOM}};
  modesr_25 = _RAND_151[1:0];
  _RAND_152 = {1{`RANDOM}};
  modesr_26 = _RAND_152[1:0];
  _RAND_153 = {1{`RANDOM}};
  modesr_27 = _RAND_153[1:0];
  _RAND_154 = {1{`RANDOM}};
  modesr_28 = _RAND_154[1:0];
  _RAND_155 = {1{`RANDOM}};
  modesr_29 = _RAND_155[1:0];
  _RAND_156 = {1{`RANDOM}};
  modesr_30 = _RAND_156[1:0];
  _RAND_157 = {1{`RANDOM}};
  modesr_31 = _RAND_157[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
