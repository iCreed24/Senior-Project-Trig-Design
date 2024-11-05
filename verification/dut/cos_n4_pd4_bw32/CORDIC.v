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
  wire [31:0] tofloatxout_io_in; // @[CORDIC.scala 705:29]
  wire [31:0] tofloatxout_io_out; // @[CORDIC.scala 705:29]
  wire [31:0] tofloatyout_io_in; // @[CORDIC.scala 706:29]
  wire [31:0] tofloatyout_io_out; // @[CORDIC.scala 706:29]
  wire [31:0] tofloatzout_io_in; // @[CORDIC.scala 707:29]
  wire [31:0] tofloatzout_io_out; // @[CORDIC.scala 707:29]
  reg [31:0] xr_0; // @[CORDIC.scala 468:19]
  reg [31:0] xr_1; // @[CORDIC.scala 468:19]
  reg [31:0] yr_0; // @[CORDIC.scala 469:19]
  reg [31:0] yr_1; // @[CORDIC.scala 469:19]
  reg [31:0] z0sr_0; // @[CORDIC.scala 471:21]
  reg [31:0] z0sr_1; // @[CORDIC.scala 471:21]
  reg [1:0] modesr_0; // @[CORDIC.scala 472:23]
  reg [1:0] modesr_1; // @[CORDIC.scala 472:23]
  wire  _fxxterm_T = 32'sh0 > $signed(z0sr_0); // @[CORDIC.scala 649:39]
  wire [31:0] _fxxterm_T_3 = 32'sh0 - $signed(xr_0); // @[CORDIC.scala 649:52]
  wire [31:0] fxxterm = 32'sh0 > $signed(z0sr_0) ? $signed(_fxxterm_T_3) : $signed(xr_0); // @[CORDIC.scala 649:26]
  wire [31:0] _fxyterm_T_3 = 32'sh0 - $signed(yr_0); // @[CORDIC.scala 650:52]
  wire [31:0] fxyterm = _fxxterm_T ? $signed(_fxyterm_T_3) : $signed(yr_0); // @[CORDIC.scala 650:26]
  wire [31:0] _fxthetaterm_T_2 = 32'h0 - 32'hc90fdb0; // @[CORDIC.scala 651:56]
  wire [31:0] _theta_1_T = _fxxterm_T ? _fxthetaterm_T_2 : 32'hc90fdb0; // @[CORDIC.scala 653:51]
  wire [32:0] _theta_1_T_1 = {{1{_theta_1_T[31]}},_theta_1_T}; // @[CORDIC.scala 653:37]
  wire [31:0] theta_1 = _theta_1_T_1[31:0]; // @[CORDIC.scala 653:37]
  wire [31:0] x_1 = $signed(xr_0) - $signed(fxyterm); // @[CORDIC.scala 654:29]
  wire [31:0] y_1 = $signed(fxxterm) + $signed(yr_0); // @[CORDIC.scala 655:50]
  wire  _fxxterm_T_4 = $signed(theta_1) > $signed(z0sr_0); // @[CORDIC.scala 665:36]
  wire [31:0] _fxxterm_T_7 = 32'sh0 - $signed(x_1); // @[CORDIC.scala 665:46]
  wire [31:0] fxxterm_1 = $signed(theta_1) > $signed(z0sr_0) ? $signed(_fxxterm_T_7) : $signed(x_1); // @[CORDIC.scala 665:26]
  wire [31:0] _fxyterm_T_7 = 32'sh0 - $signed(y_1); // @[CORDIC.scala 666:46]
  wire [31:0] fxyterm_1 = _fxxterm_T_4 ? $signed(_fxyterm_T_7) : $signed(y_1); // @[CORDIC.scala 666:26]
  wire [31:0] _fxthetaterm_T_5 = 32'h0 - 32'h76b19c0; // @[CORDIC.scala 667:50]
  wire [31:0] _theta_2_T = _fxxterm_T_4 ? _fxthetaterm_T_5 : 32'h76b19c0; // @[CORDIC.scala 669:48]
  wire [31:0] theta_2 = $signed(theta_1) + $signed(_theta_2_T); // @[CORDIC.scala 669:34]
  wire [30:0] _GEN_0 = fxyterm_1[31:1]; // @[CORDIC.scala 670:37]
  wire [31:0] _x_2_T = {{1{_GEN_0[30]}},_GEN_0}; // @[CORDIC.scala 670:37]
  wire [31:0] x_2 = $signed(x_1) - $signed(_x_2_T); // @[CORDIC.scala 670:26]
  wire [30:0] _GEN_1 = fxxterm_1[31:1]; // @[CORDIC.scala 671:30]
  wire [31:0] _y_2_T = {{1{_GEN_1[30]}},_GEN_1}; // @[CORDIC.scala 671:30]
  wire [31:0] y_2 = $signed(_y_2_T) + $signed(y_1); // @[CORDIC.scala 671:50]
  wire  _fxxterm_T_8 = $signed(theta_2) > $signed(z0sr_0); // @[CORDIC.scala 665:36]
  wire [31:0] _fxxterm_T_11 = 32'sh0 - $signed(x_2); // @[CORDIC.scala 665:46]
  wire [31:0] fxxterm_2 = $signed(theta_2) > $signed(z0sr_0) ? $signed(_fxxterm_T_11) : $signed(x_2); // @[CORDIC.scala 665:26]
  wire [31:0] _fxyterm_T_11 = 32'sh0 - $signed(y_2); // @[CORDIC.scala 666:46]
  wire [31:0] fxyterm_2 = _fxxterm_T_8 ? $signed(_fxyterm_T_11) : $signed(y_2); // @[CORDIC.scala 666:26]
  wire [31:0] _fxthetaterm_T_8 = 32'h0 - 32'h3eb6ec0; // @[CORDIC.scala 667:50]
  wire [31:0] _theta_3_T = _fxxterm_T_8 ? _fxthetaterm_T_8 : 32'h3eb6ec0; // @[CORDIC.scala 669:48]
  wire [31:0] theta_3 = $signed(theta_2) + $signed(_theta_3_T); // @[CORDIC.scala 669:34]
  wire [29:0] _GEN_2 = fxyterm_2[31:2]; // @[CORDIC.scala 670:37]
  wire [31:0] _x_3_T = {{2{_GEN_2[29]}},_GEN_2}; // @[CORDIC.scala 670:37]
  wire [31:0] x_3 = $signed(x_2) - $signed(_x_3_T); // @[CORDIC.scala 670:26]
  wire [29:0] _GEN_3 = fxxterm_2[31:2]; // @[CORDIC.scala 671:30]
  wire [31:0] _y_3_T = {{2{_GEN_3[29]}},_GEN_3}; // @[CORDIC.scala 671:30]
  wire [31:0] y_3 = $signed(_y_3_T) + $signed(y_2); // @[CORDIC.scala 671:50]
  wire  _fxxterm_T_12 = $signed(theta_3) > $signed(z0sr_0); // @[CORDIC.scala 681:36]
  wire [31:0] _fxxterm_T_15 = 32'sh0 - $signed(x_3); // @[CORDIC.scala 681:46]
  wire [31:0] fxxterm_3 = $signed(theta_3) > $signed(z0sr_0) ? $signed(_fxxterm_T_15) : $signed(x_3); // @[CORDIC.scala 681:26]
  wire [31:0] _fxyterm_T_15 = 32'sh0 - $signed(y_3); // @[CORDIC.scala 682:46]
  wire [31:0] fxyterm_3 = _fxxterm_T_12 ? $signed(_fxyterm_T_15) : $signed(y_3); // @[CORDIC.scala 682:26]
  wire [28:0] _GEN_4 = fxyterm_3[31:3]; // @[CORDIC.scala 686:37]
  wire [31:0] _x_4_T = {{3{_GEN_4[28]}},_GEN_4}; // @[CORDIC.scala 686:37]
  wire [31:0] x_4 = $signed(x_3) - $signed(_x_4_T); // @[CORDIC.scala 686:26]
  wire [28:0] _GEN_5 = fxxterm_3[31:3]; // @[CORDIC.scala 687:30]
  wire [31:0] _y_4_T = {{3{_GEN_5[28]}},_GEN_5}; // @[CORDIC.scala 687:30]
  wire [31:0] y_4 = $signed(_y_4_T) + $signed(y_3); // @[CORDIC.scala 687:50]
  wire [31:0] _GEN_6 = reset ? 32'h0 : io_in_mode; // @[CORDIC.scala 472:{23,23} 524:13]
  FloatToFixed32 tofixedx0 ( // @[CORDIC.scala 502:25]
    .io_in(tofixedx0_io_in),
    .io_out(tofixedx0_io_out)
  );
  FloatToFixed32 tofixedy0 ( // @[CORDIC.scala 503:25]
    .io_in(tofixedy0_io_in),
    .io_out(tofixedy0_io_out)
  );
  FixedToFloat32 tofloatxout ( // @[CORDIC.scala 705:29]
    .io_in(tofloatxout_io_in),
    .io_out(tofloatxout_io_out)
  );
  FixedToFloat32 tofloatyout ( // @[CORDIC.scala 706:29]
    .io_in(tofloatyout_io_in),
    .io_out(tofloatyout_io_out)
  );
  FixedToFloat32 tofloatzout ( // @[CORDIC.scala 707:29]
    .io_in(tofloatzout_io_in),
    .io_out(tofloatzout_io_out)
  );
  assign io_out_x = tofloatxout_io_out; // @[CORDIC.scala 715:14]
  assign io_out_mode = modesr_1; // @[CORDIC.scala 713:17]
  assign tofixedx0_io_in = 32'h3f1b74ee; // @[CORDIC.scala 505:19]
  assign tofixedy0_io_in = 32'h0; // @[CORDIC.scala 506:19]
  assign tofloatxout_io_in = xr_1; // @[CORDIC.scala 710:34]
  assign tofloatyout_io_in = yr_1; // @[CORDIC.scala 711:34]
  assign tofloatzout_io_in = z0sr_1; // @[CORDIC.scala 712:36]
  always @(posedge clock) begin
    if (reset) begin // @[CORDIC.scala 468:19]
      xr_0 <= 32'sh0; // @[CORDIC.scala 468:19]
    end else begin
      xr_0 <= tofixedx0_io_out; // @[CORDIC.scala 521:9]
    end
    if (reset) begin // @[CORDIC.scala 468:19]
      xr_1 <= 32'sh0; // @[CORDIC.scala 468:19]
    end else begin
      xr_1 <= x_4; // @[CORDIC.scala 695:17]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      yr_0 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      yr_0 <= tofixedy0_io_out; // @[CORDIC.scala 522:9]
    end
    if (reset) begin // @[CORDIC.scala 469:19]
      yr_1 <= 32'sh0; // @[CORDIC.scala 469:19]
    end else begin
      yr_1 <= y_4; // @[CORDIC.scala 696:17]
    end
    if (reset) begin // @[CORDIC.scala 471:21]
      z0sr_0 <= 32'sh0; // @[CORDIC.scala 471:21]
    end else begin
      z0sr_0 <= io_in_z0; // @[CORDIC.scala 523:11]
    end
    if (reset) begin // @[CORDIC.scala 471:21]
      z0sr_1 <= 32'sh0; // @[CORDIC.scala 471:21]
    end else begin
      z0sr_1 <= z0sr_0; // @[CORDIC.scala 697:19]
    end
    modesr_0 <= _GEN_6[1:0]; // @[CORDIC.scala 472:{23,23} 524:13]
    if (reset) begin // @[CORDIC.scala 472:23]
      modesr_1 <= 2'h0; // @[CORDIC.scala 472:23]
    end else begin
      modesr_1 <= modesr_0; // @[CORDIC.scala 698:21]
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
