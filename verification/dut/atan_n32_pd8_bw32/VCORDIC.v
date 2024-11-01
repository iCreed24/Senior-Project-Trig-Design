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
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [63:0] _RAND_18;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] tofixedx0_io_in; // @[VCORDIC.scala 107:33]
  wire [63:0] tofixedx0_io_out; // @[VCORDIC.scala 107:33]
  wire [31:0] tofixedy0_io_in; // @[VCORDIC.scala 108:33]
  wire [63:0] tofixedy0_io_out; // @[VCORDIC.scala 108:33]
  wire [31:0] tofixedz0_io_in; // @[VCORDIC.scala 109:33]
  wire [63:0] tofixedz0_io_out; // @[VCORDIC.scala 109:33]
  wire [63:0] tofloatxout_io_in; // @[VCORDIC.scala 285:29]
  wire [31:0] tofloatxout_io_out; // @[VCORDIC.scala 285:29]
  wire [63:0] tofloatyout_io_in; // @[VCORDIC.scala 286:29]
  wire [31:0] tofloatyout_io_out; // @[VCORDIC.scala 286:29]
  wire [63:0] tofloatzout_io_in; // @[VCORDIC.scala 287:29]
  wire [31:0] tofloatzout_io_out; // @[VCORDIC.scala 287:29]
  reg [63:0] xr_0; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_1; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_2; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_3; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_4; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_5; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_6; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_7; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_8; // @[VCORDIC.scala 120:27]
  reg [63:0] yr_0; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_1; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_2; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_3; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_4; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_5; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_6; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_7; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_8; // @[VCORDIC.scala 121:27]
  reg [63:0] zr_8; // @[VCORDIC.scala 122:27]
  wire  _fxxterm_T = $signed(yr_0) < 64'sh0; // @[VCORDIC.scala 237:33]
  wire [63:0] _fxxterm_T_3 = 64'sh0 - $signed(xr_0); // @[VCORDIC.scala 237:46]
  wire [63:0] fxxterm = $signed(yr_0) < 64'sh0 ? $signed(_fxxterm_T_3) : $signed(xr_0); // @[VCORDIC.scala 237:26]
  wire [63:0] _fxyterm_T_3 = 64'sh0 - $signed(yr_0); // @[VCORDIC.scala 238:46]
  wire [63:0] fxyterm = _fxxterm_T ? $signed(_fxyterm_T_3) : $signed(yr_0); // @[VCORDIC.scala 238:26]
  wire [63:0] x_1 = $signed(xr_0) + $signed(fxyterm); // @[VCORDIC.scala 241:27]
  wire [63:0] y_1 = $signed(yr_0) - $signed(fxxterm); // @[VCORDIC.scala 242:27]
  wire  _fxxterm_T_4 = $signed(yr_1) < 64'sh0; // @[VCORDIC.scala 250:33]
  wire [63:0] _fxxterm_T_7 = 64'sh0 - $signed(x_1); // @[VCORDIC.scala 250:46]
  wire [63:0] fxxterm_1 = $signed(yr_1) < 64'sh0 ? $signed(_fxxterm_T_7) : $signed(x_1); // @[VCORDIC.scala 250:26]
  wire [63:0] _fxyterm_T_7 = 64'sh0 - $signed(y_1); // @[VCORDIC.scala 251:46]
  wire [63:0] fxyterm_1 = _fxxterm_T_4 ? $signed(_fxyterm_T_7) : $signed(y_1); // @[VCORDIC.scala 251:26]
  wire [62:0] _GEN_0 = fxyterm_1[63:1]; // @[VCORDIC.scala 254:37]
  wire [63:0] _x_2_T = {{1{_GEN_0[62]}},_GEN_0}; // @[VCORDIC.scala 254:37]
  wire [63:0] x_2 = $signed(x_1) + $signed(_x_2_T); // @[VCORDIC.scala 254:26]
  wire [62:0] _GEN_1 = fxxterm_1[63:1]; // @[VCORDIC.scala 255:37]
  wire [63:0] _y_2_T = {{1{_GEN_1[62]}},_GEN_1}; // @[VCORDIC.scala 255:37]
  wire [63:0] y_2 = $signed(y_1) - $signed(_y_2_T); // @[VCORDIC.scala 255:26]
  wire  _fxxterm_T_8 = $signed(yr_2) < 64'sh0; // @[VCORDIC.scala 250:33]
  wire [63:0] _fxxterm_T_11 = 64'sh0 - $signed(x_2); // @[VCORDIC.scala 250:46]
  wire [63:0] fxxterm_2 = $signed(yr_2) < 64'sh0 ? $signed(_fxxterm_T_11) : $signed(x_2); // @[VCORDIC.scala 250:26]
  wire [63:0] _fxyterm_T_11 = 64'sh0 - $signed(y_2); // @[VCORDIC.scala 251:46]
  wire [63:0] fxyterm_2 = _fxxterm_T_8 ? $signed(_fxyterm_T_11) : $signed(y_2); // @[VCORDIC.scala 251:26]
  wire [61:0] _GEN_2 = fxyterm_2[63:2]; // @[VCORDIC.scala 254:37]
  wire [63:0] _x_3_T = {{2{_GEN_2[61]}},_GEN_2}; // @[VCORDIC.scala 254:37]
  wire [63:0] x_3 = $signed(x_2) + $signed(_x_3_T); // @[VCORDIC.scala 254:26]
  wire [61:0] _GEN_3 = fxxterm_2[63:2]; // @[VCORDIC.scala 255:37]
  wire [63:0] _y_3_T = {{2{_GEN_3[61]}},_GEN_3}; // @[VCORDIC.scala 255:37]
  wire [63:0] y_3 = $signed(y_2) - $signed(_y_3_T); // @[VCORDIC.scala 255:26]
  wire  _fxxterm_T_12 = $signed(yr_3) < 64'sh0; // @[VCORDIC.scala 264:33]
  wire [63:0] _fxxterm_T_15 = 64'sh0 - $signed(x_3); // @[VCORDIC.scala 264:46]
  wire [63:0] fxxterm_3 = $signed(yr_3) < 64'sh0 ? $signed(_fxxterm_T_15) : $signed(x_3); // @[VCORDIC.scala 264:26]
  wire [63:0] _fxyterm_T_15 = 64'sh0 - $signed(y_3); // @[VCORDIC.scala 265:46]
  wire [63:0] fxyterm_3 = _fxxterm_T_12 ? $signed(_fxyterm_T_15) : $signed(y_3); // @[VCORDIC.scala 265:26]
  wire [60:0] _GEN_4 = fxyterm_3[63:3]; // @[VCORDIC.scala 268:37]
  wire [63:0] _x_4_T = {{3{_GEN_4[60]}},_GEN_4}; // @[VCORDIC.scala 268:37]
  wire [63:0] x_4 = $signed(x_3) + $signed(_x_4_T); // @[VCORDIC.scala 268:26]
  wire [60:0] _GEN_5 = fxxterm_3[63:3]; // @[VCORDIC.scala 269:37]
  wire [63:0] _y_4_T = {{3{_GEN_5[60]}},_GEN_5}; // @[VCORDIC.scala 269:37]
  wire [63:0] y_4 = $signed(y_3) - $signed(_y_4_T); // @[VCORDIC.scala 269:26]
  wire  _fxxterm_T_16 = $signed(yr_4) < 64'sh0; // @[VCORDIC.scala 237:33]
  wire [63:0] _fxxterm_T_19 = 64'sh0 - $signed(xr_1); // @[VCORDIC.scala 237:46]
  wire [63:0] fxxterm_4 = $signed(yr_4) < 64'sh0 ? $signed(_fxxterm_T_19) : $signed(xr_1); // @[VCORDIC.scala 237:26]
  wire [63:0] _fxyterm_T_19 = 64'sh0 - $signed(yr_1); // @[VCORDIC.scala 238:46]
  wire [63:0] fxyterm_4 = _fxxterm_T_16 ? $signed(_fxyterm_T_19) : $signed(yr_1); // @[VCORDIC.scala 238:26]
  wire [59:0] _GEN_6 = fxyterm_4[63:4]; // @[VCORDIC.scala 241:38]
  wire [63:0] _x_5_T = {{4{_GEN_6[59]}},_GEN_6}; // @[VCORDIC.scala 241:38]
  wire [63:0] x_5 = $signed(xr_4) + $signed(_x_5_T); // @[VCORDIC.scala 241:27]
  wire [59:0] _GEN_7 = fxxterm_4[63:4]; // @[VCORDIC.scala 242:38]
  wire [63:0] _y_5_T = {{4{_GEN_7[59]}},_GEN_7}; // @[VCORDIC.scala 242:38]
  wire [63:0] y_5 = $signed(yr_4) - $signed(_y_5_T); // @[VCORDIC.scala 242:27]
  wire  _fxxterm_T_20 = $signed(yr_5) < 64'sh0; // @[VCORDIC.scala 250:33]
  wire [63:0] _fxxterm_T_23 = 64'sh0 - $signed(x_5); // @[VCORDIC.scala 250:46]
  wire [63:0] fxxterm_5 = $signed(yr_5) < 64'sh0 ? $signed(_fxxterm_T_23) : $signed(x_5); // @[VCORDIC.scala 250:26]
  wire [63:0] _fxyterm_T_23 = 64'sh0 - $signed(y_5); // @[VCORDIC.scala 251:46]
  wire [63:0] fxyterm_5 = _fxxterm_T_20 ? $signed(_fxyterm_T_23) : $signed(y_5); // @[VCORDIC.scala 251:26]
  wire [58:0] _GEN_8 = fxyterm_5[63:5]; // @[VCORDIC.scala 254:37]
  wire [63:0] _x_6_T = {{5{_GEN_8[58]}},_GEN_8}; // @[VCORDIC.scala 254:37]
  wire [63:0] x_6 = $signed(x_5) + $signed(_x_6_T); // @[VCORDIC.scala 254:26]
  wire [58:0] _GEN_9 = fxxterm_5[63:5]; // @[VCORDIC.scala 255:37]
  wire [63:0] _y_6_T = {{5{_GEN_9[58]}},_GEN_9}; // @[VCORDIC.scala 255:37]
  wire [63:0] y_6 = $signed(y_5) - $signed(_y_6_T); // @[VCORDIC.scala 255:26]
  wire  _fxxterm_T_24 = $signed(yr_6) < 64'sh0; // @[VCORDIC.scala 250:33]
  wire [63:0] _fxxterm_T_27 = 64'sh0 - $signed(x_6); // @[VCORDIC.scala 250:46]
  wire [63:0] fxxterm_6 = $signed(yr_6) < 64'sh0 ? $signed(_fxxterm_T_27) : $signed(x_6); // @[VCORDIC.scala 250:26]
  wire [63:0] _fxyterm_T_27 = 64'sh0 - $signed(y_6); // @[VCORDIC.scala 251:46]
  wire [63:0] fxyterm_6 = _fxxterm_T_24 ? $signed(_fxyterm_T_27) : $signed(y_6); // @[VCORDIC.scala 251:26]
  wire [57:0] _GEN_10 = fxyterm_6[63:6]; // @[VCORDIC.scala 254:37]
  wire [63:0] _x_7_T = {{6{_GEN_10[57]}},_GEN_10}; // @[VCORDIC.scala 254:37]
  wire [63:0] x_7 = $signed(x_6) + $signed(_x_7_T); // @[VCORDIC.scala 254:26]
  wire [57:0] _GEN_11 = fxxterm_6[63:6]; // @[VCORDIC.scala 255:37]
  wire [63:0] _y_7_T = {{6{_GEN_11[57]}},_GEN_11}; // @[VCORDIC.scala 255:37]
  wire [63:0] y_7 = $signed(y_6) - $signed(_y_7_T); // @[VCORDIC.scala 255:26]
  wire  _fxxterm_T_28 = $signed(yr_7) < 64'sh0; // @[VCORDIC.scala 264:33]
  wire [63:0] _fxxterm_T_31 = 64'sh0 - $signed(x_7); // @[VCORDIC.scala 264:46]
  wire [63:0] fxxterm_7 = $signed(yr_7) < 64'sh0 ? $signed(_fxxterm_T_31) : $signed(x_7); // @[VCORDIC.scala 264:26]
  wire [63:0] _fxyterm_T_31 = 64'sh0 - $signed(y_7); // @[VCORDIC.scala 265:46]
  wire [63:0] fxyterm_7 = _fxxterm_T_28 ? $signed(_fxyterm_T_31) : $signed(y_7); // @[VCORDIC.scala 265:26]
  wire [56:0] _GEN_12 = fxyterm_7[63:7]; // @[VCORDIC.scala 268:37]
  wire [63:0] _x_8_T = {{7{_GEN_12[56]}},_GEN_12}; // @[VCORDIC.scala 268:37]
  wire [63:0] x_8 = $signed(x_7) + $signed(_x_8_T); // @[VCORDIC.scala 268:26]
  wire [56:0] _GEN_13 = fxxterm_7[63:7]; // @[VCORDIC.scala 269:37]
  wire [63:0] _y_8_T = {{7{_GEN_13[56]}},_GEN_13}; // @[VCORDIC.scala 269:37]
  wire [63:0] y_8 = $signed(y_7) - $signed(_y_8_T); // @[VCORDIC.scala 269:26]
  wire  _fxxterm_T_32 = $signed(yr_8) < 64'sh0; // @[VCORDIC.scala 237:33]
  wire [63:0] _fxxterm_T_35 = 64'sh0 - $signed(xr_2); // @[VCORDIC.scala 237:46]
  wire [63:0] fxxterm_8 = $signed(yr_8) < 64'sh0 ? $signed(_fxxterm_T_35) : $signed(xr_2); // @[VCORDIC.scala 237:26]
  wire [63:0] _fxyterm_T_35 = 64'sh0 - $signed(yr_2); // @[VCORDIC.scala 238:46]
  wire [63:0] fxyterm_8 = _fxxterm_T_32 ? $signed(_fxyterm_T_35) : $signed(yr_2); // @[VCORDIC.scala 238:26]
  wire [55:0] _GEN_14 = fxyterm_8[63:8]; // @[VCORDIC.scala 241:38]
  wire [63:0] _x_9_T = {{8{_GEN_14[55]}},_GEN_14}; // @[VCORDIC.scala 241:38]
  wire [63:0] x_9 = $signed(xr_8) + $signed(_x_9_T); // @[VCORDIC.scala 241:27]
  wire [55:0] _GEN_15 = fxxterm_8[63:8]; // @[VCORDIC.scala 242:38]
  wire [63:0] _y_9_T = {{8{_GEN_15[55]}},_GEN_15}; // @[VCORDIC.scala 242:38]
  wire [63:0] y_9 = $signed(yr_8) - $signed(_y_9_T); // @[VCORDIC.scala 242:27]
  wire [54:0] _GEN_16 = y_9[63:9]; // @[VCORDIC.scala 254:37]
  wire [63:0] _x_10_T = {{9{_GEN_16[54]}},_GEN_16}; // @[VCORDIC.scala 254:37]
  wire [63:0] x_10 = $signed(x_9) + $signed(_x_10_T); // @[VCORDIC.scala 254:26]
  wire [54:0] _GEN_17 = x_9[63:9]; // @[VCORDIC.scala 255:37]
  wire [63:0] _y_10_T = {{9{_GEN_17[54]}},_GEN_17}; // @[VCORDIC.scala 255:37]
  wire [63:0] y_10 = $signed(y_9) - $signed(_y_10_T); // @[VCORDIC.scala 255:26]
  wire [53:0] _GEN_18 = y_10[63:10]; // @[VCORDIC.scala 254:37]
  wire [63:0] _x_11_T = {{10{_GEN_18[53]}},_GEN_18}; // @[VCORDIC.scala 254:37]
  wire [63:0] x_11 = $signed(x_10) + $signed(_x_11_T); // @[VCORDIC.scala 254:26]
  wire [53:0] _GEN_19 = x_10[63:10]; // @[VCORDIC.scala 255:37]
  wire [63:0] _y_11_T = {{10{_GEN_19[53]}},_GEN_19}; // @[VCORDIC.scala 255:37]
  wire [63:0] y_11 = $signed(y_10) - $signed(_y_11_T); // @[VCORDIC.scala 255:26]
  wire [52:0] _GEN_20 = y_11[63:11]; // @[VCORDIC.scala 268:37]
  wire [63:0] _x_12_T = {{11{_GEN_20[52]}},_GEN_20}; // @[VCORDIC.scala 268:37]
  wire [63:0] x_12 = $signed(x_11) + $signed(_x_12_T); // @[VCORDIC.scala 268:26]
  wire [52:0] _GEN_21 = x_11[63:11]; // @[VCORDIC.scala 269:37]
  wire [63:0] _y_12_T = {{11{_GEN_21[52]}},_GEN_21}; // @[VCORDIC.scala 269:37]
  wire [63:0] y_12 = $signed(y_11) - $signed(_y_12_T); // @[VCORDIC.scala 269:26]
  wire [51:0] _GEN_22 = yr_3[63:12]; // @[VCORDIC.scala 241:38]
  wire [63:0] _x_13_T = {{12{_GEN_22[51]}},_GEN_22}; // @[VCORDIC.scala 241:38]
  wire [64:0] _x_13_T_1 = {{1{_x_13_T[63]}},_x_13_T}; // @[VCORDIC.scala 241:27]
  wire [63:0] x_13 = _x_13_T_1[63:0]; // @[VCORDIC.scala 241:27]
  wire [51:0] _GEN_23 = xr_3[63:12]; // @[VCORDIC.scala 242:38]
  wire [63:0] _y_13_T = {{12{_GEN_23[51]}},_GEN_23}; // @[VCORDIC.scala 242:38]
  wire [63:0] y_13 = 64'sh0 - $signed(_y_13_T); // @[VCORDIC.scala 242:27]
  wire [50:0] _GEN_24 = y_13[63:13]; // @[VCORDIC.scala 254:37]
  wire [63:0] _x_14_T = {{13{_GEN_24[50]}},_GEN_24}; // @[VCORDIC.scala 254:37]
  wire [63:0] x_14 = $signed(x_13) + $signed(_x_14_T); // @[VCORDIC.scala 254:26]
  wire [50:0] _GEN_25 = x_13[63:13]; // @[VCORDIC.scala 255:37]
  wire [63:0] _y_14_T = {{13{_GEN_25[50]}},_GEN_25}; // @[VCORDIC.scala 255:37]
  wire [63:0] y_14 = $signed(y_13) - $signed(_y_14_T); // @[VCORDIC.scala 255:26]
  wire [49:0] _GEN_26 = y_14[63:14]; // @[VCORDIC.scala 254:37]
  wire [63:0] _x_15_T = {{14{_GEN_26[49]}},_GEN_26}; // @[VCORDIC.scala 254:37]
  wire [63:0] x_15 = $signed(x_14) + $signed(_x_15_T); // @[VCORDIC.scala 254:26]
  wire [49:0] _GEN_27 = x_14[63:14]; // @[VCORDIC.scala 255:37]
  wire [63:0] _y_15_T = {{14{_GEN_27[49]}},_GEN_27}; // @[VCORDIC.scala 255:37]
  wire [63:0] y_15 = $signed(y_14) - $signed(_y_15_T); // @[VCORDIC.scala 255:26]
  wire [48:0] _GEN_28 = y_15[63:15]; // @[VCORDIC.scala 268:37]
  wire [63:0] _x_16_T = {{15{_GEN_28[48]}},_GEN_28}; // @[VCORDIC.scala 268:37]
  wire [63:0] x_16 = $signed(x_15) + $signed(_x_16_T); // @[VCORDIC.scala 268:26]
  wire [48:0] _GEN_29 = x_15[63:15]; // @[VCORDIC.scala 269:37]
  wire [63:0] _y_16_T = {{15{_GEN_29[48]}},_GEN_29}; // @[VCORDIC.scala 269:37]
  wire [63:0] y_16 = $signed(y_15) - $signed(_y_16_T); // @[VCORDIC.scala 269:26]
  wire [47:0] _GEN_30 = yr_4[63:16]; // @[VCORDIC.scala 241:38]
  wire [63:0] _x_17_T = {{16{_GEN_30[47]}},_GEN_30}; // @[VCORDIC.scala 241:38]
  wire [64:0] _x_17_T_1 = {{1{_x_17_T[63]}},_x_17_T}; // @[VCORDIC.scala 241:27]
  wire [63:0] x_17 = _x_17_T_1[63:0]; // @[VCORDIC.scala 241:27]
  wire [47:0] _GEN_31 = xr_4[63:16]; // @[VCORDIC.scala 242:38]
  wire [63:0] _y_17_T = {{16{_GEN_31[47]}},_GEN_31}; // @[VCORDIC.scala 242:38]
  wire [63:0] y_17 = 64'sh0 - $signed(_y_17_T); // @[VCORDIC.scala 242:27]
  wire [46:0] _GEN_32 = y_17[63:17]; // @[VCORDIC.scala 254:37]
  wire [63:0] _x_18_T = {{17{_GEN_32[46]}},_GEN_32}; // @[VCORDIC.scala 254:37]
  wire [63:0] x_18 = $signed(x_17) + $signed(_x_18_T); // @[VCORDIC.scala 254:26]
  wire [46:0] _GEN_33 = x_17[63:17]; // @[VCORDIC.scala 255:37]
  wire [63:0] _y_18_T = {{17{_GEN_33[46]}},_GEN_33}; // @[VCORDIC.scala 255:37]
  wire [63:0] y_18 = $signed(y_17) - $signed(_y_18_T); // @[VCORDIC.scala 255:26]
  wire [45:0] _GEN_34 = y_18[63:18]; // @[VCORDIC.scala 254:37]
  wire [63:0] _x_19_T = {{18{_GEN_34[45]}},_GEN_34}; // @[VCORDIC.scala 254:37]
  wire [63:0] x_19 = $signed(x_18) + $signed(_x_19_T); // @[VCORDIC.scala 254:26]
  wire [45:0] _GEN_35 = x_18[63:18]; // @[VCORDIC.scala 255:37]
  wire [63:0] _y_19_T = {{18{_GEN_35[45]}},_GEN_35}; // @[VCORDIC.scala 255:37]
  wire [63:0] y_19 = $signed(y_18) - $signed(_y_19_T); // @[VCORDIC.scala 255:26]
  wire [44:0] _GEN_36 = y_19[63:19]; // @[VCORDIC.scala 268:37]
  wire [63:0] _x_20_T = {{19{_GEN_36[44]}},_GEN_36}; // @[VCORDIC.scala 268:37]
  wire [63:0] x_20 = $signed(x_19) + $signed(_x_20_T); // @[VCORDIC.scala 268:26]
  wire [44:0] _GEN_37 = x_19[63:19]; // @[VCORDIC.scala 269:37]
  wire [63:0] _y_20_T = {{19{_GEN_37[44]}},_GEN_37}; // @[VCORDIC.scala 269:37]
  wire [63:0] y_20 = $signed(y_19) - $signed(_y_20_T); // @[VCORDIC.scala 269:26]
  wire [43:0] _GEN_38 = yr_5[63:20]; // @[VCORDIC.scala 241:38]
  wire [63:0] _x_21_T = {{20{_GEN_38[43]}},_GEN_38}; // @[VCORDIC.scala 241:38]
  wire [64:0] _x_21_T_1 = {{1{_x_21_T[63]}},_x_21_T}; // @[VCORDIC.scala 241:27]
  wire [63:0] x_21 = _x_21_T_1[63:0]; // @[VCORDIC.scala 241:27]
  wire [43:0] _GEN_39 = xr_5[63:20]; // @[VCORDIC.scala 242:38]
  wire [63:0] _y_21_T = {{20{_GEN_39[43]}},_GEN_39}; // @[VCORDIC.scala 242:38]
  wire [63:0] y_21 = 64'sh0 - $signed(_y_21_T); // @[VCORDIC.scala 242:27]
  wire [42:0] _GEN_40 = y_21[63:21]; // @[VCORDIC.scala 254:37]
  wire [63:0] _x_22_T = {{21{_GEN_40[42]}},_GEN_40}; // @[VCORDIC.scala 254:37]
  wire [63:0] x_22 = $signed(x_21) + $signed(_x_22_T); // @[VCORDIC.scala 254:26]
  wire [42:0] _GEN_41 = x_21[63:21]; // @[VCORDIC.scala 255:37]
  wire [63:0] _y_22_T = {{21{_GEN_41[42]}},_GEN_41}; // @[VCORDIC.scala 255:37]
  wire [63:0] y_22 = $signed(y_21) - $signed(_y_22_T); // @[VCORDIC.scala 255:26]
  wire [41:0] _GEN_42 = y_22[63:22]; // @[VCORDIC.scala 254:37]
  wire [63:0] _x_23_T = {{22{_GEN_42[41]}},_GEN_42}; // @[VCORDIC.scala 254:37]
  wire [63:0] x_23 = $signed(x_22) + $signed(_x_23_T); // @[VCORDIC.scala 254:26]
  wire [41:0] _GEN_43 = x_22[63:22]; // @[VCORDIC.scala 255:37]
  wire [63:0] _y_23_T = {{22{_GEN_43[41]}},_GEN_43}; // @[VCORDIC.scala 255:37]
  wire [63:0] y_23 = $signed(y_22) - $signed(_y_23_T); // @[VCORDIC.scala 255:26]
  wire [40:0] _GEN_44 = y_23[63:23]; // @[VCORDIC.scala 268:37]
  wire [63:0] _x_24_T = {{23{_GEN_44[40]}},_GEN_44}; // @[VCORDIC.scala 268:37]
  wire [63:0] x_24 = $signed(x_23) + $signed(_x_24_T); // @[VCORDIC.scala 268:26]
  wire [40:0] _GEN_45 = x_23[63:23]; // @[VCORDIC.scala 269:37]
  wire [63:0] _y_24_T = {{23{_GEN_45[40]}},_GEN_45}; // @[VCORDIC.scala 269:37]
  wire [63:0] y_24 = $signed(y_23) - $signed(_y_24_T); // @[VCORDIC.scala 269:26]
  wire [39:0] _GEN_46 = yr_6[63:24]; // @[VCORDIC.scala 241:38]
  wire [63:0] _x_25_T = {{24{_GEN_46[39]}},_GEN_46}; // @[VCORDIC.scala 241:38]
  wire [64:0] _x_25_T_1 = {{1{_x_25_T[63]}},_x_25_T}; // @[VCORDIC.scala 241:27]
  wire [63:0] x_25 = _x_25_T_1[63:0]; // @[VCORDIC.scala 241:27]
  wire [39:0] _GEN_47 = xr_6[63:24]; // @[VCORDIC.scala 242:38]
  wire [63:0] _y_25_T = {{24{_GEN_47[39]}},_GEN_47}; // @[VCORDIC.scala 242:38]
  wire [63:0] y_25 = 64'sh0 - $signed(_y_25_T); // @[VCORDIC.scala 242:27]
  wire [38:0] _GEN_48 = y_25[63:25]; // @[VCORDIC.scala 254:37]
  wire [63:0] _x_26_T = {{25{_GEN_48[38]}},_GEN_48}; // @[VCORDIC.scala 254:37]
  wire [63:0] x_26 = $signed(x_25) + $signed(_x_26_T); // @[VCORDIC.scala 254:26]
  wire [38:0] _GEN_49 = x_25[63:25]; // @[VCORDIC.scala 255:37]
  wire [63:0] _y_26_T = {{25{_GEN_49[38]}},_GEN_49}; // @[VCORDIC.scala 255:37]
  wire [63:0] y_26 = $signed(y_25) - $signed(_y_26_T); // @[VCORDIC.scala 255:26]
  wire [37:0] _GEN_50 = y_26[63:26]; // @[VCORDIC.scala 254:37]
  wire [63:0] _x_27_T = {{26{_GEN_50[37]}},_GEN_50}; // @[VCORDIC.scala 254:37]
  wire [63:0] x_27 = $signed(x_26) + $signed(_x_27_T); // @[VCORDIC.scala 254:26]
  wire [37:0] _GEN_51 = x_26[63:26]; // @[VCORDIC.scala 255:37]
  wire [63:0] _y_27_T = {{26{_GEN_51[37]}},_GEN_51}; // @[VCORDIC.scala 255:37]
  wire [63:0] y_27 = $signed(y_26) - $signed(_y_27_T); // @[VCORDIC.scala 255:26]
  wire [36:0] _GEN_52 = y_27[63:27]; // @[VCORDIC.scala 268:37]
  wire [63:0] _x_28_T = {{27{_GEN_52[36]}},_GEN_52}; // @[VCORDIC.scala 268:37]
  wire [63:0] x_28 = $signed(x_27) + $signed(_x_28_T); // @[VCORDIC.scala 268:26]
  wire [36:0] _GEN_53 = x_27[63:27]; // @[VCORDIC.scala 269:37]
  wire [63:0] _y_28_T = {{27{_GEN_53[36]}},_GEN_53}; // @[VCORDIC.scala 269:37]
  wire [63:0] y_28 = $signed(y_27) - $signed(_y_28_T); // @[VCORDIC.scala 269:26]
  wire [35:0] _GEN_54 = yr_7[63:28]; // @[VCORDIC.scala 241:38]
  wire [63:0] _x_29_T = {{28{_GEN_54[35]}},_GEN_54}; // @[VCORDIC.scala 241:38]
  wire [64:0] _x_29_T_1 = {{1{_x_29_T[63]}},_x_29_T}; // @[VCORDIC.scala 241:27]
  wire [63:0] x_29 = _x_29_T_1[63:0]; // @[VCORDIC.scala 241:27]
  wire [35:0] _GEN_55 = xr_7[63:28]; // @[VCORDIC.scala 242:38]
  wire [63:0] _y_29_T = {{28{_GEN_55[35]}},_GEN_55}; // @[VCORDIC.scala 242:38]
  wire [63:0] y_29 = 64'sh0 - $signed(_y_29_T); // @[VCORDIC.scala 242:27]
  wire [34:0] _GEN_56 = y_29[63:29]; // @[VCORDIC.scala 254:37]
  wire [63:0] _x_30_T = {{29{_GEN_56[34]}},_GEN_56}; // @[VCORDIC.scala 254:37]
  wire [63:0] x_30 = $signed(x_29) + $signed(_x_30_T); // @[VCORDIC.scala 254:26]
  wire [34:0] _GEN_57 = x_29[63:29]; // @[VCORDIC.scala 255:37]
  wire [63:0] _y_30_T = {{29{_GEN_57[34]}},_GEN_57}; // @[VCORDIC.scala 255:37]
  wire [63:0] y_30 = $signed(y_29) - $signed(_y_30_T); // @[VCORDIC.scala 255:26]
  wire [33:0] _GEN_58 = y_30[63:30]; // @[VCORDIC.scala 254:37]
  wire [63:0] _x_31_T = {{30{_GEN_58[33]}},_GEN_58}; // @[VCORDIC.scala 254:37]
  wire [63:0] x_31 = $signed(x_30) + $signed(_x_31_T); // @[VCORDIC.scala 254:26]
  wire [33:0] _GEN_59 = x_30[63:30]; // @[VCORDIC.scala 255:37]
  wire [63:0] _y_31_T = {{30{_GEN_59[33]}},_GEN_59}; // @[VCORDIC.scala 255:37]
  wire [63:0] y_31 = $signed(y_30) - $signed(_y_31_T); // @[VCORDIC.scala 255:26]
  wire [32:0] _GEN_60 = y_31[63:31]; // @[VCORDIC.scala 268:37]
  wire [63:0] _x_32_T = {{31{_GEN_60[32]}},_GEN_60}; // @[VCORDIC.scala 268:37]
  wire [63:0] x_32 = $signed(x_31) + $signed(_x_32_T); // @[VCORDIC.scala 268:26]
  wire [32:0] _GEN_61 = x_31[63:31]; // @[VCORDIC.scala 269:37]
  wire [63:0] _y_32_T = {{31{_GEN_61[32]}},_GEN_61}; // @[VCORDIC.scala 269:37]
  wire [63:0] y_32 = $signed(y_31) - $signed(_y_32_T); // @[VCORDIC.scala 269:26]
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
  Fixed64ToFloat32 tofloatxout ( // @[VCORDIC.scala 285:29]
    .io_in(tofloatxout_io_in),
    .io_out(tofloatxout_io_out)
  );
  Fixed64ToFloat32 tofloatyout ( // @[VCORDIC.scala 286:29]
    .io_in(tofloatyout_io_in),
    .io_out(tofloatyout_io_out)
  );
  Fixed64ToFloat32 tofloatzout ( // @[VCORDIC.scala 287:29]
    .io_in(tofloatzout_io_in),
    .io_out(tofloatzout_io_out)
  );
  assign io_out_z = tofloatzout_io_out; // @[VCORDIC.scala 297:14]
  assign tofixedx0_io_in = 32'h3f800000; // @[VCORDIC.scala 111:19]
  assign tofixedy0_io_in = io_in_y0; // @[VCORDIC.scala 112:19]
  assign tofixedz0_io_in = 32'h0; // @[VCORDIC.scala 113:19]
  assign tofloatxout_io_in = xr_8; // @[VCORDIC.scala 290:34]
  assign tofloatyout_io_in = yr_8; // @[VCORDIC.scala 291:34]
  assign tofloatzout_io_in = zr_8; // @[VCORDIC.scala 292:34]
  always @(posedge clock) begin
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_0 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_0 <= tofixedx0_io_out; // @[VCORDIC.scala 134:9]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_1 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_1 <= x_4; // @[VCORDIC.scala 276:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_2 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_2 <= x_8; // @[VCORDIC.scala 276:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_3 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_3 <= x_12; // @[VCORDIC.scala 276:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_4 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_4 <= x_16; // @[VCORDIC.scala 276:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_5 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_5 <= x_20; // @[VCORDIC.scala 276:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_6 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_6 <= x_24; // @[VCORDIC.scala 276:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_7 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_7 <= x_28; // @[VCORDIC.scala 276:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_8 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_8 <= x_32; // @[VCORDIC.scala 276:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_0 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_0 <= tofixedy0_io_out; // @[VCORDIC.scala 135:9]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_1 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_1 <= y_4; // @[VCORDIC.scala 277:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_2 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_2 <= y_8; // @[VCORDIC.scala 277:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_3 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_3 <= y_12; // @[VCORDIC.scala 277:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_4 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_4 <= y_16; // @[VCORDIC.scala 277:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_5 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_5 <= y_20; // @[VCORDIC.scala 277:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_6 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_6 <= y_24; // @[VCORDIC.scala 277:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_7 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_7 <= y_28; // @[VCORDIC.scala 277:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_8 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_8 <= y_32; // @[VCORDIC.scala 277:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_8 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_8 <= 64'sh3243f6c1c; // @[VCORDIC.scala 275:17]
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
  xr_2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  xr_3 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  xr_4 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  xr_5 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  xr_6 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  xr_7 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  xr_8 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  yr_0 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  yr_1 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  yr_2 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  yr_3 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  yr_4 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  yr_5 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  yr_6 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  yr_7 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  yr_8 = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  zr_8 = _RAND_18[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
