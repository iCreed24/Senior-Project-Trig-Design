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
`endif // RANDOMIZE_REG_INIT
  wire [31:0] tofixedx0_io_in; // @[CORDIC.scala 64:25]
  wire [31:0] tofixedx0_io_out; // @[CORDIC.scala 64:25]
  wire [31:0] tofixedy0_io_in; // @[CORDIC.scala 65:25]
  wire [31:0] tofixedy0_io_out; // @[CORDIC.scala 65:25]
  wire [31:0] tofloatxout_io_in; // @[CORDIC.scala 144:27]
  wire [31:0] tofloatxout_io_out; // @[CORDIC.scala 144:27]
  wire [31:0] tofloatyout_io_in; // @[CORDIC.scala 145:27]
  wire [31:0] tofloatyout_io_out; // @[CORDIC.scala 145:27]
  wire [31:0] tofloatzout_io_in; // @[CORDIC.scala 146:27]
  wire [31:0] tofloatzout_io_out; // @[CORDIC.scala 146:27]
  reg [31:0] xr_0; // @[CORDIC.scala 79:19]
  reg [31:0] xr_1; // @[CORDIC.scala 79:19]
  reg [31:0] xr_2; // @[CORDIC.scala 79:19]
  reg [31:0] xr_3; // @[CORDIC.scala 79:19]
  reg [31:0] xr_4; // @[CORDIC.scala 79:19]
  reg [31:0] xr_5; // @[CORDIC.scala 79:19]
  reg [31:0] xr_6; // @[CORDIC.scala 79:19]
  reg [31:0] xr_7; // @[CORDIC.scala 79:19]
  reg [31:0] yr_0; // @[CORDIC.scala 80:19]
  reg [31:0] yr_1; // @[CORDIC.scala 80:19]
  reg [31:0] yr_2; // @[CORDIC.scala 80:19]
  reg [31:0] yr_3; // @[CORDIC.scala 80:19]
  reg [31:0] yr_4; // @[CORDIC.scala 80:19]
  reg [31:0] yr_5; // @[CORDIC.scala 80:19]
  reg [31:0] yr_6; // @[CORDIC.scala 80:19]
  reg [31:0] yr_7; // @[CORDIC.scala 80:19]
  reg [31:0] thetar_1; // @[CORDIC.scala 81:23]
  reg [31:0] thetar_2; // @[CORDIC.scala 81:23]
  reg [31:0] thetar_3; // @[CORDIC.scala 81:23]
  reg [31:0] thetar_4; // @[CORDIC.scala 81:23]
  reg [31:0] thetar_5; // @[CORDIC.scala 81:23]
  reg [31:0] thetar_6; // @[CORDIC.scala 81:23]
  reg [31:0] z0sr_0; // @[CORDIC.scala 82:21]
  reg [31:0] z0sr_1; // @[CORDIC.scala 82:21]
  reg [31:0] z0sr_2; // @[CORDIC.scala 82:21]
  reg [31:0] z0sr_3; // @[CORDIC.scala 82:21]
  reg [31:0] z0sr_4; // @[CORDIC.scala 82:21]
  reg [31:0] z0sr_5; // @[CORDIC.scala 82:21]
  reg [31:0] z0sr_6; // @[CORDIC.scala 82:21]
  reg [31:0] z0sr_7; // @[CORDIC.scala 82:21]
  reg [1:0] modesr_0; // @[CORDIC.scala 83:23]
  reg [1:0] modesr_1; // @[CORDIC.scala 83:23]
  reg [1:0] modesr_2; // @[CORDIC.scala 83:23]
  reg [1:0] modesr_3; // @[CORDIC.scala 83:23]
  reg [1:0] modesr_4; // @[CORDIC.scala 83:23]
  reg [1:0] modesr_5; // @[CORDIC.scala 83:23]
  reg [1:0] modesr_6; // @[CORDIC.scala 83:23]
  reg [1:0] modesr_7; // @[CORDIC.scala 83:23]
  wire  _fxxterm_T = 32'sh0 > $signed(z0sr_0); // @[CORDIC.scala 111:42]
  wire [31:0] _fxxterm_T_3 = 32'sh0 - $signed(xr_0); // @[CORDIC.scala 111:56]
  wire [31:0] fxxterm = 32'sh0 > $signed(z0sr_0) ? $signed(_fxxterm_T_3) : $signed(xr_0); // @[CORDIC.scala 111:28]
  wire [31:0] _fxyterm_T_3 = 32'sh0 - $signed(yr_0); // @[CORDIC.scala 112:56]
  wire [31:0] fxyterm = _fxxterm_T ? $signed(_fxyterm_T_3) : $signed(yr_0); // @[CORDIC.scala 112:28]
  wire [31:0] _fxthetaterm_T_2 = 32'h0 - 32'hc90fdb0; // @[CORDIC.scala 113:60]
  wire [31:0] _theta_1_T = _fxxterm_T ? _fxthetaterm_T_2 : 32'hc90fdb0; // @[CORDIC.scala 115:54]
  wire [32:0] _theta_1_T_1 = {{1{_theta_1_T[31]}},_theta_1_T}; // @[CORDIC.scala 115:40]
  wire [31:0] theta_1 = _theta_1_T_1[31:0]; // @[CORDIC.scala 115:40]
  wire [31:0] x_1 = $signed(xr_0) - $signed(fxyterm); // @[CORDIC.scala 116:32]
  wire [31:0] y_1 = $signed(fxxterm) + $signed(yr_0); // @[CORDIC.scala 117:56]
  wire  _fxxterm_T_4 = $signed(theta_1) > $signed(z0sr_0); // @[CORDIC.scala 123:40]
  wire [31:0] _fxxterm_T_7 = 32'sh0 - $signed(x_1); // @[CORDIC.scala 123:54]
  wire [31:0] fxxterm_1 = $signed(theta_1) > $signed(z0sr_0) ? $signed(_fxxterm_T_7) : $signed(x_1); // @[CORDIC.scala 123:26]
  wire [31:0] _fxyterm_T_7 = 32'sh0 - $signed(y_1); // @[CORDIC.scala 124:54]
  wire [31:0] fxyterm_1 = _fxxterm_T_4 ? $signed(_fxyterm_T_7) : $signed(y_1); // @[CORDIC.scala 124:26]
  wire [31:0] _fxthetaterm_T_5 = 32'h0 - 32'h76b19c0; // @[CORDIC.scala 125:58]
  wire [31:0] _theta_2_T = _fxxterm_T_4 ? _fxthetaterm_T_5 : 32'h76b19c0; // @[CORDIC.scala 127:52]
  wire [31:0] theta_2 = $signed(theta_1) + $signed(_theta_2_T); // @[CORDIC.scala 127:38]
  wire [30:0] _GEN_0 = fxyterm_1[31:1]; // @[CORDIC.scala 128:41]
  wire [31:0] _x_2_T = {{1{_GEN_0[30]}},_GEN_0}; // @[CORDIC.scala 128:41]
  wire [31:0] x_2 = $signed(x_1) - $signed(_x_2_T); // @[CORDIC.scala 128:30]
  wire [30:0] _GEN_1 = fxxterm_1[31:1]; // @[CORDIC.scala 129:30]
  wire [31:0] _y_2_T = {{1{_GEN_1[30]}},_GEN_1}; // @[CORDIC.scala 129:30]
  wire [31:0] y_2 = $signed(_y_2_T) + $signed(y_1); // @[CORDIC.scala 129:54]
  wire  _fxxterm_T_8 = $signed(theta_2) > $signed(z0sr_0); // @[CORDIC.scala 123:40]
  wire [31:0] _fxxterm_T_11 = 32'sh0 - $signed(x_2); // @[CORDIC.scala 123:54]
  wire [31:0] fxxterm_2 = $signed(theta_2) > $signed(z0sr_0) ? $signed(_fxxterm_T_11) : $signed(x_2); // @[CORDIC.scala 123:26]
  wire [31:0] _fxyterm_T_11 = 32'sh0 - $signed(y_2); // @[CORDIC.scala 124:54]
  wire [31:0] fxyterm_2 = _fxxterm_T_8 ? $signed(_fxyterm_T_11) : $signed(y_2); // @[CORDIC.scala 124:26]
  wire [31:0] _fxthetaterm_T_8 = 32'h0 - 32'h3eb6ec0; // @[CORDIC.scala 125:58]
  wire [31:0] _theta_3_T = _fxxterm_T_8 ? _fxthetaterm_T_8 : 32'h3eb6ec0; // @[CORDIC.scala 127:52]
  wire [31:0] theta_3 = $signed(theta_2) + $signed(_theta_3_T); // @[CORDIC.scala 127:38]
  wire [29:0] _GEN_2 = fxyterm_2[31:2]; // @[CORDIC.scala 128:41]
  wire [31:0] _x_3_T = {{2{_GEN_2[29]}},_GEN_2}; // @[CORDIC.scala 128:41]
  wire [31:0] x_3 = $signed(x_2) - $signed(_x_3_T); // @[CORDIC.scala 128:30]
  wire [29:0] _GEN_3 = fxxterm_2[31:2]; // @[CORDIC.scala 129:30]
  wire [31:0] _y_3_T = {{2{_GEN_3[29]}},_GEN_3}; // @[CORDIC.scala 129:30]
  wire [31:0] y_3 = $signed(_y_3_T) + $signed(y_2); // @[CORDIC.scala 129:54]
  wire  _fxxterm_T_12 = $signed(theta_3) > $signed(z0sr_0); // @[CORDIC.scala 123:40]
  wire [31:0] _fxxterm_T_15 = 32'sh0 - $signed(x_3); // @[CORDIC.scala 123:54]
  wire [31:0] fxxterm_3 = $signed(theta_3) > $signed(z0sr_0) ? $signed(_fxxterm_T_15) : $signed(x_3); // @[CORDIC.scala 123:26]
  wire [31:0] _fxyterm_T_15 = 32'sh0 - $signed(y_3); // @[CORDIC.scala 124:54]
  wire [31:0] fxyterm_3 = _fxxterm_T_12 ? $signed(_fxyterm_T_15) : $signed(y_3); // @[CORDIC.scala 124:26]
  wire [31:0] _fxthetaterm_T_11 = 32'h0 - 32'h1fd5baa; // @[CORDIC.scala 125:58]
  wire [31:0] _theta_4_T = _fxxterm_T_12 ? _fxthetaterm_T_11 : 32'h1fd5baa; // @[CORDIC.scala 127:52]
  wire [31:0] theta_4 = $signed(theta_3) + $signed(_theta_4_T); // @[CORDIC.scala 127:38]
  wire [28:0] _GEN_4 = fxyterm_3[31:3]; // @[CORDIC.scala 128:41]
  wire [31:0] _x_4_T = {{3{_GEN_4[28]}},_GEN_4}; // @[CORDIC.scala 128:41]
  wire [31:0] x_4 = $signed(x_3) - $signed(_x_4_T); // @[CORDIC.scala 128:30]
  wire [28:0] _GEN_5 = fxxterm_3[31:3]; // @[CORDIC.scala 129:30]
  wire [31:0] _y_4_T = {{3{_GEN_5[28]}},_GEN_5}; // @[CORDIC.scala 129:30]
  wire [31:0] y_4 = $signed(_y_4_T) + $signed(y_3); // @[CORDIC.scala 129:54]
  wire  _fxxterm_T_16 = $signed(thetar_1) > $signed(z0sr_1); // @[CORDIC.scala 111:42]
  wire [31:0] _fxxterm_T_19 = 32'sh0 - $signed(xr_1); // @[CORDIC.scala 111:56]
  wire [31:0] fxxterm_4 = $signed(thetar_1) > $signed(z0sr_1) ? $signed(_fxxterm_T_19) : $signed(xr_1); // @[CORDIC.scala 111:28]
  wire [31:0] _fxyterm_T_19 = 32'sh0 - $signed(yr_1); // @[CORDIC.scala 112:56]
  wire [31:0] fxyterm_4 = _fxxterm_T_16 ? $signed(_fxyterm_T_19) : $signed(yr_1); // @[CORDIC.scala 112:28]
  wire [31:0] _fxthetaterm_T_14 = 32'h0 - 32'hffaade; // @[CORDIC.scala 113:60]
  wire [31:0] _theta_5_T = _fxxterm_T_16 ? _fxthetaterm_T_14 : 32'hffaade; // @[CORDIC.scala 115:54]
  wire [31:0] theta_5 = $signed(thetar_1) + $signed(_theta_5_T); // @[CORDIC.scala 115:40]
  wire [27:0] _GEN_6 = fxyterm_4[31:4]; // @[CORDIC.scala 116:43]
  wire [31:0] _x_5_T = {{4{_GEN_6[27]}},_GEN_6}; // @[CORDIC.scala 116:43]
  wire [31:0] x_5 = $signed(xr_1) - $signed(_x_5_T); // @[CORDIC.scala 116:32]
  wire [27:0] _GEN_7 = fxxterm_4[31:4]; // @[CORDIC.scala 117:32]
  wire [31:0] _y_5_T = {{4{_GEN_7[27]}},_GEN_7}; // @[CORDIC.scala 117:32]
  wire [31:0] y_5 = $signed(_y_5_T) + $signed(yr_1); // @[CORDIC.scala 117:56]
  wire  _fxxterm_T_20 = $signed(theta_5) > $signed(z0sr_1); // @[CORDIC.scala 123:40]
  wire [31:0] _fxxterm_T_23 = 32'sh0 - $signed(x_5); // @[CORDIC.scala 123:54]
  wire [31:0] fxxterm_5 = $signed(theta_5) > $signed(z0sr_1) ? $signed(_fxxterm_T_23) : $signed(x_5); // @[CORDIC.scala 123:26]
  wire [31:0] _fxyterm_T_23 = 32'sh0 - $signed(y_5); // @[CORDIC.scala 124:54]
  wire [31:0] fxyterm_5 = _fxxterm_T_20 ? $signed(_fxyterm_T_23) : $signed(y_5); // @[CORDIC.scala 124:26]
  wire [31:0] _fxthetaterm_T_17 = 32'h0 - 32'h7ff557; // @[CORDIC.scala 125:58]
  wire [31:0] _theta_6_T = _fxxterm_T_20 ? _fxthetaterm_T_17 : 32'h7ff557; // @[CORDIC.scala 127:52]
  wire [31:0] theta_6 = $signed(theta_5) + $signed(_theta_6_T); // @[CORDIC.scala 127:38]
  wire [26:0] _GEN_8 = fxyterm_5[31:5]; // @[CORDIC.scala 128:41]
  wire [31:0] _x_6_T = {{5{_GEN_8[26]}},_GEN_8}; // @[CORDIC.scala 128:41]
  wire [31:0] x_6 = $signed(x_5) - $signed(_x_6_T); // @[CORDIC.scala 128:30]
  wire [26:0] _GEN_9 = fxxterm_5[31:5]; // @[CORDIC.scala 129:30]
  wire [31:0] _y_6_T = {{5{_GEN_9[26]}},_GEN_9}; // @[CORDIC.scala 129:30]
  wire [31:0] y_6 = $signed(_y_6_T) + $signed(y_5); // @[CORDIC.scala 129:54]
  wire  _fxxterm_T_24 = $signed(theta_6) > $signed(z0sr_1); // @[CORDIC.scala 123:40]
  wire [31:0] _fxxterm_T_27 = 32'sh0 - $signed(x_6); // @[CORDIC.scala 123:54]
  wire [31:0] fxxterm_6 = $signed(theta_6) > $signed(z0sr_1) ? $signed(_fxxterm_T_27) : $signed(x_6); // @[CORDIC.scala 123:26]
  wire [31:0] _fxyterm_T_27 = 32'sh0 - $signed(y_6); // @[CORDIC.scala 124:54]
  wire [31:0] fxyterm_6 = _fxxterm_T_24 ? $signed(_fxyterm_T_27) : $signed(y_6); // @[CORDIC.scala 124:26]
  wire [31:0] _fxthetaterm_T_20 = 32'h0 - 32'h3ffeaa; // @[CORDIC.scala 125:58]
  wire [31:0] _theta_7_T = _fxxterm_T_24 ? _fxthetaterm_T_20 : 32'h3ffeaa; // @[CORDIC.scala 127:52]
  wire [31:0] theta_7 = $signed(theta_6) + $signed(_theta_7_T); // @[CORDIC.scala 127:38]
  wire [25:0] _GEN_10 = fxyterm_6[31:6]; // @[CORDIC.scala 128:41]
  wire [31:0] _x_7_T = {{6{_GEN_10[25]}},_GEN_10}; // @[CORDIC.scala 128:41]
  wire [31:0] x_7 = $signed(x_6) - $signed(_x_7_T); // @[CORDIC.scala 128:30]
  wire [25:0] _GEN_11 = fxxterm_6[31:6]; // @[CORDIC.scala 129:30]
  wire [31:0] _y_7_T = {{6{_GEN_11[25]}},_GEN_11}; // @[CORDIC.scala 129:30]
  wire [31:0] y_7 = $signed(_y_7_T) + $signed(y_6); // @[CORDIC.scala 129:54]
  wire  _fxxterm_T_28 = $signed(theta_7) > $signed(z0sr_1); // @[CORDIC.scala 123:40]
  wire [31:0] _fxxterm_T_31 = 32'sh0 - $signed(x_7); // @[CORDIC.scala 123:54]
  wire [31:0] fxxterm_7 = $signed(theta_7) > $signed(z0sr_1) ? $signed(_fxxterm_T_31) : $signed(x_7); // @[CORDIC.scala 123:26]
  wire [31:0] _fxyterm_T_31 = 32'sh0 - $signed(y_7); // @[CORDIC.scala 124:54]
  wire [31:0] fxyterm_7 = _fxxterm_T_28 ? $signed(_fxyterm_T_31) : $signed(y_7); // @[CORDIC.scala 124:26]
  wire [31:0] _fxthetaterm_T_23 = 32'h0 - 32'h1fffd5; // @[CORDIC.scala 125:58]
  wire [31:0] _theta_8_T = _fxxterm_T_28 ? _fxthetaterm_T_23 : 32'h1fffd5; // @[CORDIC.scala 127:52]
  wire [31:0] theta_8 = $signed(theta_7) + $signed(_theta_8_T); // @[CORDIC.scala 127:38]
  wire [24:0] _GEN_12 = fxyterm_7[31:7]; // @[CORDIC.scala 128:41]
  wire [31:0] _x_8_T = {{7{_GEN_12[24]}},_GEN_12}; // @[CORDIC.scala 128:41]
  wire [31:0] x_8 = $signed(x_7) - $signed(_x_8_T); // @[CORDIC.scala 128:30]
  wire [24:0] _GEN_13 = fxxterm_7[31:7]; // @[CORDIC.scala 129:30]
  wire [31:0] _y_8_T = {{7{_GEN_13[24]}},_GEN_13}; // @[CORDIC.scala 129:30]
  wire [31:0] y_8 = $signed(_y_8_T) + $signed(y_7); // @[CORDIC.scala 129:54]
  wire  _fxxterm_T_32 = $signed(thetar_2) > $signed(z0sr_2); // @[CORDIC.scala 111:42]
  wire [31:0] _fxxterm_T_35 = 32'sh0 - $signed(xr_2); // @[CORDIC.scala 111:56]
  wire [31:0] fxxterm_8 = $signed(thetar_2) > $signed(z0sr_2) ? $signed(_fxxterm_T_35) : $signed(xr_2); // @[CORDIC.scala 111:28]
  wire [31:0] _fxyterm_T_35 = 32'sh0 - $signed(yr_2); // @[CORDIC.scala 112:56]
  wire [31:0] fxyterm_8 = _fxxterm_T_32 ? $signed(_fxyterm_T_35) : $signed(yr_2); // @[CORDIC.scala 112:28]
  wire [31:0] _fxthetaterm_T_26 = 32'h0 - 32'hffffa; // @[CORDIC.scala 113:60]
  wire [31:0] _theta_9_T = _fxxterm_T_32 ? _fxthetaterm_T_26 : 32'hffffa; // @[CORDIC.scala 115:54]
  wire [31:0] theta_9 = $signed(thetar_2) + $signed(_theta_9_T); // @[CORDIC.scala 115:40]
  wire [23:0] _GEN_14 = fxyterm_8[31:8]; // @[CORDIC.scala 116:43]
  wire [31:0] _x_9_T = {{8{_GEN_14[23]}},_GEN_14}; // @[CORDIC.scala 116:43]
  wire [31:0] x_9 = $signed(xr_2) - $signed(_x_9_T); // @[CORDIC.scala 116:32]
  wire [23:0] _GEN_15 = fxxterm_8[31:8]; // @[CORDIC.scala 117:32]
  wire [31:0] _y_9_T = {{8{_GEN_15[23]}},_GEN_15}; // @[CORDIC.scala 117:32]
  wire [31:0] y_9 = $signed(_y_9_T) + $signed(yr_2); // @[CORDIC.scala 117:56]
  wire  _fxxterm_T_36 = $signed(theta_9) > $signed(z0sr_2); // @[CORDIC.scala 123:40]
  wire [31:0] _fxxterm_T_39 = 32'sh0 - $signed(x_9); // @[CORDIC.scala 123:54]
  wire [31:0] fxxterm_9 = $signed(theta_9) > $signed(z0sr_2) ? $signed(_fxxterm_T_39) : $signed(x_9); // @[CORDIC.scala 123:26]
  wire [31:0] _fxyterm_T_39 = 32'sh0 - $signed(y_9); // @[CORDIC.scala 124:54]
  wire [31:0] fxyterm_9 = _fxxterm_T_36 ? $signed(_fxyterm_T_39) : $signed(y_9); // @[CORDIC.scala 124:26]
  wire [31:0] _fxthetaterm_T_29 = 32'h0 - 32'h7ffff; // @[CORDIC.scala 125:58]
  wire [31:0] _theta_10_T = _fxxterm_T_36 ? _fxthetaterm_T_29 : 32'h7ffff; // @[CORDIC.scala 127:52]
  wire [31:0] theta_10 = $signed(theta_9) + $signed(_theta_10_T); // @[CORDIC.scala 127:38]
  wire [22:0] _GEN_16 = fxyterm_9[31:9]; // @[CORDIC.scala 128:41]
  wire [31:0] _x_10_T = {{9{_GEN_16[22]}},_GEN_16}; // @[CORDIC.scala 128:41]
  wire [31:0] x_10 = $signed(x_9) - $signed(_x_10_T); // @[CORDIC.scala 128:30]
  wire [22:0] _GEN_17 = fxxterm_9[31:9]; // @[CORDIC.scala 129:30]
  wire [31:0] _y_10_T = {{9{_GEN_17[22]}},_GEN_17}; // @[CORDIC.scala 129:30]
  wire [31:0] y_10 = $signed(_y_10_T) + $signed(y_9); // @[CORDIC.scala 129:54]
  wire  _fxxterm_T_40 = $signed(theta_10) > $signed(z0sr_2); // @[CORDIC.scala 123:40]
  wire [31:0] _fxxterm_T_43 = 32'sh0 - $signed(x_10); // @[CORDIC.scala 123:54]
  wire [31:0] fxxterm_10 = $signed(theta_10) > $signed(z0sr_2) ? $signed(_fxxterm_T_43) : $signed(x_10); // @[CORDIC.scala 123:26]
  wire [31:0] _fxyterm_T_43 = 32'sh0 - $signed(y_10); // @[CORDIC.scala 124:54]
  wire [31:0] fxyterm_10 = _fxxterm_T_40 ? $signed(_fxyterm_T_43) : $signed(y_10); // @[CORDIC.scala 124:26]
  wire [31:0] _fxthetaterm_T_32 = 32'h0 - 32'h3ffff; // @[CORDIC.scala 125:58]
  wire [31:0] _theta_11_T = _fxxterm_T_40 ? _fxthetaterm_T_32 : 32'h3ffff; // @[CORDIC.scala 127:52]
  wire [31:0] theta_11 = $signed(theta_10) + $signed(_theta_11_T); // @[CORDIC.scala 127:38]
  wire [21:0] _GEN_18 = fxyterm_10[31:10]; // @[CORDIC.scala 128:41]
  wire [31:0] _x_11_T = {{10{_GEN_18[21]}},_GEN_18}; // @[CORDIC.scala 128:41]
  wire [31:0] x_11 = $signed(x_10) - $signed(_x_11_T); // @[CORDIC.scala 128:30]
  wire [21:0] _GEN_19 = fxxterm_10[31:10]; // @[CORDIC.scala 129:30]
  wire [31:0] _y_11_T = {{10{_GEN_19[21]}},_GEN_19}; // @[CORDIC.scala 129:30]
  wire [31:0] y_11 = $signed(_y_11_T) + $signed(y_10); // @[CORDIC.scala 129:54]
  wire  _fxxterm_T_44 = $signed(theta_11) > $signed(z0sr_2); // @[CORDIC.scala 123:40]
  wire [31:0] _fxxterm_T_47 = 32'sh0 - $signed(x_11); // @[CORDIC.scala 123:54]
  wire [31:0] fxxterm_11 = $signed(theta_11) > $signed(z0sr_2) ? $signed(_fxxterm_T_47) : $signed(x_11); // @[CORDIC.scala 123:26]
  wire [31:0] _fxyterm_T_47 = 32'sh0 - $signed(y_11); // @[CORDIC.scala 124:54]
  wire [31:0] fxyterm_11 = _fxxterm_T_44 ? $signed(_fxyterm_T_47) : $signed(y_11); // @[CORDIC.scala 124:26]
  wire [31:0] _fxthetaterm_T_35 = 32'h0 - 32'h1ffff; // @[CORDIC.scala 125:58]
  wire [31:0] _theta_12_T = _fxxterm_T_44 ? _fxthetaterm_T_35 : 32'h1ffff; // @[CORDIC.scala 127:52]
  wire [31:0] theta_12 = $signed(theta_11) + $signed(_theta_12_T); // @[CORDIC.scala 127:38]
  wire [20:0] _GEN_20 = fxyterm_11[31:11]; // @[CORDIC.scala 128:41]
  wire [31:0] _x_12_T = {{11{_GEN_20[20]}},_GEN_20}; // @[CORDIC.scala 128:41]
  wire [31:0] x_12 = $signed(x_11) - $signed(_x_12_T); // @[CORDIC.scala 128:30]
  wire [20:0] _GEN_21 = fxxterm_11[31:11]; // @[CORDIC.scala 129:30]
  wire [31:0] _y_12_T = {{11{_GEN_21[20]}},_GEN_21}; // @[CORDIC.scala 129:30]
  wire [31:0] y_12 = $signed(_y_12_T) + $signed(y_11); // @[CORDIC.scala 129:54]
  wire  _fxxterm_T_48 = $signed(thetar_3) > $signed(z0sr_3); // @[CORDIC.scala 111:42]
  wire [31:0] _fxxterm_T_51 = 32'sh0 - $signed(xr_3); // @[CORDIC.scala 111:56]
  wire [31:0] fxxterm_12 = $signed(thetar_3) > $signed(z0sr_3) ? $signed(_fxxterm_T_51) : $signed(xr_3); // @[CORDIC.scala 111:28]
  wire [31:0] _fxyterm_T_51 = 32'sh0 - $signed(yr_3); // @[CORDIC.scala 112:56]
  wire [31:0] fxyterm_12 = _fxxterm_T_48 ? $signed(_fxyterm_T_51) : $signed(yr_3); // @[CORDIC.scala 112:28]
  wire [31:0] _fxthetaterm_T_38 = 32'h0 - 32'h10000; // @[CORDIC.scala 113:60]
  wire [31:0] _theta_13_T = _fxxterm_T_48 ? _fxthetaterm_T_38 : 32'h10000; // @[CORDIC.scala 115:54]
  wire [31:0] theta_13 = $signed(thetar_3) + $signed(_theta_13_T); // @[CORDIC.scala 115:40]
  wire [19:0] _GEN_22 = fxyterm_12[31:12]; // @[CORDIC.scala 116:43]
  wire [31:0] _x_13_T = {{12{_GEN_22[19]}},_GEN_22}; // @[CORDIC.scala 116:43]
  wire [31:0] x_13 = $signed(xr_3) - $signed(_x_13_T); // @[CORDIC.scala 116:32]
  wire [19:0] _GEN_23 = fxxterm_12[31:12]; // @[CORDIC.scala 117:32]
  wire [31:0] _y_13_T = {{12{_GEN_23[19]}},_GEN_23}; // @[CORDIC.scala 117:32]
  wire [31:0] y_13 = $signed(_y_13_T) + $signed(yr_3); // @[CORDIC.scala 117:56]
  wire  _fxxterm_T_52 = $signed(theta_13) > $signed(z0sr_3); // @[CORDIC.scala 123:40]
  wire [31:0] _fxxterm_T_55 = 32'sh0 - $signed(x_13); // @[CORDIC.scala 123:54]
  wire [31:0] fxxterm_13 = $signed(theta_13) > $signed(z0sr_3) ? $signed(_fxxterm_T_55) : $signed(x_13); // @[CORDIC.scala 123:26]
  wire [31:0] _fxyterm_T_55 = 32'sh0 - $signed(y_13); // @[CORDIC.scala 124:54]
  wire [31:0] fxyterm_13 = _fxxterm_T_52 ? $signed(_fxyterm_T_55) : $signed(y_13); // @[CORDIC.scala 124:26]
  wire [31:0] _fxthetaterm_T_41 = 32'h0 - 32'h8000; // @[CORDIC.scala 125:58]
  wire [31:0] _theta_14_T = _fxxterm_T_52 ? _fxthetaterm_T_41 : 32'h8000; // @[CORDIC.scala 127:52]
  wire [31:0] theta_14 = $signed(theta_13) + $signed(_theta_14_T); // @[CORDIC.scala 127:38]
  wire [18:0] _GEN_24 = fxyterm_13[31:13]; // @[CORDIC.scala 128:41]
  wire [31:0] _x_14_T = {{13{_GEN_24[18]}},_GEN_24}; // @[CORDIC.scala 128:41]
  wire [31:0] x_14 = $signed(x_13) - $signed(_x_14_T); // @[CORDIC.scala 128:30]
  wire [18:0] _GEN_25 = fxxterm_13[31:13]; // @[CORDIC.scala 129:30]
  wire [31:0] _y_14_T = {{13{_GEN_25[18]}},_GEN_25}; // @[CORDIC.scala 129:30]
  wire [31:0] y_14 = $signed(_y_14_T) + $signed(y_13); // @[CORDIC.scala 129:54]
  wire  _fxxterm_T_56 = $signed(theta_14) > $signed(z0sr_3); // @[CORDIC.scala 123:40]
  wire [31:0] _fxxterm_T_59 = 32'sh0 - $signed(x_14); // @[CORDIC.scala 123:54]
  wire [31:0] fxxterm_14 = $signed(theta_14) > $signed(z0sr_3) ? $signed(_fxxterm_T_59) : $signed(x_14); // @[CORDIC.scala 123:26]
  wire [31:0] _fxyterm_T_59 = 32'sh0 - $signed(y_14); // @[CORDIC.scala 124:54]
  wire [31:0] fxyterm_14 = _fxxterm_T_56 ? $signed(_fxyterm_T_59) : $signed(y_14); // @[CORDIC.scala 124:26]
  wire [31:0] _fxthetaterm_T_44 = 32'h0 - 32'h4000; // @[CORDIC.scala 125:58]
  wire [31:0] _theta_15_T = _fxxterm_T_56 ? _fxthetaterm_T_44 : 32'h4000; // @[CORDIC.scala 127:52]
  wire [31:0] theta_15 = $signed(theta_14) + $signed(_theta_15_T); // @[CORDIC.scala 127:38]
  wire [17:0] _GEN_26 = fxyterm_14[31:14]; // @[CORDIC.scala 128:41]
  wire [31:0] _x_15_T = {{14{_GEN_26[17]}},_GEN_26}; // @[CORDIC.scala 128:41]
  wire [31:0] x_15 = $signed(x_14) - $signed(_x_15_T); // @[CORDIC.scala 128:30]
  wire [17:0] _GEN_27 = fxxterm_14[31:14]; // @[CORDIC.scala 129:30]
  wire [31:0] _y_15_T = {{14{_GEN_27[17]}},_GEN_27}; // @[CORDIC.scala 129:30]
  wire [31:0] y_15 = $signed(_y_15_T) + $signed(y_14); // @[CORDIC.scala 129:54]
  wire  _fxxterm_T_60 = $signed(theta_15) > $signed(z0sr_3); // @[CORDIC.scala 123:40]
  wire [31:0] _fxxterm_T_63 = 32'sh0 - $signed(x_15); // @[CORDIC.scala 123:54]
  wire [31:0] fxxterm_15 = $signed(theta_15) > $signed(z0sr_3) ? $signed(_fxxterm_T_63) : $signed(x_15); // @[CORDIC.scala 123:26]
  wire [31:0] _fxyterm_T_63 = 32'sh0 - $signed(y_15); // @[CORDIC.scala 124:54]
  wire [31:0] fxyterm_15 = _fxxterm_T_60 ? $signed(_fxyterm_T_63) : $signed(y_15); // @[CORDIC.scala 124:26]
  wire [31:0] _fxthetaterm_T_47 = 32'h0 - 32'h2000; // @[CORDIC.scala 125:58]
  wire [31:0] _theta_16_T = _fxxterm_T_60 ? _fxthetaterm_T_47 : 32'h2000; // @[CORDIC.scala 127:52]
  wire [31:0] theta_16 = $signed(theta_15) + $signed(_theta_16_T); // @[CORDIC.scala 127:38]
  wire [16:0] _GEN_28 = fxyterm_15[31:15]; // @[CORDIC.scala 128:41]
  wire [31:0] _x_16_T = {{15{_GEN_28[16]}},_GEN_28}; // @[CORDIC.scala 128:41]
  wire [31:0] x_16 = $signed(x_15) - $signed(_x_16_T); // @[CORDIC.scala 128:30]
  wire [16:0] _GEN_29 = fxxterm_15[31:15]; // @[CORDIC.scala 129:30]
  wire [31:0] _y_16_T = {{15{_GEN_29[16]}},_GEN_29}; // @[CORDIC.scala 129:30]
  wire [31:0] y_16 = $signed(_y_16_T) + $signed(y_15); // @[CORDIC.scala 129:54]
  wire  _fxxterm_T_64 = $signed(thetar_4) > $signed(z0sr_4); // @[CORDIC.scala 111:42]
  wire [31:0] _fxxterm_T_67 = 32'sh0 - $signed(xr_4); // @[CORDIC.scala 111:56]
  wire [31:0] fxxterm_16 = $signed(thetar_4) > $signed(z0sr_4) ? $signed(_fxxterm_T_67) : $signed(xr_4); // @[CORDIC.scala 111:28]
  wire [31:0] _fxyterm_T_67 = 32'sh0 - $signed(yr_4); // @[CORDIC.scala 112:56]
  wire [31:0] fxyterm_16 = _fxxterm_T_64 ? $signed(_fxyterm_T_67) : $signed(yr_4); // @[CORDIC.scala 112:28]
  wire [31:0] _fxthetaterm_T_50 = 32'h0 - 32'h1000; // @[CORDIC.scala 113:60]
  wire [31:0] _theta_17_T = _fxxterm_T_64 ? _fxthetaterm_T_50 : 32'h1000; // @[CORDIC.scala 115:54]
  wire [31:0] theta_17 = $signed(thetar_4) + $signed(_theta_17_T); // @[CORDIC.scala 115:40]
  wire [15:0] _GEN_30 = fxyterm_16[31:16]; // @[CORDIC.scala 116:43]
  wire [31:0] _x_17_T = {{16{_GEN_30[15]}},_GEN_30}; // @[CORDIC.scala 116:43]
  wire [31:0] x_17 = $signed(xr_4) - $signed(_x_17_T); // @[CORDIC.scala 116:32]
  wire [15:0] _GEN_31 = fxxterm_16[31:16]; // @[CORDIC.scala 117:32]
  wire [31:0] _y_17_T = {{16{_GEN_31[15]}},_GEN_31}; // @[CORDIC.scala 117:32]
  wire [31:0] y_17 = $signed(_y_17_T) + $signed(yr_4); // @[CORDIC.scala 117:56]
  wire  _fxxterm_T_68 = $signed(theta_17) > $signed(z0sr_4); // @[CORDIC.scala 123:40]
  wire [31:0] _fxxterm_T_71 = 32'sh0 - $signed(x_17); // @[CORDIC.scala 123:54]
  wire [31:0] fxxterm_17 = $signed(theta_17) > $signed(z0sr_4) ? $signed(_fxxterm_T_71) : $signed(x_17); // @[CORDIC.scala 123:26]
  wire [31:0] _fxyterm_T_71 = 32'sh0 - $signed(y_17); // @[CORDIC.scala 124:54]
  wire [31:0] fxyterm_17 = _fxxterm_T_68 ? $signed(_fxyterm_T_71) : $signed(y_17); // @[CORDIC.scala 124:26]
  wire [31:0] _fxthetaterm_T_53 = 32'h0 - 32'h800; // @[CORDIC.scala 125:58]
  wire [31:0] _theta_18_T = _fxxterm_T_68 ? _fxthetaterm_T_53 : 32'h800; // @[CORDIC.scala 127:52]
  wire [31:0] theta_18 = $signed(theta_17) + $signed(_theta_18_T); // @[CORDIC.scala 127:38]
  wire [14:0] _GEN_32 = fxyterm_17[31:17]; // @[CORDIC.scala 128:41]
  wire [31:0] _x_18_T = {{17{_GEN_32[14]}},_GEN_32}; // @[CORDIC.scala 128:41]
  wire [31:0] x_18 = $signed(x_17) - $signed(_x_18_T); // @[CORDIC.scala 128:30]
  wire [14:0] _GEN_33 = fxxterm_17[31:17]; // @[CORDIC.scala 129:30]
  wire [31:0] _y_18_T = {{17{_GEN_33[14]}},_GEN_33}; // @[CORDIC.scala 129:30]
  wire [31:0] y_18 = $signed(_y_18_T) + $signed(y_17); // @[CORDIC.scala 129:54]
  wire  _fxxterm_T_72 = $signed(theta_18) > $signed(z0sr_4); // @[CORDIC.scala 123:40]
  wire [31:0] _fxxterm_T_75 = 32'sh0 - $signed(x_18); // @[CORDIC.scala 123:54]
  wire [31:0] fxxterm_18 = $signed(theta_18) > $signed(z0sr_4) ? $signed(_fxxterm_T_75) : $signed(x_18); // @[CORDIC.scala 123:26]
  wire [31:0] _fxyterm_T_75 = 32'sh0 - $signed(y_18); // @[CORDIC.scala 124:54]
  wire [31:0] fxyterm_18 = _fxxterm_T_72 ? $signed(_fxyterm_T_75) : $signed(y_18); // @[CORDIC.scala 124:26]
  wire [31:0] _fxthetaterm_T_56 = 32'h0 - 32'h400; // @[CORDIC.scala 125:58]
  wire [31:0] _theta_19_T = _fxxterm_T_72 ? _fxthetaterm_T_56 : 32'h400; // @[CORDIC.scala 127:52]
  wire [31:0] theta_19 = $signed(theta_18) + $signed(_theta_19_T); // @[CORDIC.scala 127:38]
  wire [13:0] _GEN_34 = fxyterm_18[31:18]; // @[CORDIC.scala 128:41]
  wire [31:0] _x_19_T = {{18{_GEN_34[13]}},_GEN_34}; // @[CORDIC.scala 128:41]
  wire [31:0] x_19 = $signed(x_18) - $signed(_x_19_T); // @[CORDIC.scala 128:30]
  wire [13:0] _GEN_35 = fxxterm_18[31:18]; // @[CORDIC.scala 129:30]
  wire [31:0] _y_19_T = {{18{_GEN_35[13]}},_GEN_35}; // @[CORDIC.scala 129:30]
  wire [31:0] y_19 = $signed(_y_19_T) + $signed(y_18); // @[CORDIC.scala 129:54]
  wire  _fxxterm_T_76 = $signed(theta_19) > $signed(z0sr_4); // @[CORDIC.scala 123:40]
  wire [31:0] _fxxterm_T_79 = 32'sh0 - $signed(x_19); // @[CORDIC.scala 123:54]
  wire [31:0] fxxterm_19 = $signed(theta_19) > $signed(z0sr_4) ? $signed(_fxxterm_T_79) : $signed(x_19); // @[CORDIC.scala 123:26]
  wire [31:0] _fxyterm_T_79 = 32'sh0 - $signed(y_19); // @[CORDIC.scala 124:54]
  wire [31:0] fxyterm_19 = _fxxterm_T_76 ? $signed(_fxyterm_T_79) : $signed(y_19); // @[CORDIC.scala 124:26]
  wire [31:0] _fxthetaterm_T_59 = 32'h0 - 32'h200; // @[CORDIC.scala 125:58]
  wire [31:0] _theta_20_T = _fxxterm_T_76 ? _fxthetaterm_T_59 : 32'h200; // @[CORDIC.scala 127:52]
  wire [31:0] theta_20 = $signed(theta_19) + $signed(_theta_20_T); // @[CORDIC.scala 127:38]
  wire [12:0] _GEN_36 = fxyterm_19[31:19]; // @[CORDIC.scala 128:41]
  wire [31:0] _x_20_T = {{19{_GEN_36[12]}},_GEN_36}; // @[CORDIC.scala 128:41]
  wire [31:0] x_20 = $signed(x_19) - $signed(_x_20_T); // @[CORDIC.scala 128:30]
  wire [12:0] _GEN_37 = fxxterm_19[31:19]; // @[CORDIC.scala 129:30]
  wire [31:0] _y_20_T = {{19{_GEN_37[12]}},_GEN_37}; // @[CORDIC.scala 129:30]
  wire [31:0] y_20 = $signed(_y_20_T) + $signed(y_19); // @[CORDIC.scala 129:54]
  wire  _fxxterm_T_80 = $signed(thetar_5) > $signed(z0sr_5); // @[CORDIC.scala 111:42]
  wire [31:0] _fxxterm_T_83 = 32'sh0 - $signed(xr_5); // @[CORDIC.scala 111:56]
  wire [31:0] fxxterm_20 = $signed(thetar_5) > $signed(z0sr_5) ? $signed(_fxxterm_T_83) : $signed(xr_5); // @[CORDIC.scala 111:28]
  wire [31:0] _fxyterm_T_83 = 32'sh0 - $signed(yr_5); // @[CORDIC.scala 112:56]
  wire [31:0] fxyterm_20 = _fxxterm_T_80 ? $signed(_fxyterm_T_83) : $signed(yr_5); // @[CORDIC.scala 112:28]
  wire [31:0] _fxthetaterm_T_62 = 32'h0 - 32'h100; // @[CORDIC.scala 113:60]
  wire [31:0] _theta_21_T = _fxxterm_T_80 ? _fxthetaterm_T_62 : 32'h100; // @[CORDIC.scala 115:54]
  wire [31:0] theta_21 = $signed(thetar_5) + $signed(_theta_21_T); // @[CORDIC.scala 115:40]
  wire [11:0] _GEN_38 = fxyterm_20[31:20]; // @[CORDIC.scala 116:43]
  wire [31:0] _x_21_T = {{20{_GEN_38[11]}},_GEN_38}; // @[CORDIC.scala 116:43]
  wire [31:0] x_21 = $signed(xr_5) - $signed(_x_21_T); // @[CORDIC.scala 116:32]
  wire [11:0] _GEN_39 = fxxterm_20[31:20]; // @[CORDIC.scala 117:32]
  wire [31:0] _y_21_T = {{20{_GEN_39[11]}},_GEN_39}; // @[CORDIC.scala 117:32]
  wire [31:0] y_21 = $signed(_y_21_T) + $signed(yr_5); // @[CORDIC.scala 117:56]
  wire  _fxxterm_T_84 = $signed(theta_21) > $signed(z0sr_5); // @[CORDIC.scala 123:40]
  wire [31:0] _fxxterm_T_87 = 32'sh0 - $signed(x_21); // @[CORDIC.scala 123:54]
  wire [31:0] fxxterm_21 = $signed(theta_21) > $signed(z0sr_5) ? $signed(_fxxterm_T_87) : $signed(x_21); // @[CORDIC.scala 123:26]
  wire [31:0] _fxyterm_T_87 = 32'sh0 - $signed(y_21); // @[CORDIC.scala 124:54]
  wire [31:0] fxyterm_21 = _fxxterm_T_84 ? $signed(_fxyterm_T_87) : $signed(y_21); // @[CORDIC.scala 124:26]
  wire [31:0] _fxthetaterm_T_65 = 32'h0 - 32'h80; // @[CORDIC.scala 125:58]
  wire [31:0] _theta_22_T = _fxxterm_T_84 ? _fxthetaterm_T_65 : 32'h80; // @[CORDIC.scala 127:52]
  wire [31:0] theta_22 = $signed(theta_21) + $signed(_theta_22_T); // @[CORDIC.scala 127:38]
  wire [10:0] _GEN_40 = fxyterm_21[31:21]; // @[CORDIC.scala 128:41]
  wire [31:0] _x_22_T = {{21{_GEN_40[10]}},_GEN_40}; // @[CORDIC.scala 128:41]
  wire [31:0] x_22 = $signed(x_21) - $signed(_x_22_T); // @[CORDIC.scala 128:30]
  wire [10:0] _GEN_41 = fxxterm_21[31:21]; // @[CORDIC.scala 129:30]
  wire [31:0] _y_22_T = {{21{_GEN_41[10]}},_GEN_41}; // @[CORDIC.scala 129:30]
  wire [31:0] y_22 = $signed(_y_22_T) + $signed(y_21); // @[CORDIC.scala 129:54]
  wire  _fxxterm_T_88 = $signed(theta_22) > $signed(z0sr_5); // @[CORDIC.scala 123:40]
  wire [31:0] _fxxterm_T_91 = 32'sh0 - $signed(x_22); // @[CORDIC.scala 123:54]
  wire [31:0] fxxterm_22 = $signed(theta_22) > $signed(z0sr_5) ? $signed(_fxxterm_T_91) : $signed(x_22); // @[CORDIC.scala 123:26]
  wire [31:0] _fxyterm_T_91 = 32'sh0 - $signed(y_22); // @[CORDIC.scala 124:54]
  wire [31:0] fxyterm_22 = _fxxterm_T_88 ? $signed(_fxyterm_T_91) : $signed(y_22); // @[CORDIC.scala 124:26]
  wire [31:0] _fxthetaterm_T_68 = 32'h0 - 32'h40; // @[CORDIC.scala 125:58]
  wire [31:0] _theta_23_T = _fxxterm_T_88 ? _fxthetaterm_T_68 : 32'h40; // @[CORDIC.scala 127:52]
  wire [31:0] theta_23 = $signed(theta_22) + $signed(_theta_23_T); // @[CORDIC.scala 127:38]
  wire [9:0] _GEN_42 = fxyterm_22[31:22]; // @[CORDIC.scala 128:41]
  wire [31:0] _x_23_T = {{22{_GEN_42[9]}},_GEN_42}; // @[CORDIC.scala 128:41]
  wire [31:0] x_23 = $signed(x_22) - $signed(_x_23_T); // @[CORDIC.scala 128:30]
  wire [9:0] _GEN_43 = fxxterm_22[31:22]; // @[CORDIC.scala 129:30]
  wire [31:0] _y_23_T = {{22{_GEN_43[9]}},_GEN_43}; // @[CORDIC.scala 129:30]
  wire [31:0] y_23 = $signed(_y_23_T) + $signed(y_22); // @[CORDIC.scala 129:54]
  wire  _fxxterm_T_92 = $signed(theta_23) > $signed(z0sr_5); // @[CORDIC.scala 123:40]
  wire [31:0] _fxxterm_T_95 = 32'sh0 - $signed(x_23); // @[CORDIC.scala 123:54]
  wire [31:0] fxxterm_23 = $signed(theta_23) > $signed(z0sr_5) ? $signed(_fxxterm_T_95) : $signed(x_23); // @[CORDIC.scala 123:26]
  wire [31:0] _fxyterm_T_95 = 32'sh0 - $signed(y_23); // @[CORDIC.scala 124:54]
  wire [31:0] fxyterm_23 = _fxxterm_T_92 ? $signed(_fxyterm_T_95) : $signed(y_23); // @[CORDIC.scala 124:26]
  wire [31:0] _fxthetaterm_T_71 = 32'h0 - 32'h20; // @[CORDIC.scala 125:58]
  wire [31:0] _theta_24_T = _fxxterm_T_92 ? _fxthetaterm_T_71 : 32'h20; // @[CORDIC.scala 127:52]
  wire [31:0] theta_24 = $signed(theta_23) + $signed(_theta_24_T); // @[CORDIC.scala 127:38]
  wire [8:0] _GEN_44 = fxyterm_23[31:23]; // @[CORDIC.scala 128:41]
  wire [31:0] _x_24_T = {{23{_GEN_44[8]}},_GEN_44}; // @[CORDIC.scala 128:41]
  wire [31:0] x_24 = $signed(x_23) - $signed(_x_24_T); // @[CORDIC.scala 128:30]
  wire [8:0] _GEN_45 = fxxterm_23[31:23]; // @[CORDIC.scala 129:30]
  wire [31:0] _y_24_T = {{23{_GEN_45[8]}},_GEN_45}; // @[CORDIC.scala 129:30]
  wire [31:0] y_24 = $signed(_y_24_T) + $signed(y_23); // @[CORDIC.scala 129:54]
  wire  _fxxterm_T_96 = $signed(thetar_6) > $signed(z0sr_6); // @[CORDIC.scala 111:42]
  wire [31:0] _fxxterm_T_99 = 32'sh0 - $signed(xr_6); // @[CORDIC.scala 111:56]
  wire [31:0] fxxterm_24 = $signed(thetar_6) > $signed(z0sr_6) ? $signed(_fxxterm_T_99) : $signed(xr_6); // @[CORDIC.scala 111:28]
  wire [31:0] _fxyterm_T_99 = 32'sh0 - $signed(yr_6); // @[CORDIC.scala 112:56]
  wire [31:0] fxyterm_24 = _fxxterm_T_96 ? $signed(_fxyterm_T_99) : $signed(yr_6); // @[CORDIC.scala 112:28]
  wire [31:0] _fxthetaterm_T_74 = 32'h0 - 32'h10; // @[CORDIC.scala 113:60]
  wire [31:0] _theta_25_T = _fxxterm_T_96 ? _fxthetaterm_T_74 : 32'h10; // @[CORDIC.scala 115:54]
  wire [31:0] theta_25 = $signed(thetar_6) + $signed(_theta_25_T); // @[CORDIC.scala 115:40]
  wire [7:0] _GEN_46 = fxyterm_24[31:24]; // @[CORDIC.scala 116:43]
  wire [31:0] _x_25_T = {{24{_GEN_46[7]}},_GEN_46}; // @[CORDIC.scala 116:43]
  wire [31:0] x_25 = $signed(xr_6) - $signed(_x_25_T); // @[CORDIC.scala 116:32]
  wire [7:0] _GEN_47 = fxxterm_24[31:24]; // @[CORDIC.scala 117:32]
  wire [31:0] _y_25_T = {{24{_GEN_47[7]}},_GEN_47}; // @[CORDIC.scala 117:32]
  wire [31:0] y_25 = $signed(_y_25_T) + $signed(yr_6); // @[CORDIC.scala 117:56]
  wire  _fxxterm_T_100 = $signed(theta_25) > $signed(z0sr_6); // @[CORDIC.scala 123:40]
  wire [31:0] _fxxterm_T_103 = 32'sh0 - $signed(x_25); // @[CORDIC.scala 123:54]
  wire [31:0] fxxterm_25 = $signed(theta_25) > $signed(z0sr_6) ? $signed(_fxxterm_T_103) : $signed(x_25); // @[CORDIC.scala 123:26]
  wire [31:0] _fxyterm_T_103 = 32'sh0 - $signed(y_25); // @[CORDIC.scala 124:54]
  wire [31:0] fxyterm_25 = _fxxterm_T_100 ? $signed(_fxyterm_T_103) : $signed(y_25); // @[CORDIC.scala 124:26]
  wire [31:0] _fxthetaterm_T_77 = 32'h0 - 32'h8; // @[CORDIC.scala 125:58]
  wire [31:0] _theta_26_T = _fxxterm_T_100 ? _fxthetaterm_T_77 : 32'h8; // @[CORDIC.scala 127:52]
  wire [31:0] theta_26 = $signed(theta_25) + $signed(_theta_26_T); // @[CORDIC.scala 127:38]
  wire [6:0] _GEN_48 = fxyterm_25[31:25]; // @[CORDIC.scala 128:41]
  wire [31:0] _x_26_T = {{25{_GEN_48[6]}},_GEN_48}; // @[CORDIC.scala 128:41]
  wire [31:0] x_26 = $signed(x_25) - $signed(_x_26_T); // @[CORDIC.scala 128:30]
  wire [6:0] _GEN_49 = fxxterm_25[31:25]; // @[CORDIC.scala 129:30]
  wire [31:0] _y_26_T = {{25{_GEN_49[6]}},_GEN_49}; // @[CORDIC.scala 129:30]
  wire [31:0] y_26 = $signed(_y_26_T) + $signed(y_25); // @[CORDIC.scala 129:54]
  wire  _fxxterm_T_104 = $signed(theta_26) > $signed(z0sr_6); // @[CORDIC.scala 123:40]
  wire [31:0] _fxxterm_T_107 = 32'sh0 - $signed(x_26); // @[CORDIC.scala 123:54]
  wire [31:0] fxxterm_26 = $signed(theta_26) > $signed(z0sr_6) ? $signed(_fxxterm_T_107) : $signed(x_26); // @[CORDIC.scala 123:26]
  wire [31:0] _fxyterm_T_107 = 32'sh0 - $signed(y_26); // @[CORDIC.scala 124:54]
  wire [31:0] fxyterm_26 = _fxxterm_T_104 ? $signed(_fxyterm_T_107) : $signed(y_26); // @[CORDIC.scala 124:26]
  wire [31:0] _fxthetaterm_T_80 = 32'h0 - 32'h4; // @[CORDIC.scala 125:58]
  wire [31:0] _theta_27_T = _fxxterm_T_104 ? _fxthetaterm_T_80 : 32'h4; // @[CORDIC.scala 127:52]
  wire [31:0] theta_27 = $signed(theta_26) + $signed(_theta_27_T); // @[CORDIC.scala 127:38]
  wire [5:0] _GEN_50 = fxyterm_26[31:26]; // @[CORDIC.scala 128:41]
  wire [31:0] _x_27_T = {{26{_GEN_50[5]}},_GEN_50}; // @[CORDIC.scala 128:41]
  wire [31:0] x_27 = $signed(x_26) - $signed(_x_27_T); // @[CORDIC.scala 128:30]
  wire [5:0] _GEN_51 = fxxterm_26[31:26]; // @[CORDIC.scala 129:30]
  wire [31:0] _y_27_T = {{26{_GEN_51[5]}},_GEN_51}; // @[CORDIC.scala 129:30]
  wire [31:0] y_27 = $signed(_y_27_T) + $signed(y_26); // @[CORDIC.scala 129:54]
  wire  _fxxterm_T_108 = $signed(theta_27) > $signed(z0sr_6); // @[CORDIC.scala 123:40]
  wire [31:0] _fxxterm_T_111 = 32'sh0 - $signed(x_27); // @[CORDIC.scala 123:54]
  wire [31:0] fxxterm_27 = $signed(theta_27) > $signed(z0sr_6) ? $signed(_fxxterm_T_111) : $signed(x_27); // @[CORDIC.scala 123:26]
  wire [31:0] _fxyterm_T_111 = 32'sh0 - $signed(y_27); // @[CORDIC.scala 124:54]
  wire [31:0] fxyterm_27 = _fxxterm_T_108 ? $signed(_fxyterm_T_111) : $signed(y_27); // @[CORDIC.scala 124:26]
  wire [4:0] _GEN_52 = fxyterm_27[31:27]; // @[CORDIC.scala 128:41]
  wire [31:0] _x_28_T = {{27{_GEN_52[4]}},_GEN_52}; // @[CORDIC.scala 128:41]
  wire [31:0] x_28 = $signed(x_27) - $signed(_x_28_T); // @[CORDIC.scala 128:30]
  wire [4:0] _GEN_53 = fxxterm_27[31:27]; // @[CORDIC.scala 129:30]
  wire [31:0] _y_28_T = {{27{_GEN_53[4]}},_GEN_53}; // @[CORDIC.scala 129:30]
  wire [31:0] y_28 = $signed(_y_28_T) + $signed(y_27); // @[CORDIC.scala 129:54]
  wire [31:0] _GEN_54 = reset ? 32'h0 : io_in_mode; // @[CORDIC.scala 103:13 83:{23,23}]
  FloatToFixed32 tofixedx0 ( // @[CORDIC.scala 64:25]
    .io_in(tofixedx0_io_in),
    .io_out(tofixedx0_io_out)
  );
  FloatToFixed32 tofixedy0 ( // @[CORDIC.scala 65:25]
    .io_in(tofixedy0_io_in),
    .io_out(tofixedy0_io_out)
  );
  FixedToFloat32 tofloatxout ( // @[CORDIC.scala 144:27]
    .io_in(tofloatxout_io_in),
    .io_out(tofloatxout_io_out)
  );
  FixedToFloat32 tofloatyout ( // @[CORDIC.scala 145:27]
    .io_in(tofloatyout_io_in),
    .io_out(tofloatyout_io_out)
  );
  FixedToFloat32 tofloatzout ( // @[CORDIC.scala 146:27]
    .io_in(tofloatzout_io_in),
    .io_out(tofloatzout_io_out)
  );
  assign io_out_x = tofloatxout_io_out; // @[CORDIC.scala 154:12]
  assign io_out_mode = modesr_7; // @[CORDIC.scala 152:15]
  assign tofixedx0_io_in = 32'h3f1b74ee; // @[CORDIC.scala 69:19]
  assign tofixedy0_io_in = 32'h0; // @[CORDIC.scala 70:19]
  assign tofloatxout_io_in = xr_7; // @[CORDIC.scala 149:33]
  assign tofloatyout_io_in = yr_7; // @[CORDIC.scala 150:33]
  assign tofloatzout_io_in = z0sr_7; // @[CORDIC.scala 151:35]
  always @(posedge clock) begin
    if (reset) begin // @[CORDIC.scala 79:19]
      xr_0 <= 32'sh0; // @[CORDIC.scala 79:19]
    end else begin
      xr_0 <= tofixedx0_io_out; // @[CORDIC.scala 100:9]
    end
    if (reset) begin // @[CORDIC.scala 79:19]
      xr_1 <= 32'sh0; // @[CORDIC.scala 79:19]
    end else begin
      xr_1 <= x_4; // @[CORDIC.scala 136:18]
    end
    if (reset) begin // @[CORDIC.scala 79:19]
      xr_2 <= 32'sh0; // @[CORDIC.scala 79:19]
    end else begin
      xr_2 <= x_8; // @[CORDIC.scala 136:18]
    end
    if (reset) begin // @[CORDIC.scala 79:19]
      xr_3 <= 32'sh0; // @[CORDIC.scala 79:19]
    end else begin
      xr_3 <= x_12; // @[CORDIC.scala 136:18]
    end
    if (reset) begin // @[CORDIC.scala 79:19]
      xr_4 <= 32'sh0; // @[CORDIC.scala 79:19]
    end else begin
      xr_4 <= x_16; // @[CORDIC.scala 136:18]
    end
    if (reset) begin // @[CORDIC.scala 79:19]
      xr_5 <= 32'sh0; // @[CORDIC.scala 79:19]
    end else begin
      xr_5 <= x_20; // @[CORDIC.scala 136:18]
    end
    if (reset) begin // @[CORDIC.scala 79:19]
      xr_6 <= 32'sh0; // @[CORDIC.scala 79:19]
    end else begin
      xr_6 <= x_24; // @[CORDIC.scala 136:18]
    end
    if (reset) begin // @[CORDIC.scala 79:19]
      xr_7 <= 32'sh0; // @[CORDIC.scala 79:19]
    end else begin
      xr_7 <= x_28; // @[CORDIC.scala 136:18]
    end
    if (reset) begin // @[CORDIC.scala 80:19]
      yr_0 <= 32'sh0; // @[CORDIC.scala 80:19]
    end else begin
      yr_0 <= tofixedy0_io_out; // @[CORDIC.scala 101:9]
    end
    if (reset) begin // @[CORDIC.scala 80:19]
      yr_1 <= 32'sh0; // @[CORDIC.scala 80:19]
    end else begin
      yr_1 <= y_4; // @[CORDIC.scala 137:18]
    end
    if (reset) begin // @[CORDIC.scala 80:19]
      yr_2 <= 32'sh0; // @[CORDIC.scala 80:19]
    end else begin
      yr_2 <= y_8; // @[CORDIC.scala 137:18]
    end
    if (reset) begin // @[CORDIC.scala 80:19]
      yr_3 <= 32'sh0; // @[CORDIC.scala 80:19]
    end else begin
      yr_3 <= y_12; // @[CORDIC.scala 137:18]
    end
    if (reset) begin // @[CORDIC.scala 80:19]
      yr_4 <= 32'sh0; // @[CORDIC.scala 80:19]
    end else begin
      yr_4 <= y_16; // @[CORDIC.scala 137:18]
    end
    if (reset) begin // @[CORDIC.scala 80:19]
      yr_5 <= 32'sh0; // @[CORDIC.scala 80:19]
    end else begin
      yr_5 <= y_20; // @[CORDIC.scala 137:18]
    end
    if (reset) begin // @[CORDIC.scala 80:19]
      yr_6 <= 32'sh0; // @[CORDIC.scala 80:19]
    end else begin
      yr_6 <= y_24; // @[CORDIC.scala 137:18]
    end
    if (reset) begin // @[CORDIC.scala 80:19]
      yr_7 <= 32'sh0; // @[CORDIC.scala 80:19]
    end else begin
      yr_7 <= y_28; // @[CORDIC.scala 137:18]
    end
    if (reset) begin // @[CORDIC.scala 81:23]
      thetar_1 <= 32'sh0; // @[CORDIC.scala 81:23]
    end else begin
      thetar_1 <= theta_4; // @[CORDIC.scala 135:22]
    end
    if (reset) begin // @[CORDIC.scala 81:23]
      thetar_2 <= 32'sh0; // @[CORDIC.scala 81:23]
    end else begin
      thetar_2 <= theta_8; // @[CORDIC.scala 135:22]
    end
    if (reset) begin // @[CORDIC.scala 81:23]
      thetar_3 <= 32'sh0; // @[CORDIC.scala 81:23]
    end else begin
      thetar_3 <= theta_12; // @[CORDIC.scala 135:22]
    end
    if (reset) begin // @[CORDIC.scala 81:23]
      thetar_4 <= 32'sh0; // @[CORDIC.scala 81:23]
    end else begin
      thetar_4 <= theta_16; // @[CORDIC.scala 135:22]
    end
    if (reset) begin // @[CORDIC.scala 81:23]
      thetar_5 <= 32'sh0; // @[CORDIC.scala 81:23]
    end else begin
      thetar_5 <= theta_20; // @[CORDIC.scala 135:22]
    end
    if (reset) begin // @[CORDIC.scala 81:23]
      thetar_6 <= 32'sh0; // @[CORDIC.scala 81:23]
    end else begin
      thetar_6 <= theta_24; // @[CORDIC.scala 135:22]
    end
    if (reset) begin // @[CORDIC.scala 82:21]
      z0sr_0 <= 32'sh0; // @[CORDIC.scala 82:21]
    end else begin
      z0sr_0 <= io_in_z0; // @[CORDIC.scala 102:11]
    end
    if (reset) begin // @[CORDIC.scala 82:21]
      z0sr_1 <= 32'sh0; // @[CORDIC.scala 82:21]
    end else begin
      z0sr_1 <= z0sr_0; // @[CORDIC.scala 138:20]
    end
    if (reset) begin // @[CORDIC.scala 82:21]
      z0sr_2 <= 32'sh0; // @[CORDIC.scala 82:21]
    end else begin
      z0sr_2 <= z0sr_1; // @[CORDIC.scala 138:20]
    end
    if (reset) begin // @[CORDIC.scala 82:21]
      z0sr_3 <= 32'sh0; // @[CORDIC.scala 82:21]
    end else begin
      z0sr_3 <= z0sr_2; // @[CORDIC.scala 138:20]
    end
    if (reset) begin // @[CORDIC.scala 82:21]
      z0sr_4 <= 32'sh0; // @[CORDIC.scala 82:21]
    end else begin
      z0sr_4 <= z0sr_3; // @[CORDIC.scala 138:20]
    end
    if (reset) begin // @[CORDIC.scala 82:21]
      z0sr_5 <= 32'sh0; // @[CORDIC.scala 82:21]
    end else begin
      z0sr_5 <= z0sr_4; // @[CORDIC.scala 138:20]
    end
    if (reset) begin // @[CORDIC.scala 82:21]
      z0sr_6 <= 32'sh0; // @[CORDIC.scala 82:21]
    end else begin
      z0sr_6 <= z0sr_5; // @[CORDIC.scala 138:20]
    end
    if (reset) begin // @[CORDIC.scala 82:21]
      z0sr_7 <= 32'sh0; // @[CORDIC.scala 82:21]
    end else begin
      z0sr_7 <= z0sr_6; // @[CORDIC.scala 138:20]
    end
    modesr_0 <= _GEN_54[1:0]; // @[CORDIC.scala 103:13 83:{23,23}]
    if (reset) begin // @[CORDIC.scala 83:23]
      modesr_1 <= 2'h0; // @[CORDIC.scala 83:23]
    end else begin
      modesr_1 <= modesr_0; // @[CORDIC.scala 139:22]
    end
    if (reset) begin // @[CORDIC.scala 83:23]
      modesr_2 <= 2'h0; // @[CORDIC.scala 83:23]
    end else begin
      modesr_2 <= modesr_1; // @[CORDIC.scala 139:22]
    end
    if (reset) begin // @[CORDIC.scala 83:23]
      modesr_3 <= 2'h0; // @[CORDIC.scala 83:23]
    end else begin
      modesr_3 <= modesr_2; // @[CORDIC.scala 139:22]
    end
    if (reset) begin // @[CORDIC.scala 83:23]
      modesr_4 <= 2'h0; // @[CORDIC.scala 83:23]
    end else begin
      modesr_4 <= modesr_3; // @[CORDIC.scala 139:22]
    end
    if (reset) begin // @[CORDIC.scala 83:23]
      modesr_5 <= 2'h0; // @[CORDIC.scala 83:23]
    end else begin
      modesr_5 <= modesr_4; // @[CORDIC.scala 139:22]
    end
    if (reset) begin // @[CORDIC.scala 83:23]
      modesr_6 <= 2'h0; // @[CORDIC.scala 83:23]
    end else begin
      modesr_6 <= modesr_5; // @[CORDIC.scala 139:22]
    end
    if (reset) begin // @[CORDIC.scala 83:23]
      modesr_7 <= 2'h0; // @[CORDIC.scala 83:23]
    end else begin
      modesr_7 <= modesr_6; // @[CORDIC.scala 139:22]
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
  yr_0 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  yr_1 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  yr_2 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  yr_3 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  yr_4 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  yr_5 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  yr_6 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  yr_7 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  thetar_1 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  thetar_2 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  thetar_3 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  thetar_4 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  thetar_5 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  thetar_6 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  z0sr_0 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  z0sr_1 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  z0sr_2 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  z0sr_3 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  z0sr_4 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  z0sr_5 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  z0sr_6 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  z0sr_7 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  modesr_0 = _RAND_30[1:0];
  _RAND_31 = {1{`RANDOM}};
  modesr_1 = _RAND_31[1:0];
  _RAND_32 = {1{`RANDOM}};
  modesr_2 = _RAND_32[1:0];
  _RAND_33 = {1{`RANDOM}};
  modesr_3 = _RAND_33[1:0];
  _RAND_34 = {1{`RANDOM}};
  modesr_4 = _RAND_34[1:0];
  _RAND_35 = {1{`RANDOM}};
  modesr_5 = _RAND_35[1:0];
  _RAND_36 = {1{`RANDOM}};
  modesr_6 = _RAND_36[1:0];
  _RAND_37 = {1{`RANDOM}};
  modesr_7 = _RAND_37[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
