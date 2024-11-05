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
`endif // RANDOMIZE_REG_INIT
  wire [31:0] tofixedx0_io_in; // @[CORDIC.scala 502:25]
  wire [31:0] tofixedx0_io_out; // @[CORDIC.scala 502:25]
  wire [31:0] tofixedy0_io_in; // @[CORDIC.scala 503:25]
  wire [31:0] tofixedy0_io_out; // @[CORDIC.scala 503:25]
  wire [31:0] tofloatxout_io_in; // @[CORDIC.scala 622:29]
  wire [31:0] tofloatxout_io_out; // @[CORDIC.scala 622:29]
  wire [31:0] tofloatyout_io_in; // @[CORDIC.scala 623:29]
  wire [31:0] tofloatyout_io_out; // @[CORDIC.scala 623:29]
  wire [31:0] tofloatzout_io_in; // @[CORDIC.scala 624:29]
  wire [31:0] tofloatzout_io_out; // @[CORDIC.scala 624:29]
  reg [31:0] xr_0; // @[CORDIC.scala 468:19]
  reg [31:0] xr_1; // @[CORDIC.scala 468:19]
  reg [31:0] xr_2; // @[CORDIC.scala 468:19]
  reg [31:0] xr_3; // @[CORDIC.scala 468:19]
  reg [31:0] xr_4; // @[CORDIC.scala 468:19]
  reg [31:0] yr_0; // @[CORDIC.scala 469:19]
  reg [31:0] yr_1; // @[CORDIC.scala 469:19]
  reg [31:0] yr_2; // @[CORDIC.scala 469:19]
  reg [31:0] yr_3; // @[CORDIC.scala 469:19]
  reg [31:0] yr_4; // @[CORDIC.scala 469:19]
  reg [31:0] thetar_1; // @[CORDIC.scala 470:23]
  reg [31:0] thetar_2; // @[CORDIC.scala 470:23]
  reg [31:0] thetar_3; // @[CORDIC.scala 470:23]
  reg [31:0] z0sr_0; // @[CORDIC.scala 471:21]
  reg [31:0] z0sr_1; // @[CORDIC.scala 471:21]
  reg [31:0] z0sr_2; // @[CORDIC.scala 471:21]
  reg [31:0] z0sr_3; // @[CORDIC.scala 471:21]
  reg [31:0] z0sr_4; // @[CORDIC.scala 471:21]
  reg [1:0] modesr_0; // @[CORDIC.scala 472:23]
  reg [1:0] modesr_1; // @[CORDIC.scala 472:23]
  reg [1:0] modesr_2; // @[CORDIC.scala 472:23]
  reg [1:0] modesr_3; // @[CORDIC.scala 472:23]
  reg [1:0] modesr_4; // @[CORDIC.scala 472:23]
  wire  _fxxterm_T = 32'sh0 > $signed(z0sr_0); // @[CORDIC.scala 590:42]
  wire [31:0] _fxxterm_T_3 = 32'sh0 - $signed(xr_0); // @[CORDIC.scala 590:56]
  wire [31:0] fxxterm = 32'sh0 > $signed(z0sr_0) ? $signed(_fxxterm_T_3) : $signed(xr_0); // @[CORDIC.scala 590:28]
  wire [31:0] _fxyterm_T_3 = 32'sh0 - $signed(yr_0); // @[CORDIC.scala 591:56]
  wire [31:0] fxyterm = _fxxterm_T ? $signed(_fxyterm_T_3) : $signed(yr_0); // @[CORDIC.scala 591:28]
  wire [31:0] _fxthetaterm_T_2 = 32'h0 - 32'hc90fdb0; // @[CORDIC.scala 592:60]
  wire [31:0] _theta_1_T = _fxxterm_T ? _fxthetaterm_T_2 : 32'hc90fdb0; // @[CORDIC.scala 594:54]
  wire [32:0] _theta_1_T_1 = {{1{_theta_1_T[31]}},_theta_1_T}; // @[CORDIC.scala 594:40]
  wire [31:0] theta_1 = _theta_1_T_1[31:0]; // @[CORDIC.scala 594:40]
  wire [31:0] x_1 = $signed(xr_0) - $signed(fxyterm); // @[CORDIC.scala 595:32]
  wire [31:0] y_1 = $signed(fxxterm) + $signed(yr_0); // @[CORDIC.scala 596:56]
  wire  _fxxterm_T_4 = $signed(theta_1) > $signed(z0sr_0); // @[CORDIC.scala 602:42]
  wire [31:0] _fxxterm_T_7 = 32'sh0 - $signed(x_1); // @[CORDIC.scala 602:56]
  wire [31:0] fxxterm_1 = $signed(theta_1) > $signed(z0sr_0) ? $signed(_fxxterm_T_7) : $signed(x_1); // @[CORDIC.scala 602:28]
  wire [31:0] _fxyterm_T_7 = 32'sh0 - $signed(y_1); // @[CORDIC.scala 603:56]
  wire [31:0] fxyterm_1 = _fxxterm_T_4 ? $signed(_fxyterm_T_7) : $signed(y_1); // @[CORDIC.scala 603:28]
  wire [31:0] _fxthetaterm_T_5 = 32'h0 - 32'h76b19c0; // @[CORDIC.scala 604:60]
  wire [31:0] _theta_2_T = _fxxterm_T_4 ? _fxthetaterm_T_5 : 32'h76b19c0; // @[CORDIC.scala 606:54]
  wire [31:0] theta_2 = $signed(theta_1) + $signed(_theta_2_T); // @[CORDIC.scala 606:40]
  wire [30:0] _GEN_0 = fxyterm_1[31:1]; // @[CORDIC.scala 607:43]
  wire [31:0] _x_2_T = {{1{_GEN_0[30]}},_GEN_0}; // @[CORDIC.scala 607:43]
  wire [31:0] x_2 = $signed(x_1) - $signed(_x_2_T); // @[CORDIC.scala 607:32]
  wire [30:0] _GEN_1 = fxxterm_1[31:1]; // @[CORDIC.scala 608:32]
  wire [31:0] _y_2_T = {{1{_GEN_1[30]}},_GEN_1}; // @[CORDIC.scala 608:32]
  wire [31:0] y_2 = $signed(_y_2_T) + $signed(y_1); // @[CORDIC.scala 608:56]
  wire  _fxxterm_T_8 = $signed(thetar_1) > $signed(z0sr_1); // @[CORDIC.scala 590:42]
  wire [31:0] _fxxterm_T_11 = 32'sh0 - $signed(xr_1); // @[CORDIC.scala 590:56]
  wire [31:0] fxxterm_2 = $signed(thetar_1) > $signed(z0sr_1) ? $signed(_fxxterm_T_11) : $signed(xr_1); // @[CORDIC.scala 590:28]
  wire [31:0] _fxyterm_T_11 = 32'sh0 - $signed(yr_1); // @[CORDIC.scala 591:56]
  wire [31:0] fxyterm_2 = _fxxterm_T_8 ? $signed(_fxyterm_T_11) : $signed(yr_1); // @[CORDIC.scala 591:28]
  wire [31:0] _fxthetaterm_T_8 = 32'h0 - 32'h3eb6ec0; // @[CORDIC.scala 592:60]
  wire [31:0] _theta_3_T = _fxxterm_T_8 ? _fxthetaterm_T_8 : 32'h3eb6ec0; // @[CORDIC.scala 594:54]
  wire [31:0] theta_3 = $signed(thetar_1) + $signed(_theta_3_T); // @[CORDIC.scala 594:40]
  wire [29:0] _GEN_2 = fxyterm_2[31:2]; // @[CORDIC.scala 595:43]
  wire [31:0] _x_3_T = {{2{_GEN_2[29]}},_GEN_2}; // @[CORDIC.scala 595:43]
  wire [31:0] x_3 = $signed(xr_1) - $signed(_x_3_T); // @[CORDIC.scala 595:32]
  wire [29:0] _GEN_3 = fxxterm_2[31:2]; // @[CORDIC.scala 596:32]
  wire [31:0] _y_3_T = {{2{_GEN_3[29]}},_GEN_3}; // @[CORDIC.scala 596:32]
  wire [31:0] y_3 = $signed(_y_3_T) + $signed(yr_1); // @[CORDIC.scala 596:56]
  wire  _fxxterm_T_12 = $signed(theta_3) > $signed(z0sr_1); // @[CORDIC.scala 602:42]
  wire [31:0] _fxxterm_T_15 = 32'sh0 - $signed(x_3); // @[CORDIC.scala 602:56]
  wire [31:0] fxxterm_3 = $signed(theta_3) > $signed(z0sr_1) ? $signed(_fxxterm_T_15) : $signed(x_3); // @[CORDIC.scala 602:28]
  wire [31:0] _fxyterm_T_15 = 32'sh0 - $signed(y_3); // @[CORDIC.scala 603:56]
  wire [31:0] fxyterm_3 = _fxxterm_T_12 ? $signed(_fxyterm_T_15) : $signed(y_3); // @[CORDIC.scala 603:28]
  wire [31:0] _fxthetaterm_T_11 = 32'h0 - 32'h1fd5baa; // @[CORDIC.scala 604:60]
  wire [31:0] _theta_4_T = _fxxterm_T_12 ? _fxthetaterm_T_11 : 32'h1fd5baa; // @[CORDIC.scala 606:54]
  wire [31:0] theta_4 = $signed(theta_3) + $signed(_theta_4_T); // @[CORDIC.scala 606:40]
  wire [28:0] _GEN_4 = fxyterm_3[31:3]; // @[CORDIC.scala 607:43]
  wire [31:0] _x_4_T = {{3{_GEN_4[28]}},_GEN_4}; // @[CORDIC.scala 607:43]
  wire [31:0] x_4 = $signed(x_3) - $signed(_x_4_T); // @[CORDIC.scala 607:32]
  wire [28:0] _GEN_5 = fxxterm_3[31:3]; // @[CORDIC.scala 608:32]
  wire [31:0] _y_4_T = {{3{_GEN_5[28]}},_GEN_5}; // @[CORDIC.scala 608:32]
  wire [31:0] y_4 = $signed(_y_4_T) + $signed(y_3); // @[CORDIC.scala 608:56]
  wire  _fxxterm_T_16 = $signed(thetar_2) > $signed(z0sr_2); // @[CORDIC.scala 590:42]
  wire [31:0] _fxxterm_T_19 = 32'sh0 - $signed(xr_2); // @[CORDIC.scala 590:56]
  wire [31:0] fxxterm_4 = $signed(thetar_2) > $signed(z0sr_2) ? $signed(_fxxterm_T_19) : $signed(xr_2); // @[CORDIC.scala 590:28]
  wire [31:0] _fxyterm_T_19 = 32'sh0 - $signed(yr_2); // @[CORDIC.scala 591:56]
  wire [31:0] fxyterm_4 = _fxxterm_T_16 ? $signed(_fxyterm_T_19) : $signed(yr_2); // @[CORDIC.scala 591:28]
  wire [31:0] _fxthetaterm_T_14 = 32'h0 - 32'hffaade; // @[CORDIC.scala 592:60]
  wire [31:0] _theta_5_T = _fxxterm_T_16 ? _fxthetaterm_T_14 : 32'hffaade; // @[CORDIC.scala 594:54]
  wire [31:0] theta_5 = $signed(thetar_2) + $signed(_theta_5_T); // @[CORDIC.scala 594:40]
  wire [27:0] _GEN_6 = fxyterm_4[31:4]; // @[CORDIC.scala 595:43]
  wire [31:0] _x_5_T = {{4{_GEN_6[27]}},_GEN_6}; // @[CORDIC.scala 595:43]
  wire [31:0] x_5 = $signed(xr_2) - $signed(_x_5_T); // @[CORDIC.scala 595:32]
  wire [27:0] _GEN_7 = fxxterm_4[31:4]; // @[CORDIC.scala 596:32]
  wire [31:0] _y_5_T = {{4{_GEN_7[27]}},_GEN_7}; // @[CORDIC.scala 596:32]
  wire [31:0] y_5 = $signed(_y_5_T) + $signed(yr_2); // @[CORDIC.scala 596:56]
  wire  _fxxterm_T_20 = $signed(theta_5) > $signed(z0sr_2); // @[CORDIC.scala 602:42]
  wire [31:0] _fxxterm_T_23 = 32'sh0 - $signed(x_5); // @[CORDIC.scala 602:56]
  wire [31:0] fxxterm_5 = $signed(theta_5) > $signed(z0sr_2) ? $signed(_fxxterm_T_23) : $signed(x_5); // @[CORDIC.scala 602:28]
  wire [31:0] _fxyterm_T_23 = 32'sh0 - $signed(y_5); // @[CORDIC.scala 603:56]
  wire [31:0] fxyterm_5 = _fxxterm_T_20 ? $signed(_fxyterm_T_23) : $signed(y_5); // @[CORDIC.scala 603:28]
  wire [31:0] _fxthetaterm_T_17 = 32'h0 - 32'h7ff557; // @[CORDIC.scala 604:60]
  wire [31:0] _theta_6_T = _fxxterm_T_20 ? _fxthetaterm_T_17 : 32'h7ff557; // @[CORDIC.scala 606:54]
  wire [31:0] theta_6 = $signed(theta_5) + $signed(_theta_6_T); // @[CORDIC.scala 606:40]
  wire [26:0] _GEN_8 = fxyterm_5[31:5]; // @[CORDIC.scala 607:43]
  wire [31:0] _x_6_T = {{5{_GEN_8[26]}},_GEN_8}; // @[CORDIC.scala 607:43]
  wire [31:0] x_6 = $signed(x_5) - $signed(_x_6_T); // @[CORDIC.scala 607:32]
  wire [26:0] _GEN_9 = fxxterm_5[31:5]; // @[CORDIC.scala 608:32]
  wire [31:0] _y_6_T = {{5{_GEN_9[26]}},_GEN_9}; // @[CORDIC.scala 608:32]
  wire [31:0] y_6 = $signed(_y_6_T) + $signed(y_5); // @[CORDIC.scala 608:56]
  wire  _fxxterm_T_24 = $signed(thetar_3) > $signed(z0sr_3); // @[CORDIC.scala 590:42]
  wire [31:0] _fxxterm_T_27 = 32'sh0 - $signed(xr_3); // @[CORDIC.scala 590:56]
  wire [31:0] fxxterm_6 = $signed(thetar_3) > $signed(z0sr_3) ? $signed(_fxxterm_T_27) : $signed(xr_3); // @[CORDIC.scala 590:28]
  wire [31:0] _fxyterm_T_27 = 32'sh0 - $signed(yr_3); // @[CORDIC.scala 591:56]
  wire [31:0] fxyterm_6 = _fxxterm_T_24 ? $signed(_fxyterm_T_27) : $signed(yr_3); // @[CORDIC.scala 591:28]
  wire [31:0] _fxthetaterm_T_20 = 32'h0 - 32'h3ffeaa; // @[CORDIC.scala 592:60]
  wire [31:0] _theta_7_T = _fxxterm_T_24 ? _fxthetaterm_T_20 : 32'h3ffeaa; // @[CORDIC.scala 594:54]
  wire [31:0] theta_7 = $signed(thetar_3) + $signed(_theta_7_T); // @[CORDIC.scala 594:40]
  wire [25:0] _GEN_10 = fxyterm_6[31:6]; // @[CORDIC.scala 595:43]
  wire [31:0] _x_7_T = {{6{_GEN_10[25]}},_GEN_10}; // @[CORDIC.scala 595:43]
  wire [31:0] x_7 = $signed(xr_3) - $signed(_x_7_T); // @[CORDIC.scala 595:32]
  wire [25:0] _GEN_11 = fxxterm_6[31:6]; // @[CORDIC.scala 596:32]
  wire [31:0] _y_7_T = {{6{_GEN_11[25]}},_GEN_11}; // @[CORDIC.scala 596:32]
  wire [31:0] y_7 = $signed(_y_7_T) + $signed(yr_3); // @[CORDIC.scala 596:56]
  wire  _fxxterm_T_28 = $signed(theta_7) > $signed(z0sr_3); // @[CORDIC.scala 602:42]
  wire [31:0] _fxxterm_T_31 = 32'sh0 - $signed(x_7); // @[CORDIC.scala 602:56]
  wire [31:0] fxxterm_7 = $signed(theta_7) > $signed(z0sr_3) ? $signed(_fxxterm_T_31) : $signed(x_7); // @[CORDIC.scala 602:28]
  wire [31:0] _fxyterm_T_31 = 32'sh0 - $signed(y_7); // @[CORDIC.scala 603:56]
  wire [31:0] fxyterm_7 = _fxxterm_T_28 ? $signed(_fxyterm_T_31) : $signed(y_7); // @[CORDIC.scala 603:28]
  wire [24:0] _GEN_12 = fxyterm_7[31:7]; // @[CORDIC.scala 607:43]
  wire [31:0] _x_8_T = {{7{_GEN_12[24]}},_GEN_12}; // @[CORDIC.scala 607:43]
  wire [31:0] x_8 = $signed(x_7) - $signed(_x_8_T); // @[CORDIC.scala 607:32]
  wire [24:0] _GEN_13 = fxxterm_7[31:7]; // @[CORDIC.scala 608:32]
  wire [31:0] _y_8_T = {{7{_GEN_13[24]}},_GEN_13}; // @[CORDIC.scala 608:32]
  wire [31:0] y_8 = $signed(_y_8_T) + $signed(y_7); // @[CORDIC.scala 608:56]
  wire [31:0] _GEN_14 = reset ? 32'h0 : io_in_mode; // @[CORDIC.scala 472:{23,23} 524:13]
  FloatToFixed32 tofixedx0 ( // @[CORDIC.scala 502:25]
    .io_in(tofixedx0_io_in),
    .io_out(tofixedx0_io_out)
  );
  FloatToFixed32 tofixedy0 ( // @[CORDIC.scala 503:25]
    .io_in(tofixedy0_io_in),
    .io_out(tofixedy0_io_out)
  );
  FixedToFloat32 tofloatxout ( // @[CORDIC.scala 622:29]
    .io_in(tofloatxout_io_in),
    .io_out(tofloatxout_io_out)
  );
  FixedToFloat32 tofloatyout ( // @[CORDIC.scala 623:29]
    .io_in(tofloatyout_io_in),
    .io_out(tofloatyout_io_out)
  );
  FixedToFloat32 tofloatzout ( // @[CORDIC.scala 624:29]
    .io_in(tofloatzout_io_in),
    .io_out(tofloatzout_io_out)
  );
  assign io_out_x = tofloatxout_io_out; // @[CORDIC.scala 632:14]
  assign io_out_mode = modesr_4; // @[CORDIC.scala 630:17]
  assign tofixedx0_io_in = 32'h3f1b74ee; // @[CORDIC.scala 505:19]
  assign tofixedy0_io_in = 32'h0; // @[CORDIC.scala 506:19]
  assign tofloatxout_io_in = xr_4; // @[CORDIC.scala 627:35]
  assign tofloatyout_io_in = yr_4; // @[CORDIC.scala 628:35]
  assign tofloatzout_io_in = z0sr_4; // @[CORDIC.scala 629:37]
  always @(posedge clock) begin
    if (reset) begin // @[CORDIC.scala 468:19]
      xr_0 <= 32'sh0; // @[CORDIC.scala 468:19]
    end else begin
      xr_0 <= tofixedx0_io_out; // @[CORDIC.scala 521:9]
    end
    if (reset) begin // @[CORDIC.scala 468:19]
      xr_1 <= 32'sh0; // @[CORDIC.scala 468:19]
    end else begin
      xr_1 <= x_2; // @[CORDIC.scala 615:20]
    end
    if (reset) begin // @[CORDIC.scala 468:19]
      xr_2 <= 32'sh0; // @[CORDIC.scala 468:19]
    end else begin
      xr_2 <= x_4; // @[CORDIC.scala 615:20]
    end
    if (reset) begin // @[CORDIC.scala 468:19]
      xr_3 <= 32'sh0; // @[CORDIC.scala 468:19]
    end else begin
      xr_3 <= x_6; // @[CORDIC.scala 615:20]
    end
    if (reset) begin // @[CORDIC.scala 468:19]
      xr_4 <= 32'sh0; // @[CORDIC.scala 468:19]
    end else begin
      xr_4 <= x_8; // @[CORDIC.scala 615:20]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      yr_0 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      yr_0 <= tofixedy0_io_out; // @[CORDIC.scala 522:9]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      yr_1 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      yr_1 <= y_2; // @[CORDIC.scala 616:20]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      yr_2 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      yr_2 <= y_4; // @[CORDIC.scala 616:20]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      yr_3 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      yr_3 <= y_6; // @[CORDIC.scala 616:20]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      yr_4 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      yr_4 <= y_8; // @[CORDIC.scala 616:20]
    end
    if (reset) begin // @[CORDIC.scala 470:23]
      thetar_1 <= 32'sh0; // @[CORDIC.scala 470:23]
    end else begin
      thetar_1 <= theta_2; // @[CORDIC.scala 614:24]
    end
    if (reset) begin // @[CORDIC.scala 470:23]
      thetar_2 <= 32'sh0; // @[CORDIC.scala 470:23]
    end else begin
      thetar_2 <= theta_4; // @[CORDIC.scala 614:24]
    end
    if (reset) begin // @[CORDIC.scala 470:23]
      thetar_3 <= 32'sh0; // @[CORDIC.scala 470:23]
    end else begin
      thetar_3 <= theta_6; // @[CORDIC.scala 614:24]
    end
    if (reset) begin // @[CORDIC.scala 471:21]
      z0sr_0 <= 32'sh0; // @[CORDIC.scala 471:21]
    end else begin
      z0sr_0 <= io_in_z0; // @[CORDIC.scala 523:11]
    end
    if (reset) begin // @[CORDIC.scala 471:21]
      z0sr_1 <= 32'sh0; // @[CORDIC.scala 471:21]
    end else begin
      z0sr_1 <= z0sr_0; // @[CORDIC.scala 617:22]
    end
    if (reset) begin // @[CORDIC.scala 471:21]
      z0sr_2 <= 32'sh0; // @[CORDIC.scala 471:21]
    end else begin
      z0sr_2 <= z0sr_1; // @[CORDIC.scala 617:22]
    end
    if (reset) begin // @[CORDIC.scala 471:21]
      z0sr_3 <= 32'sh0; // @[CORDIC.scala 471:21]
    end else begin
      z0sr_3 <= z0sr_2; // @[CORDIC.scala 617:22]
    end
    if (reset) begin // @[CORDIC.scala 471:21]
      z0sr_4 <= 32'sh0; // @[CORDIC.scala 471:21]
    end else begin
      z0sr_4 <= z0sr_3; // @[CORDIC.scala 617:22]
    end
    modesr_0 <= _GEN_14[1:0]; // @[CORDIC.scala 472:{23,23} 524:13]
    if (reset) begin // @[CORDIC.scala 472:23]
      modesr_1 <= 2'h0; // @[CORDIC.scala 472:23]
    end else begin
      modesr_1 <= modesr_0; // @[CORDIC.scala 618:24]
    end
    if (reset) begin // @[CORDIC.scala 472:23]
      modesr_2 <= 2'h0; // @[CORDIC.scala 472:23]
    end else begin
      modesr_2 <= modesr_1; // @[CORDIC.scala 618:24]
    end
    if (reset) begin // @[CORDIC.scala 472:23]
      modesr_3 <= 2'h0; // @[CORDIC.scala 472:23]
    end else begin
      modesr_3 <= modesr_2; // @[CORDIC.scala 618:24]
    end
    if (reset) begin // @[CORDIC.scala 472:23]
      modesr_4 <= 2'h0; // @[CORDIC.scala 472:23]
    end else begin
      modesr_4 <= modesr_3; // @[CORDIC.scala 618:24]
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
  yr_0 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  yr_1 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  yr_2 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  yr_3 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  yr_4 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  thetar_1 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  thetar_2 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  thetar_3 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  z0sr_0 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  z0sr_1 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  z0sr_2 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  z0sr_3 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  z0sr_4 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  modesr_0 = _RAND_18[1:0];
  _RAND_19 = {1{`RANDOM}};
  modesr_1 = _RAND_19[1:0];
  _RAND_20 = {1{`RANDOM}};
  modesr_2 = _RAND_20[1:0];
  _RAND_21 = {1{`RANDOM}};
  modesr_3 = _RAND_21[1:0];
  _RAND_22 = {1{`RANDOM}};
  modesr_4 = _RAND_22[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
