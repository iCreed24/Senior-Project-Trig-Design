module VCORDIC(
  input         clock,
  input         reset,
  input  [31:0] io_in_y0,
  output [31:0] io_out_z
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] tofixedx0_io_in; // @[VCORDIC.scala 107:33]
  wire [63:0] tofixedx0_io_out; // @[VCORDIC.scala 107:33]
  wire [31:0] tofixedy0_io_in; // @[VCORDIC.scala 108:33]
  wire [63:0] tofixedy0_io_out; // @[VCORDIC.scala 108:33]
  wire [31:0] tofixedz0_io_in; // @[VCORDIC.scala 109:33]
  wire [63:0] tofixedz0_io_out; // @[VCORDIC.scala 109:33]
  wire [63:0] tofloatxout_io_in; // @[VCORDIC.scala 424:29]
  wire [31:0] tofloatxout_io_out; // @[VCORDIC.scala 424:29]
  wire [63:0] tofloatyout_io_in; // @[VCORDIC.scala 425:29]
  wire [31:0] tofloatyout_io_out; // @[VCORDIC.scala 425:29]
  wire [63:0] tofloatzout_io_in; // @[VCORDIC.scala 426:29]
  wire [31:0] tofloatzout_io_out; // @[VCORDIC.scala 426:29]
  reg [63:0] xr_0; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_1; // @[VCORDIC.scala 120:27]
  reg [63:0] yr_0; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_1; // @[VCORDIC.scala 121:27]
  reg [63:0] zr_0; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_1; // @[VCORDIC.scala 122:27]
  wire  _fxxterm_T = $signed(yr_0) < 64'sh0; // @[VCORDIC.scala 381:33]
  wire [63:0] _fxxterm_T_3 = 64'sh0 - $signed(xr_0); // @[VCORDIC.scala 381:46]
  wire [63:0] fxxterm = $signed(yr_0) < 64'sh0 ? $signed(_fxxterm_T_3) : $signed(xr_0); // @[VCORDIC.scala 381:26]
  wire [63:0] _fxyterm_T_3 = 64'sh0 - $signed(yr_0); // @[VCORDIC.scala 382:46]
  wire [63:0] fxyterm = _fxxterm_T ? $signed(_fxyterm_T_3) : $signed(yr_0); // @[VCORDIC.scala 382:26]
  wire [63:0] _fxthetaterm_T_2 = 64'h0 - 64'hc90fdb00; // @[VCORDIC.scala 383:50]
  wire [63:0] x_1 = $signed(xr_0) + $signed(fxyterm); // @[VCORDIC.scala 385:27]
  wire [63:0] y_1 = $signed(yr_0) - $signed(fxxterm); // @[VCORDIC.scala 386:27]
  wire [63:0] _z_1_T = _fxxterm_T ? _fxthetaterm_T_2 : 64'hc90fdb00; // @[VCORDIC.scala 387:41]
  wire [63:0] z_1 = $signed(zr_0) + $signed(_z_1_T); // @[VCORDIC.scala 387:27]
  wire  _fxxterm_T_4 = $signed(yr_1) < 64'sh0; // @[VCORDIC.scala 411:33]
  wire [63:0] _fxxterm_T_7 = 64'sh0 - $signed(x_1); // @[VCORDIC.scala 411:46]
  wire [63:0] fxxterm_1 = $signed(yr_1) < 64'sh0 ? $signed(_fxxterm_T_7) : $signed(x_1); // @[VCORDIC.scala 411:26]
  wire [63:0] _fxyterm_T_7 = 64'sh0 - $signed(y_1); // @[VCORDIC.scala 412:46]
  wire [63:0] fxyterm_1 = _fxxterm_T_4 ? $signed(_fxyterm_T_7) : $signed(y_1); // @[VCORDIC.scala 412:26]
  wire [63:0] _fxthetaterm_T_5 = 64'h0 - 64'h76b19c00; // @[VCORDIC.scala 413:50]
  wire [62:0] _GEN_0 = fxyterm_1[63:1]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_2_T = {{1{_GEN_0[62]}},_GEN_0}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_2 = $signed(x_1) + $signed(_x_2_T); // @[VCORDIC.scala 415:26]
  wire [62:0] _GEN_1 = fxxterm_1[63:1]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_2_T = {{1{_GEN_1[62]}},_GEN_1}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_2 = $signed(y_1) - $signed(_y_2_T); // @[VCORDIC.scala 416:26]
  wire [63:0] _z_2_T = _fxxterm_T_4 ? _fxthetaterm_T_5 : 64'h76b19c00; // @[VCORDIC.scala 417:40]
  wire [63:0] z_2 = $signed(z_1) + $signed(_z_2_T); // @[VCORDIC.scala 417:26]
  wire [61:0] _GEN_2 = y_2[63:2]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_3_T = {{2{_GEN_2[61]}},_GEN_2}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_3 = $signed(x_2) + $signed(_x_3_T); // @[VCORDIC.scala 415:26]
  wire [61:0] _GEN_3 = x_2[63:2]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_3_T = {{2{_GEN_3[61]}},_GEN_3}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_3 = $signed(y_2) - $signed(_y_3_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_3 = $signed(z_2) + 64'sh3eb6ec00; // @[VCORDIC.scala 417:26]
  wire [60:0] _GEN_4 = y_3[63:3]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_4_T = {{3{_GEN_4[60]}},_GEN_4}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_4 = $signed(x_3) + $signed(_x_4_T); // @[VCORDIC.scala 415:26]
  wire [60:0] _GEN_5 = x_3[63:3]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_4_T = {{3{_GEN_5[60]}},_GEN_5}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_4 = $signed(y_3) - $signed(_y_4_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_4 = $signed(z_3) + 64'sh1fd5baa0; // @[VCORDIC.scala 417:26]
  wire [59:0] _GEN_6 = y_4[63:4]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_5_T = {{4{_GEN_6[59]}},_GEN_6}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_5 = $signed(x_4) + $signed(_x_5_T); // @[VCORDIC.scala 415:26]
  wire [59:0] _GEN_7 = x_4[63:4]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_5_T = {{4{_GEN_7[59]}},_GEN_7}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_5 = $signed(y_4) - $signed(_y_5_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_5 = $signed(z_4) + 64'shffaade0; // @[VCORDIC.scala 417:26]
  wire [58:0] _GEN_8 = y_5[63:5]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_6_T = {{5{_GEN_8[58]}},_GEN_8}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_6 = $signed(x_5) + $signed(_x_6_T); // @[VCORDIC.scala 415:26]
  wire [58:0] _GEN_9 = x_5[63:5]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_6_T = {{5{_GEN_9[58]}},_GEN_9}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_6 = $signed(y_5) - $signed(_y_6_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_6 = $signed(z_5) + 64'sh7ff5570; // @[VCORDIC.scala 417:26]
  wire [57:0] _GEN_10 = y_6[63:6]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_7_T = {{6{_GEN_10[57]}},_GEN_10}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_7 = $signed(x_6) + $signed(_x_7_T); // @[VCORDIC.scala 415:26]
  wire [57:0] _GEN_11 = x_6[63:6]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_7_T = {{6{_GEN_11[57]}},_GEN_11}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_7 = $signed(y_6) - $signed(_y_7_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_7 = $signed(z_6) + 64'sh3ffeaac; // @[VCORDIC.scala 417:26]
  wire [56:0] _GEN_12 = y_7[63:7]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_8_T = {{7{_GEN_12[56]}},_GEN_12}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_8 = $signed(x_7) + $signed(_x_8_T); // @[VCORDIC.scala 415:26]
  wire [56:0] _GEN_13 = x_7[63:7]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_8_T = {{7{_GEN_13[56]}},_GEN_13}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_8 = $signed(y_7) - $signed(_y_8_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_8 = $signed(z_7) + 64'sh1fffd56; // @[VCORDIC.scala 417:26]
  wire [55:0] _GEN_14 = y_8[63:8]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_9_T = {{8{_GEN_14[55]}},_GEN_14}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_9 = $signed(x_8) + $signed(_x_9_T); // @[VCORDIC.scala 415:26]
  wire [55:0] _GEN_15 = x_8[63:8]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_9_T = {{8{_GEN_15[55]}},_GEN_15}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_9 = $signed(y_8) - $signed(_y_9_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_9 = $signed(z_8) + 64'shffffab; // @[VCORDIC.scala 417:26]
  wire [54:0] _GEN_16 = y_9[63:9]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_10_T = {{9{_GEN_16[54]}},_GEN_16}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_10 = $signed(x_9) + $signed(_x_10_T); // @[VCORDIC.scala 415:26]
  wire [54:0] _GEN_17 = x_9[63:9]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_10_T = {{9{_GEN_17[54]}},_GEN_17}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_10 = $signed(y_9) - $signed(_y_10_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_10 = $signed(z_9) + 64'sh7ffff5; // @[VCORDIC.scala 417:26]
  wire [53:0] _GEN_18 = y_10[63:10]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_11_T = {{10{_GEN_18[53]}},_GEN_18}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_11 = $signed(x_10) + $signed(_x_11_T); // @[VCORDIC.scala 415:26]
  wire [53:0] _GEN_19 = x_10[63:10]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_11_T = {{10{_GEN_19[53]}},_GEN_19}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_11 = $signed(y_10) - $signed(_y_11_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_11 = $signed(z_10) + 64'sh3ffffe; // @[VCORDIC.scala 417:26]
  wire [52:0] _GEN_20 = y_11[63:11]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_12_T = {{11{_GEN_20[52]}},_GEN_20}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_12 = $signed(x_11) + $signed(_x_12_T); // @[VCORDIC.scala 415:26]
  wire [52:0] _GEN_21 = x_11[63:11]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_12_T = {{11{_GEN_21[52]}},_GEN_21}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_12 = $signed(y_11) - $signed(_y_12_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_12 = $signed(z_11) + 64'sh1fffff; // @[VCORDIC.scala 417:26]
  wire [51:0] _GEN_22 = y_12[63:12]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_13_T = {{12{_GEN_22[51]}},_GEN_22}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_13 = $signed(x_12) + $signed(_x_13_T); // @[VCORDIC.scala 415:26]
  wire [51:0] _GEN_23 = x_12[63:12]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_13_T = {{12{_GEN_23[51]}},_GEN_23}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_13 = $signed(y_12) - $signed(_y_13_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_13 = $signed(z_12) + 64'sh100000; // @[VCORDIC.scala 417:26]
  wire [50:0] _GEN_24 = y_13[63:13]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_14_T = {{13{_GEN_24[50]}},_GEN_24}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_14 = $signed(x_13) + $signed(_x_14_T); // @[VCORDIC.scala 415:26]
  wire [50:0] _GEN_25 = x_13[63:13]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_14_T = {{13{_GEN_25[50]}},_GEN_25}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_14 = $signed(y_13) - $signed(_y_14_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_14 = $signed(z_13) + 64'sh80000; // @[VCORDIC.scala 417:26]
  wire [49:0] _GEN_26 = y_14[63:14]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_15_T = {{14{_GEN_26[49]}},_GEN_26}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_15 = $signed(x_14) + $signed(_x_15_T); // @[VCORDIC.scala 415:26]
  wire [49:0] _GEN_27 = x_14[63:14]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_15_T = {{14{_GEN_27[49]}},_GEN_27}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_15 = $signed(y_14) - $signed(_y_15_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_15 = $signed(z_14) + 64'sh40000; // @[VCORDIC.scala 417:26]
  wire [48:0] _GEN_28 = y_15[63:15]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_16_T = {{15{_GEN_28[48]}},_GEN_28}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_16 = $signed(x_15) + $signed(_x_16_T); // @[VCORDIC.scala 415:26]
  wire [48:0] _GEN_29 = x_15[63:15]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_16_T = {{15{_GEN_29[48]}},_GEN_29}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_16 = $signed(y_15) - $signed(_y_16_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_16 = $signed(z_15) + 64'sh20000; // @[VCORDIC.scala 417:26]
  wire [47:0] _GEN_30 = y_16[63:16]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_17_T = {{16{_GEN_30[47]}},_GEN_30}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_17 = $signed(x_16) + $signed(_x_17_T); // @[VCORDIC.scala 415:26]
  wire [47:0] _GEN_31 = x_16[63:16]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_17_T = {{16{_GEN_31[47]}},_GEN_31}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_17 = $signed(y_16) - $signed(_y_17_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_17 = $signed(z_16) + 64'sh10000; // @[VCORDIC.scala 417:26]
  wire [46:0] _GEN_32 = y_17[63:17]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_18_T = {{17{_GEN_32[46]}},_GEN_32}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_18 = $signed(x_17) + $signed(_x_18_T); // @[VCORDIC.scala 415:26]
  wire [46:0] _GEN_33 = x_17[63:17]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_18_T = {{17{_GEN_33[46]}},_GEN_33}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_18 = $signed(y_17) - $signed(_y_18_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_18 = $signed(z_17) + 64'sh8000; // @[VCORDIC.scala 417:26]
  wire [45:0] _GEN_34 = y_18[63:18]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_19_T = {{18{_GEN_34[45]}},_GEN_34}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_19 = $signed(x_18) + $signed(_x_19_T); // @[VCORDIC.scala 415:26]
  wire [45:0] _GEN_35 = x_18[63:18]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_19_T = {{18{_GEN_35[45]}},_GEN_35}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_19 = $signed(y_18) - $signed(_y_19_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_19 = $signed(z_18) + 64'sh4000; // @[VCORDIC.scala 417:26]
  wire [44:0] _GEN_36 = y_19[63:19]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_20_T = {{19{_GEN_36[44]}},_GEN_36}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_20 = $signed(x_19) + $signed(_x_20_T); // @[VCORDIC.scala 415:26]
  wire [44:0] _GEN_37 = x_19[63:19]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_20_T = {{19{_GEN_37[44]}},_GEN_37}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_20 = $signed(y_19) - $signed(_y_20_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_20 = $signed(z_19) + 64'sh2000; // @[VCORDIC.scala 417:26]
  wire [43:0] _GEN_38 = y_20[63:20]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_21_T = {{20{_GEN_38[43]}},_GEN_38}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_21 = $signed(x_20) + $signed(_x_21_T); // @[VCORDIC.scala 415:26]
  wire [43:0] _GEN_39 = x_20[63:20]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_21_T = {{20{_GEN_39[43]}},_GEN_39}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_21 = $signed(y_20) - $signed(_y_21_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_21 = $signed(z_20) + 64'sh1000; // @[VCORDIC.scala 417:26]
  wire [42:0] _GEN_40 = y_21[63:21]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_22_T = {{21{_GEN_40[42]}},_GEN_40}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_22 = $signed(x_21) + $signed(_x_22_T); // @[VCORDIC.scala 415:26]
  wire [42:0] _GEN_41 = x_21[63:21]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_22_T = {{21{_GEN_41[42]}},_GEN_41}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_22 = $signed(y_21) - $signed(_y_22_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_22 = $signed(z_21) + 64'sh800; // @[VCORDIC.scala 417:26]
  wire [41:0] _GEN_42 = y_22[63:22]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_23_T = {{22{_GEN_42[41]}},_GEN_42}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_23 = $signed(x_22) + $signed(_x_23_T); // @[VCORDIC.scala 415:26]
  wire [41:0] _GEN_43 = x_22[63:22]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_23_T = {{22{_GEN_43[41]}},_GEN_43}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_23 = $signed(y_22) - $signed(_y_23_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_23 = $signed(z_22) + 64'sh400; // @[VCORDIC.scala 417:26]
  wire [40:0] _GEN_44 = y_23[63:23]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_24_T = {{23{_GEN_44[40]}},_GEN_44}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_24 = $signed(x_23) + $signed(_x_24_T); // @[VCORDIC.scala 415:26]
  wire [40:0] _GEN_45 = x_23[63:23]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_24_T = {{23{_GEN_45[40]}},_GEN_45}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_24 = $signed(y_23) - $signed(_y_24_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_24 = $signed(z_23) + 64'sh200; // @[VCORDIC.scala 417:26]
  wire [39:0] _GEN_46 = y_24[63:24]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_25_T = {{24{_GEN_46[39]}},_GEN_46}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_25 = $signed(x_24) + $signed(_x_25_T); // @[VCORDIC.scala 415:26]
  wire [39:0] _GEN_47 = x_24[63:24]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_25_T = {{24{_GEN_47[39]}},_GEN_47}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_25 = $signed(y_24) - $signed(_y_25_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_25 = $signed(z_24) + 64'sh100; // @[VCORDIC.scala 417:26]
  wire [38:0] _GEN_48 = y_25[63:25]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_26_T = {{25{_GEN_48[38]}},_GEN_48}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_26 = $signed(x_25) + $signed(_x_26_T); // @[VCORDIC.scala 415:26]
  wire [38:0] _GEN_49 = x_25[63:25]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_26_T = {{25{_GEN_49[38]}},_GEN_49}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_26 = $signed(y_25) - $signed(_y_26_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_26 = $signed(z_25) + 64'sh80; // @[VCORDIC.scala 417:26]
  wire [37:0] _GEN_50 = y_26[63:26]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_27_T = {{26{_GEN_50[37]}},_GEN_50}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_27 = $signed(x_26) + $signed(_x_27_T); // @[VCORDIC.scala 415:26]
  wire [37:0] _GEN_51 = x_26[63:26]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_27_T = {{26{_GEN_51[37]}},_GEN_51}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_27 = $signed(y_26) - $signed(_y_27_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_27 = $signed(z_26) + 64'sh40; // @[VCORDIC.scala 417:26]
  wire [36:0] _GEN_52 = y_27[63:27]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_28_T = {{27{_GEN_52[36]}},_GEN_52}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_28 = $signed(x_27) + $signed(_x_28_T); // @[VCORDIC.scala 415:26]
  wire [36:0] _GEN_53 = x_27[63:27]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_28_T = {{27{_GEN_53[36]}},_GEN_53}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_28 = $signed(y_27) - $signed(_y_28_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_28 = $signed(z_27) + 64'sh20; // @[VCORDIC.scala 417:26]
  wire [35:0] _GEN_54 = y_28[63:28]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_29_T = {{28{_GEN_54[35]}},_GEN_54}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_29 = $signed(x_28) + $signed(_x_29_T); // @[VCORDIC.scala 415:26]
  wire [35:0] _GEN_55 = x_28[63:28]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_29_T = {{28{_GEN_55[35]}},_GEN_55}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_29 = $signed(y_28) - $signed(_y_29_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_29 = $signed(z_28) + 64'sh10; // @[VCORDIC.scala 417:26]
  wire [34:0] _GEN_56 = y_29[63:29]; // @[VCORDIC.scala 415:37]
  wire [63:0] _x_30_T = {{29{_GEN_56[34]}},_GEN_56}; // @[VCORDIC.scala 415:37]
  wire [63:0] x_30 = $signed(x_29) + $signed(_x_30_T); // @[VCORDIC.scala 415:26]
  wire [34:0] _GEN_57 = x_29[63:29]; // @[VCORDIC.scala 416:37]
  wire [63:0] _y_30_T = {{29{_GEN_57[34]}},_GEN_57}; // @[VCORDIC.scala 416:37]
  wire [63:0] y_30 = $signed(y_29) - $signed(_y_30_T); // @[VCORDIC.scala 416:26]
  wire [63:0] z_30 = $signed(z_29) + 64'sh8; // @[VCORDIC.scala 417:26]
  wire [33:0] _GEN_58 = y_30[63:30]; // @[VCORDIC.scala 399:37]
  wire [63:0] _x_31_T = {{30{_GEN_58[33]}},_GEN_58}; // @[VCORDIC.scala 399:37]
  wire [63:0] x_31 = $signed(x_30) + $signed(_x_31_T); // @[VCORDIC.scala 399:26]
  wire [33:0] _GEN_59 = x_30[63:30]; // @[VCORDIC.scala 400:37]
  wire [63:0] _y_31_T = {{30{_GEN_59[33]}},_GEN_59}; // @[VCORDIC.scala 400:37]
  wire [63:0] y_31 = $signed(y_30) - $signed(_y_31_T); // @[VCORDIC.scala 400:26]
  wire [63:0] z_31 = $signed(z_30) + 64'sh4; // @[VCORDIC.scala 401:26]
  Float32ToFixed64 tofixedx0 ( // @[VCORDIC.scala 107:33]
    .io_in(tofixedx0_io_in),
    .io_out(tofixedx0_io_out)
  );
  Float32ToFixed64 tofixedy0 ( // @[VCORDIC.scala 108:33]
    .io_in(tofixedy0_io_in),
    .io_out(tofixedy0_io_out)
  );
  Float32ToFixed64 tofixedz0 ( // @[VCORDIC.scala 109:33]
    .io_in(tofixedz0_io_in),
    .io_out(tofixedz0_io_out)
  );
  Fixed64ToFloat32 tofloatxout ( // @[VCORDIC.scala 424:29]
    .io_in(tofloatxout_io_in),
    .io_out(tofloatxout_io_out)
  );
  Fixed64ToFloat32 tofloatyout ( // @[VCORDIC.scala 425:29]
    .io_in(tofloatyout_io_in),
    .io_out(tofloatyout_io_out)
  );
  Fixed64ToFloat32 tofloatzout ( // @[VCORDIC.scala 426:29]
    .io_in(tofloatzout_io_in),
    .io_out(tofloatzout_io_out)
  );
  assign io_out_z = tofloatzout_io_out; // @[VCORDIC.scala 435:14]
  assign tofixedx0_io_in = 32'h3f800000; // @[VCORDIC.scala 111:19]
  assign tofixedy0_io_in = io_in_y0; // @[VCORDIC.scala 112:19]
  assign tofixedz0_io_in = 32'h0; // @[VCORDIC.scala 113:19]
  assign tofloatxout_io_in = xr_1; // @[VCORDIC.scala 429:32]
  assign tofloatyout_io_in = yr_1; // @[VCORDIC.scala 430:32]
  assign tofloatzout_io_in = zr_1; // @[VCORDIC.scala 431:32]
  always @(posedge clock) begin
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_0 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_0 <= tofixedx0_io_out; // @[VCORDIC.scala 134:9]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_1 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_1 <= x_31; // @[VCORDIC.scala 405:15]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_0 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_0 <= tofixedy0_io_out; // @[VCORDIC.scala 135:9]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_1 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_1 <= y_31; // @[VCORDIC.scala 406:15]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_0 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_0 <= tofixedz0_io_out; // @[VCORDIC.scala 133:9]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_1 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_1 <= z_31; // @[VCORDIC.scala 404:15]
    end
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
  _RAND_0 = {2{`RANDOM}};
  xr_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  xr_1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  yr_0 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  yr_1 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  zr_0 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  zr_1 = _RAND_5[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
