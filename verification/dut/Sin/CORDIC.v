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
`endif // RANDOMIZE_REG_INIT
  wire [31:0] tofixedx0_io_in; // @[CORDIC.scala 502:25]
  wire [31:0] tofixedx0_io_out; // @[CORDIC.scala 502:25]
  wire [31:0] tofixedy0_io_in; // @[CORDIC.scala 503:25]
  wire [31:0] tofixedy0_io_out; // @[CORDIC.scala 503:25]
  wire [31:0] tofloatxout_io_in; // @[CORDIC.scala 874:29]
  wire [31:0] tofloatxout_io_out; // @[CORDIC.scala 874:29]
  wire [31:0] tofloatyout_io_in; // @[CORDIC.scala 875:29]
  wire [31:0] tofloatyout_io_out; // @[CORDIC.scala 875:29]
  wire [31:0] tofloatzout_io_in; // @[CORDIC.scala 876:29]
  wire [31:0] tofloatzout_io_out; // @[CORDIC.scala 876:29]
  reg [31:0] xr_0; // @[CORDIC.scala 468:19]
  reg [31:0] xr_1; // @[CORDIC.scala 468:19]
  reg [31:0] yr_0; // @[CORDIC.scala 469:19]
  reg [31:0] yr_1; // @[CORDIC.scala 469:19]
  reg [31:0] z0sr_0; // @[CORDIC.scala 471:21]
  reg [31:0] z0sr_1; // @[CORDIC.scala 471:21]
  reg [1:0] modesr_0; // @[CORDIC.scala 472:23]
  reg [1:0] modesr_1; // @[CORDIC.scala 472:23]
  wire  _fxxterm_T = 32'sh0 > $signed(z0sr_0); // @[CORDIC.scala 818:35]
  wire [31:0] _fxxterm_T_3 = 32'sh0 - $signed(xr_0); // @[CORDIC.scala 818:46]
  wire [31:0] fxxterm = 32'sh0 > $signed(z0sr_0) ? $signed(_fxxterm_T_3) : $signed(xr_0); // @[CORDIC.scala 818:24]
  wire [31:0] _fxyterm_T_3 = 32'sh0 - $signed(yr_0); // @[CORDIC.scala 819:46]
  wire [31:0] fxyterm = _fxxterm_T ? $signed(_fxyterm_T_3) : $signed(yr_0); // @[CORDIC.scala 819:24]
  wire [31:0] _fxthetaterm_T_2 = 32'h0 - 32'hc90fdb0; // @[CORDIC.scala 820:50]
  wire [31:0] _theta_1_T = _fxxterm_T ? _fxthetaterm_T_2 : 32'hc90fdb0; // @[CORDIC.scala 822:47]
  wire [32:0] _theta_1_T_1 = {{1{_theta_1_T[31]}},_theta_1_T}; // @[CORDIC.scala 822:33]
  wire [31:0] theta_1 = _theta_1_T_1[31:0]; // @[CORDIC.scala 822:33]
  wire [31:0] x_1 = $signed(xr_0) - $signed(fxyterm); // @[CORDIC.scala 823:25]
  wire [31:0] y_1 = $signed(fxxterm) + $signed(yr_0); // @[CORDIC.scala 824:48]
  wire  _fxxterm_T_4 = $signed(theta_1) > $signed(z0sr_0); // @[CORDIC.scala 857:34]
  wire [31:0] _fxxterm_T_7 = 32'sh0 - $signed(x_1); // @[CORDIC.scala 857:44]
  wire [31:0] fxxterm_1 = $signed(theta_1) > $signed(z0sr_0) ? $signed(_fxxterm_T_7) : $signed(x_1); // @[CORDIC.scala 857:24]
  wire [31:0] _fxyterm_T_7 = 32'sh0 - $signed(y_1); // @[CORDIC.scala 858:44]
  wire [31:0] fxyterm_1 = _fxxterm_T_4 ? $signed(_fxyterm_T_7) : $signed(y_1); // @[CORDIC.scala 858:24]
  wire [31:0] _fxthetaterm_T_5 = 32'h0 - 32'h76b19c0; // @[CORDIC.scala 859:48]
  wire [31:0] _theta_2_T = _fxxterm_T_4 ? _fxthetaterm_T_5 : 32'h76b19c0; // @[CORDIC.scala 861:46]
  wire [31:0] theta_2 = $signed(theta_1) + $signed(_theta_2_T); // @[CORDIC.scala 861:32]
  wire [30:0] _GEN_0 = fxyterm_1[31:1]; // @[CORDIC.scala 862:35]
  wire [31:0] _x_2_T = {{1{_GEN_0[30]}},_GEN_0}; // @[CORDIC.scala 862:35]
  wire [31:0] x_2 = $signed(x_1) - $signed(_x_2_T); // @[CORDIC.scala 862:24]
  wire [30:0] _GEN_1 = fxxterm_1[31:1]; // @[CORDIC.scala 863:28]
  wire [31:0] _y_2_T = {{1{_GEN_1[30]}},_GEN_1}; // @[CORDIC.scala 863:28]
  wire [31:0] y_2 = $signed(_y_2_T) + $signed(y_1); // @[CORDIC.scala 863:48]
  wire  _fxxterm_T_8 = $signed(theta_2) > $signed(z0sr_0); // @[CORDIC.scala 857:34]
  wire [31:0] _fxxterm_T_11 = 32'sh0 - $signed(x_2); // @[CORDIC.scala 857:44]
  wire [31:0] fxxterm_2 = $signed(theta_2) > $signed(z0sr_0) ? $signed(_fxxterm_T_11) : $signed(x_2); // @[CORDIC.scala 857:24]
  wire [31:0] _fxyterm_T_11 = 32'sh0 - $signed(y_2); // @[CORDIC.scala 858:44]
  wire [31:0] fxyterm_2 = _fxxterm_T_8 ? $signed(_fxyterm_T_11) : $signed(y_2); // @[CORDIC.scala 858:24]
  wire [31:0] _fxthetaterm_T_8 = 32'h0 - 32'h3eb6ec0; // @[CORDIC.scala 859:48]
  wire [31:0] _theta_3_T = _fxxterm_T_8 ? _fxthetaterm_T_8 : 32'h3eb6ec0; // @[CORDIC.scala 861:46]
  wire [31:0] theta_3 = $signed(theta_2) + $signed(_theta_3_T); // @[CORDIC.scala 861:32]
  wire [29:0] _GEN_2 = fxyterm_2[31:2]; // @[CORDIC.scala 862:35]
  wire [31:0] _x_3_T = {{2{_GEN_2[29]}},_GEN_2}; // @[CORDIC.scala 862:35]
  wire [31:0] x_3 = $signed(x_2) - $signed(_x_3_T); // @[CORDIC.scala 862:24]
  wire [29:0] _GEN_3 = fxxterm_2[31:2]; // @[CORDIC.scala 863:28]
  wire [31:0] _y_3_T = {{2{_GEN_3[29]}},_GEN_3}; // @[CORDIC.scala 863:28]
  wire [31:0] y_3 = $signed(_y_3_T) + $signed(y_2); // @[CORDIC.scala 863:48]
  wire  _fxxterm_T_12 = $signed(theta_3) > $signed(z0sr_0); // @[CORDIC.scala 857:34]
  wire [31:0] _fxxterm_T_15 = 32'sh0 - $signed(x_3); // @[CORDIC.scala 857:44]
  wire [31:0] fxxterm_3 = $signed(theta_3) > $signed(z0sr_0) ? $signed(_fxxterm_T_15) : $signed(x_3); // @[CORDIC.scala 857:24]
  wire [31:0] _fxyterm_T_15 = 32'sh0 - $signed(y_3); // @[CORDIC.scala 858:44]
  wire [31:0] fxyterm_3 = _fxxterm_T_12 ? $signed(_fxyterm_T_15) : $signed(y_3); // @[CORDIC.scala 858:24]
  wire [31:0] _fxthetaterm_T_11 = 32'h0 - 32'h1fd5baa; // @[CORDIC.scala 859:48]
  wire [31:0] _theta_4_T = _fxxterm_T_12 ? _fxthetaterm_T_11 : 32'h1fd5baa; // @[CORDIC.scala 861:46]
  wire [31:0] theta_4 = $signed(theta_3) + $signed(_theta_4_T); // @[CORDIC.scala 861:32]
  wire [28:0] _GEN_4 = fxyterm_3[31:3]; // @[CORDIC.scala 862:35]
  wire [31:0] _x_4_T = {{3{_GEN_4[28]}},_GEN_4}; // @[CORDIC.scala 862:35]
  wire [31:0] x_4 = $signed(x_3) - $signed(_x_4_T); // @[CORDIC.scala 862:24]
  wire [28:0] _GEN_5 = fxxterm_3[31:3]; // @[CORDIC.scala 863:28]
  wire [31:0] _y_4_T = {{3{_GEN_5[28]}},_GEN_5}; // @[CORDIC.scala 863:28]
  wire [31:0] y_4 = $signed(_y_4_T) + $signed(y_3); // @[CORDIC.scala 863:48]
  wire  _fxxterm_T_16 = $signed(theta_4) > $signed(z0sr_0); // @[CORDIC.scala 857:34]
  wire [31:0] _fxxterm_T_19 = 32'sh0 - $signed(x_4); // @[CORDIC.scala 857:44]
  wire [31:0] fxxterm_4 = $signed(theta_4) > $signed(z0sr_0) ? $signed(_fxxterm_T_19) : $signed(x_4); // @[CORDIC.scala 857:24]
  wire [31:0] _fxyterm_T_19 = 32'sh0 - $signed(y_4); // @[CORDIC.scala 858:44]
  wire [31:0] fxyterm_4 = _fxxterm_T_16 ? $signed(_fxyterm_T_19) : $signed(y_4); // @[CORDIC.scala 858:24]
  wire [31:0] _fxthetaterm_T_14 = 32'h0 - 32'hffaade; // @[CORDIC.scala 859:48]
  wire [31:0] _theta_5_T = _fxxterm_T_16 ? _fxthetaterm_T_14 : 32'hffaade; // @[CORDIC.scala 861:46]
  wire [31:0] theta_5 = $signed(theta_4) + $signed(_theta_5_T); // @[CORDIC.scala 861:32]
  wire [27:0] _GEN_6 = fxyterm_4[31:4]; // @[CORDIC.scala 862:35]
  wire [31:0] _x_5_T = {{4{_GEN_6[27]}},_GEN_6}; // @[CORDIC.scala 862:35]
  wire [31:0] x_5 = $signed(x_4) - $signed(_x_5_T); // @[CORDIC.scala 862:24]
  wire [27:0] _GEN_7 = fxxterm_4[31:4]; // @[CORDIC.scala 863:28]
  wire [31:0] _y_5_T = {{4{_GEN_7[27]}},_GEN_7}; // @[CORDIC.scala 863:28]
  wire [31:0] y_5 = $signed(_y_5_T) + $signed(y_4); // @[CORDIC.scala 863:48]
  wire  _fxxterm_T_20 = $signed(theta_5) > $signed(z0sr_0); // @[CORDIC.scala 857:34]
  wire [31:0] _fxxterm_T_23 = 32'sh0 - $signed(x_5); // @[CORDIC.scala 857:44]
  wire [31:0] fxxterm_5 = $signed(theta_5) > $signed(z0sr_0) ? $signed(_fxxterm_T_23) : $signed(x_5); // @[CORDIC.scala 857:24]
  wire [31:0] _fxyterm_T_23 = 32'sh0 - $signed(y_5); // @[CORDIC.scala 858:44]
  wire [31:0] fxyterm_5 = _fxxterm_T_20 ? $signed(_fxyterm_T_23) : $signed(y_5); // @[CORDIC.scala 858:24]
  wire [31:0] _fxthetaterm_T_17 = 32'h0 - 32'h7ff557; // @[CORDIC.scala 859:48]
  wire [31:0] _theta_6_T = _fxxterm_T_20 ? _fxthetaterm_T_17 : 32'h7ff557; // @[CORDIC.scala 861:46]
  wire [31:0] theta_6 = $signed(theta_5) + $signed(_theta_6_T); // @[CORDIC.scala 861:32]
  wire [26:0] _GEN_8 = fxyterm_5[31:5]; // @[CORDIC.scala 862:35]
  wire [31:0] _x_6_T = {{5{_GEN_8[26]}},_GEN_8}; // @[CORDIC.scala 862:35]
  wire [31:0] x_6 = $signed(x_5) - $signed(_x_6_T); // @[CORDIC.scala 862:24]
  wire [26:0] _GEN_9 = fxxterm_5[31:5]; // @[CORDIC.scala 863:28]
  wire [31:0] _y_6_T = {{5{_GEN_9[26]}},_GEN_9}; // @[CORDIC.scala 863:28]
  wire [31:0] y_6 = $signed(_y_6_T) + $signed(y_5); // @[CORDIC.scala 863:48]
  wire  _fxxterm_T_24 = $signed(theta_6) > $signed(z0sr_0); // @[CORDIC.scala 857:34]
  wire [31:0] _fxxterm_T_27 = 32'sh0 - $signed(x_6); // @[CORDIC.scala 857:44]
  wire [31:0] fxxterm_6 = $signed(theta_6) > $signed(z0sr_0) ? $signed(_fxxterm_T_27) : $signed(x_6); // @[CORDIC.scala 857:24]
  wire [31:0] _fxyterm_T_27 = 32'sh0 - $signed(y_6); // @[CORDIC.scala 858:44]
  wire [31:0] fxyterm_6 = _fxxterm_T_24 ? $signed(_fxyterm_T_27) : $signed(y_6); // @[CORDIC.scala 858:24]
  wire [31:0] _fxthetaterm_T_20 = 32'h0 - 32'h3ffeaa; // @[CORDIC.scala 859:48]
  wire [31:0] _theta_7_T = _fxxterm_T_24 ? _fxthetaterm_T_20 : 32'h3ffeaa; // @[CORDIC.scala 861:46]
  wire [31:0] theta_7 = $signed(theta_6) + $signed(_theta_7_T); // @[CORDIC.scala 861:32]
  wire [25:0] _GEN_10 = fxyterm_6[31:6]; // @[CORDIC.scala 862:35]
  wire [31:0] _x_7_T = {{6{_GEN_10[25]}},_GEN_10}; // @[CORDIC.scala 862:35]
  wire [31:0] x_7 = $signed(x_6) - $signed(_x_7_T); // @[CORDIC.scala 862:24]
  wire [25:0] _GEN_11 = fxxterm_6[31:6]; // @[CORDIC.scala 863:28]
  wire [31:0] _y_7_T = {{6{_GEN_11[25]}},_GEN_11}; // @[CORDIC.scala 863:28]
  wire [31:0] y_7 = $signed(_y_7_T) + $signed(y_6); // @[CORDIC.scala 863:48]
  wire  _fxxterm_T_28 = $signed(theta_7) > $signed(z0sr_0); // @[CORDIC.scala 857:34]
  wire [31:0] _fxxterm_T_31 = 32'sh0 - $signed(x_7); // @[CORDIC.scala 857:44]
  wire [31:0] fxxterm_7 = $signed(theta_7) > $signed(z0sr_0) ? $signed(_fxxterm_T_31) : $signed(x_7); // @[CORDIC.scala 857:24]
  wire [31:0] _fxyterm_T_31 = 32'sh0 - $signed(y_7); // @[CORDIC.scala 858:44]
  wire [31:0] fxyterm_7 = _fxxterm_T_28 ? $signed(_fxyterm_T_31) : $signed(y_7); // @[CORDIC.scala 858:24]
  wire [31:0] _fxthetaterm_T_23 = 32'h0 - 32'h1fffd5; // @[CORDIC.scala 859:48]
  wire [31:0] _theta_8_T = _fxxterm_T_28 ? _fxthetaterm_T_23 : 32'h1fffd5; // @[CORDIC.scala 861:46]
  wire [31:0] theta_8 = $signed(theta_7) + $signed(_theta_8_T); // @[CORDIC.scala 861:32]
  wire [24:0] _GEN_12 = fxyterm_7[31:7]; // @[CORDIC.scala 862:35]
  wire [31:0] _x_8_T = {{7{_GEN_12[24]}},_GEN_12}; // @[CORDIC.scala 862:35]
  wire [31:0] x_8 = $signed(x_7) - $signed(_x_8_T); // @[CORDIC.scala 862:24]
  wire [24:0] _GEN_13 = fxxterm_7[31:7]; // @[CORDIC.scala 863:28]
  wire [31:0] _y_8_T = {{7{_GEN_13[24]}},_GEN_13}; // @[CORDIC.scala 863:28]
  wire [31:0] y_8 = $signed(_y_8_T) + $signed(y_7); // @[CORDIC.scala 863:48]
  wire  _fxxterm_T_32 = $signed(theta_8) > $signed(z0sr_0); // @[CORDIC.scala 857:34]
  wire [31:0] _fxxterm_T_35 = 32'sh0 - $signed(x_8); // @[CORDIC.scala 857:44]
  wire [31:0] fxxterm_8 = $signed(theta_8) > $signed(z0sr_0) ? $signed(_fxxterm_T_35) : $signed(x_8); // @[CORDIC.scala 857:24]
  wire [31:0] _fxyterm_T_35 = 32'sh0 - $signed(y_8); // @[CORDIC.scala 858:44]
  wire [31:0] fxyterm_8 = _fxxterm_T_32 ? $signed(_fxyterm_T_35) : $signed(y_8); // @[CORDIC.scala 858:24]
  wire [31:0] _fxthetaterm_T_26 = 32'h0 - 32'hffffa; // @[CORDIC.scala 859:48]
  wire [31:0] _theta_9_T = _fxxterm_T_32 ? _fxthetaterm_T_26 : 32'hffffa; // @[CORDIC.scala 861:46]
  wire [31:0] theta_9 = $signed(theta_8) + $signed(_theta_9_T); // @[CORDIC.scala 861:32]
  wire [23:0] _GEN_14 = fxyterm_8[31:8]; // @[CORDIC.scala 862:35]
  wire [31:0] _x_9_T = {{8{_GEN_14[23]}},_GEN_14}; // @[CORDIC.scala 862:35]
  wire [31:0] x_9 = $signed(x_8) - $signed(_x_9_T); // @[CORDIC.scala 862:24]
  wire [23:0] _GEN_15 = fxxterm_8[31:8]; // @[CORDIC.scala 863:28]
  wire [31:0] _y_9_T = {{8{_GEN_15[23]}},_GEN_15}; // @[CORDIC.scala 863:28]
  wire [31:0] y_9 = $signed(_y_9_T) + $signed(y_8); // @[CORDIC.scala 863:48]
  wire  _fxxterm_T_36 = $signed(theta_9) > $signed(z0sr_0); // @[CORDIC.scala 857:34]
  wire [31:0] _fxxterm_T_39 = 32'sh0 - $signed(x_9); // @[CORDIC.scala 857:44]
  wire [31:0] fxxterm_9 = $signed(theta_9) > $signed(z0sr_0) ? $signed(_fxxterm_T_39) : $signed(x_9); // @[CORDIC.scala 857:24]
  wire [31:0] _fxyterm_T_39 = 32'sh0 - $signed(y_9); // @[CORDIC.scala 858:44]
  wire [31:0] fxyterm_9 = _fxxterm_T_36 ? $signed(_fxyterm_T_39) : $signed(y_9); // @[CORDIC.scala 858:24]
  wire [31:0] _fxthetaterm_T_29 = 32'h0 - 32'h7ffff; // @[CORDIC.scala 859:48]
  wire [31:0] _theta_10_T = _fxxterm_T_36 ? _fxthetaterm_T_29 : 32'h7ffff; // @[CORDIC.scala 861:46]
  wire [31:0] theta_10 = $signed(theta_9) + $signed(_theta_10_T); // @[CORDIC.scala 861:32]
  wire [22:0] _GEN_16 = fxyterm_9[31:9]; // @[CORDIC.scala 862:35]
  wire [31:0] _x_10_T = {{9{_GEN_16[22]}},_GEN_16}; // @[CORDIC.scala 862:35]
  wire [31:0] x_10 = $signed(x_9) - $signed(_x_10_T); // @[CORDIC.scala 862:24]
  wire [22:0] _GEN_17 = fxxterm_9[31:9]; // @[CORDIC.scala 863:28]
  wire [31:0] _y_10_T = {{9{_GEN_17[22]}},_GEN_17}; // @[CORDIC.scala 863:28]
  wire [31:0] y_10 = $signed(_y_10_T) + $signed(y_9); // @[CORDIC.scala 863:48]
  wire  _fxxterm_T_40 = $signed(theta_10) > $signed(z0sr_0); // @[CORDIC.scala 857:34]
  wire [31:0] _fxxterm_T_43 = 32'sh0 - $signed(x_10); // @[CORDIC.scala 857:44]
  wire [31:0] fxxterm_10 = $signed(theta_10) > $signed(z0sr_0) ? $signed(_fxxterm_T_43) : $signed(x_10); // @[CORDIC.scala 857:24]
  wire [31:0] _fxyterm_T_43 = 32'sh0 - $signed(y_10); // @[CORDIC.scala 858:44]
  wire [31:0] fxyterm_10 = _fxxterm_T_40 ? $signed(_fxyterm_T_43) : $signed(y_10); // @[CORDIC.scala 858:24]
  wire [31:0] _fxthetaterm_T_32 = 32'h0 - 32'h3ffff; // @[CORDIC.scala 859:48]
  wire [31:0] _theta_11_T = _fxxterm_T_40 ? _fxthetaterm_T_32 : 32'h3ffff; // @[CORDIC.scala 861:46]
  wire [31:0] theta_11 = $signed(theta_10) + $signed(_theta_11_T); // @[CORDIC.scala 861:32]
  wire [21:0] _GEN_18 = fxyterm_10[31:10]; // @[CORDIC.scala 862:35]
  wire [31:0] _x_11_T = {{10{_GEN_18[21]}},_GEN_18}; // @[CORDIC.scala 862:35]
  wire [31:0] x_11 = $signed(x_10) - $signed(_x_11_T); // @[CORDIC.scala 862:24]
  wire [21:0] _GEN_19 = fxxterm_10[31:10]; // @[CORDIC.scala 863:28]
  wire [31:0] _y_11_T = {{10{_GEN_19[21]}},_GEN_19}; // @[CORDIC.scala 863:28]
  wire [31:0] y_11 = $signed(_y_11_T) + $signed(y_10); // @[CORDIC.scala 863:48]
  wire  _fxxterm_T_44 = $signed(theta_11) > $signed(z0sr_0); // @[CORDIC.scala 857:34]
  wire [31:0] _fxxterm_T_47 = 32'sh0 - $signed(x_11); // @[CORDIC.scala 857:44]
  wire [31:0] fxxterm_11 = $signed(theta_11) > $signed(z0sr_0) ? $signed(_fxxterm_T_47) : $signed(x_11); // @[CORDIC.scala 857:24]
  wire [31:0] _fxyterm_T_47 = 32'sh0 - $signed(y_11); // @[CORDIC.scala 858:44]
  wire [31:0] fxyterm_11 = _fxxterm_T_44 ? $signed(_fxyterm_T_47) : $signed(y_11); // @[CORDIC.scala 858:24]
  wire [31:0] _fxthetaterm_T_35 = 32'h0 - 32'h1ffff; // @[CORDIC.scala 859:48]
  wire [31:0] _theta_12_T = _fxxterm_T_44 ? _fxthetaterm_T_35 : 32'h1ffff; // @[CORDIC.scala 861:46]
  wire [31:0] theta_12 = $signed(theta_11) + $signed(_theta_12_T); // @[CORDIC.scala 861:32]
  wire [20:0] _GEN_20 = fxyterm_11[31:11]; // @[CORDIC.scala 862:35]
  wire [31:0] _x_12_T = {{11{_GEN_20[20]}},_GEN_20}; // @[CORDIC.scala 862:35]
  wire [31:0] x_12 = $signed(x_11) - $signed(_x_12_T); // @[CORDIC.scala 862:24]
  wire [20:0] _GEN_21 = fxxterm_11[31:11]; // @[CORDIC.scala 863:28]
  wire [31:0] _y_12_T = {{11{_GEN_21[20]}},_GEN_21}; // @[CORDIC.scala 863:28]
  wire [31:0] y_12 = $signed(_y_12_T) + $signed(y_11); // @[CORDIC.scala 863:48]
  wire  _fxxterm_T_48 = $signed(theta_12) > $signed(z0sr_0); // @[CORDIC.scala 857:34]
  wire [31:0] _fxxterm_T_51 = 32'sh0 - $signed(x_12); // @[CORDIC.scala 857:44]
  wire [31:0] fxxterm_12 = $signed(theta_12) > $signed(z0sr_0) ? $signed(_fxxterm_T_51) : $signed(x_12); // @[CORDIC.scala 857:24]
  wire [31:0] _fxyterm_T_51 = 32'sh0 - $signed(y_12); // @[CORDIC.scala 858:44]
  wire [31:0] fxyterm_12 = _fxxterm_T_48 ? $signed(_fxyterm_T_51) : $signed(y_12); // @[CORDIC.scala 858:24]
  wire [31:0] _fxthetaterm_T_38 = 32'h0 - 32'h10000; // @[CORDIC.scala 859:48]
  wire [31:0] _theta_13_T = _fxxterm_T_48 ? _fxthetaterm_T_38 : 32'h10000; // @[CORDIC.scala 861:46]
  wire [31:0] theta_13 = $signed(theta_12) + $signed(_theta_13_T); // @[CORDIC.scala 861:32]
  wire [19:0] _GEN_22 = fxyterm_12[31:12]; // @[CORDIC.scala 862:35]
  wire [31:0] _x_13_T = {{12{_GEN_22[19]}},_GEN_22}; // @[CORDIC.scala 862:35]
  wire [31:0] x_13 = $signed(x_12) - $signed(_x_13_T); // @[CORDIC.scala 862:24]
  wire [19:0] _GEN_23 = fxxterm_12[31:12]; // @[CORDIC.scala 863:28]
  wire [31:0] _y_13_T = {{12{_GEN_23[19]}},_GEN_23}; // @[CORDIC.scala 863:28]
  wire [31:0] y_13 = $signed(_y_13_T) + $signed(y_12); // @[CORDIC.scala 863:48]
  wire  _fxxterm_T_52 = $signed(theta_13) > $signed(z0sr_0); // @[CORDIC.scala 857:34]
  wire [31:0] _fxxterm_T_55 = 32'sh0 - $signed(x_13); // @[CORDIC.scala 857:44]
  wire [31:0] fxxterm_13 = $signed(theta_13) > $signed(z0sr_0) ? $signed(_fxxterm_T_55) : $signed(x_13); // @[CORDIC.scala 857:24]
  wire [31:0] _fxyterm_T_55 = 32'sh0 - $signed(y_13); // @[CORDIC.scala 858:44]
  wire [31:0] fxyterm_13 = _fxxterm_T_52 ? $signed(_fxyterm_T_55) : $signed(y_13); // @[CORDIC.scala 858:24]
  wire [31:0] _fxthetaterm_T_41 = 32'h0 - 32'h8000; // @[CORDIC.scala 859:48]
  wire [31:0] _theta_14_T = _fxxterm_T_52 ? _fxthetaterm_T_41 : 32'h8000; // @[CORDIC.scala 861:46]
  wire [31:0] theta_14 = $signed(theta_13) + $signed(_theta_14_T); // @[CORDIC.scala 861:32]
  wire [18:0] _GEN_24 = fxyterm_13[31:13]; // @[CORDIC.scala 862:35]
  wire [31:0] _x_14_T = {{13{_GEN_24[18]}},_GEN_24}; // @[CORDIC.scala 862:35]
  wire [31:0] x_14 = $signed(x_13) - $signed(_x_14_T); // @[CORDIC.scala 862:24]
  wire [18:0] _GEN_25 = fxxterm_13[31:13]; // @[CORDIC.scala 863:28]
  wire [31:0] _y_14_T = {{13{_GEN_25[18]}},_GEN_25}; // @[CORDIC.scala 863:28]
  wire [31:0] y_14 = $signed(_y_14_T) + $signed(y_13); // @[CORDIC.scala 863:48]
  wire  _fxxterm_T_56 = $signed(theta_14) > $signed(z0sr_0); // @[CORDIC.scala 835:34]
  wire [31:0] _fxxterm_T_59 = 32'sh0 - $signed(x_14); // @[CORDIC.scala 835:44]
  wire [31:0] fxxterm_14 = $signed(theta_14) > $signed(z0sr_0) ? $signed(_fxxterm_T_59) : $signed(x_14); // @[CORDIC.scala 835:24]
  wire [31:0] _fxyterm_T_59 = 32'sh0 - $signed(y_14); // @[CORDIC.scala 836:44]
  wire [31:0] fxyterm_14 = _fxxterm_T_56 ? $signed(_fxyterm_T_59) : $signed(y_14); // @[CORDIC.scala 836:24]
  wire [17:0] _GEN_26 = fxyterm_14[31:14]; // @[CORDIC.scala 840:35]
  wire [31:0] _x_15_T = {{14{_GEN_26[17]}},_GEN_26}; // @[CORDIC.scala 840:35]
  wire [31:0] x_15 = $signed(x_14) - $signed(_x_15_T); // @[CORDIC.scala 840:24]
  wire [17:0] _GEN_27 = fxxterm_14[31:14]; // @[CORDIC.scala 841:28]
  wire [31:0] _y_15_T = {{14{_GEN_27[17]}},_GEN_27}; // @[CORDIC.scala 841:28]
  wire [31:0] y_15 = $signed(_y_15_T) + $signed(y_14); // @[CORDIC.scala 841:48]
  wire [31:0] _GEN_30 = reset ? 32'h0 : io_in_mode; // @[CORDIC.scala 472:{23,23} 524:13]
  FloatToFixed32 tofixedx0 ( // @[CORDIC.scala 502:25]
    .io_in(tofixedx0_io_in),
    .io_out(tofixedx0_io_out)
  );
  FloatToFixed32 tofixedy0 ( // @[CORDIC.scala 503:25]
    .io_in(tofixedy0_io_in),
    .io_out(tofixedy0_io_out)
  );
  FixedToFloat32 tofloatxout ( // @[CORDIC.scala 874:29]
    .io_in(tofloatxout_io_in),
    .io_out(tofloatxout_io_out)
  );
  FixedToFloat32 tofloatyout ( // @[CORDIC.scala 875:29]
    .io_in(tofloatyout_io_in),
    .io_out(tofloatyout_io_out)
  );
  FixedToFloat32 tofloatzout ( // @[CORDIC.scala 876:29]
    .io_in(tofloatzout_io_in),
    .io_out(tofloatzout_io_out)
  );
  assign io_out_x = tofloatxout_io_out; // @[CORDIC.scala 884:14]
  assign io_out_mode = modesr_1; // @[CORDIC.scala 882:17]
  assign tofixedx0_io_in = 32'h3f1b74ee; // @[CORDIC.scala 505:19]
  assign tofixedy0_io_in = 32'h0; // @[CORDIC.scala 506:19]
  assign tofloatxout_io_in = xr_1; // @[CORDIC.scala 879:32]
  assign tofloatyout_io_in = yr_1; // @[CORDIC.scala 880:32]
  assign tofloatzout_io_in = z0sr_1; // @[CORDIC.scala 881:34]
  always @(posedge clock) begin
    if (reset) begin // @[CORDIC.scala 468:19]
      xr_0 <= 32'sh0; // @[CORDIC.scala 468:19]
    end else begin
      xr_0 <= tofixedx0_io_out; // @[CORDIC.scala 521:9]
    end
    if (reset) begin // @[CORDIC.scala 468:19]
      xr_1 <= 32'sh0; // @[CORDIC.scala 468:19]
    end else begin
      xr_1 <= x_15; // @[CORDIC.scala 849:13]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      yr_0 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      yr_0 <= tofixedy0_io_out; // @[CORDIC.scala 522:9]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      yr_1 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      yr_1 <= y_15; // @[CORDIC.scala 850:13]
    end
    if (reset) begin // @[CORDIC.scala 471:21]
      z0sr_0 <= 32'sh0; // @[CORDIC.scala 471:21]
    end else begin
      z0sr_0 <= io_in_z0; // @[CORDIC.scala 523:11]
    end
    if (reset) begin // @[CORDIC.scala 471:21]
      z0sr_1 <= 32'sh0; // @[CORDIC.scala 471:21]
    end else begin
      z0sr_1 <= z0sr_0; // @[CORDIC.scala 851:15]
    end
    modesr_0 <= _GEN_30[1:0]; // @[CORDIC.scala 472:{23,23} 524:13]
    if (reset) begin // @[CORDIC.scala 472:23]
      modesr_1 <= 2'h0; // @[CORDIC.scala 472:23]
    end else begin
      modesr_1 <= modesr_0; // @[CORDIC.scala 852:17]
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
  yr_0 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  yr_1 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  z0sr_0 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  z0sr_1 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  modesr_0 = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  modesr_1 = _RAND_7[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
