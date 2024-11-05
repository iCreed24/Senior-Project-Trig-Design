module FP_divider_bw32(
  input         clock,
  input         reset,
  input  [31:0] io_in_a,
  output [31:0] io_out_s
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
`endif // RANDOMIZE_REG_INIT
  wire [7:0] postProcess_exp_subtractor_io_in_a; // @[FloatingPointDesigns2.scala 499:44]
  wire [7:0] postProcess_exp_subtractor_io_in_b; // @[FloatingPointDesigns2.scala 499:44]
  wire [7:0] postProcess_exp_subtractor_io_out_s; // @[FloatingPointDesigns2.scala 499:44]
  wire  postProcess_exp_subtractor_io_out_c; // @[FloatingPointDesigns2.scala 499:44]
  wire  divider_BW48_v3_clock; // @[FloatingPointDesigns2.scala 504:30]
  wire  divider_BW48_v3_reset; // @[FloatingPointDesigns2.scala 504:30]
  wire [47:0] divider_BW48_v3_io_in_a; // @[FloatingPointDesigns2.scala 504:30]
  wire [47:0] divider_BW48_v3_io_out_s; // @[FloatingPointDesigns2.scala 504:30]
  wire [7:0] _GEN_0 = io_in_a[30:23] < 8'h1 ? 8'h1 : io_in_a[30:23]; // @[FloatingPointDesigns2.scala 472:49 473:19 475:19]
  wire [22:0] frac_wire_0 = io_in_a[22:0]; // @[FloatingPointDesigns2.scala 487:28]
  wire [23:0] whole_frac_wire_0 = {1'h1,frac_wire_0}; // @[FloatingPointDesigns2.scala 492:31]
  reg  carry_flag_r; // @[Reg.scala 16:16]
  reg  carry_flag_r_1; // @[Reg.scala 16:16]
  reg  carry_flag_r_2; // @[Reg.scala 16:16]
  reg  carry_flag_r_3; // @[Reg.scala 16:16]
  reg  carry_flag_r_4; // @[Reg.scala 16:16]
  reg  carry_flag_r_5; // @[Reg.scala 16:16]
  reg  carry_flag_r_6; // @[Reg.scala 16:16]
  reg  carry_flag_r_7; // @[Reg.scala 16:16]
  reg  carry_flag_r_8; // @[Reg.scala 16:16]
  reg  carry_flag_r_9; // @[Reg.scala 16:16]
  reg  carry_flag_r_10; // @[Reg.scala 16:16]
  reg  carry_flag_r_11; // @[Reg.scala 16:16]
  reg  carry_flag_r_12; // @[Reg.scala 16:16]
  reg  carry_flag_r_13; // @[Reg.scala 16:16]
  reg  carry_flag_r_14; // @[Reg.scala 16:16]
  reg  carry_flag_r_15; // @[Reg.scala 16:16]
  reg  carry_flag_r_16; // @[Reg.scala 16:16]
  reg  carry_flag_r_17; // @[Reg.scala 16:16]
  reg  carry_flag_r_18; // @[Reg.scala 16:16]
  reg  carry_flag_r_19; // @[Reg.scala 16:16]
  reg  carry_flag_r_20; // @[Reg.scala 16:16]
  reg  carry_flag_r_21; // @[Reg.scala 16:16]
  reg  carry_flag_r_22; // @[Reg.scala 16:16]
  reg  carry_flag; // @[Reg.scala 16:16]
  wire  msb_check = divider_BW48_v3_io_out_s[24]; // @[FloatingPointDesigns2.scala 513:39]
  reg [7:0] exp_sum_r; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_1; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_2; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_3; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_4; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_5; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_6; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_7; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_8; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_9; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_10; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_11; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_12; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_13; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_14; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_15; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_16; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_17; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_18; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_19; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_20; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_21; // @[Reg.scala 16:16]
  reg [7:0] exp_sum_r_22; // @[Reg.scala 16:16]
  reg [7:0] exp_sum; // @[Reg.scala 16:16]
  reg  new_sign_reg_r; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_1; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_2; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_3; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_4; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_5; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_6; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_7; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_8; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_9; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_10; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_11; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_12; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_13; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_14; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_15; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_16; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_17; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_18; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_19; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_20; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_21; // @[Reg.scala 16:16]
  reg  new_sign_reg_r_22; // @[Reg.scala 16:16]
  reg  new_sign_reg; // @[Reg.scala 16:16]
  wire  _u_flag_reg_T_1 = ~msb_check; // @[FloatingPointDesigns2.scala 519:64]
  wire [7:0] _GEN_100 = {{7'd0}, _u_flag_reg_T_1}; // @[FloatingPointDesigns2.scala 519:60]
  wire [8:0] _u_flag_reg_T_2 = exp_sum - _GEN_100; // @[FloatingPointDesigns2.scala 519:60]
  wire  o_flag_reg = carry_flag | _u_flag_reg_T_2 < 9'h1; // @[FloatingPointDesigns2.scala 520:47]
  wire [7:0] _out_exp_T_1 = exp_sum - 8'h1; // @[FloatingPointDesigns2.scala 526:109]
  wire [7:0] _out_exp_T_2 = msb_check ? exp_sum : _out_exp_T_1; // @[FloatingPointDesigns2.scala 526:72]
  wire [7:0] out_exp = o_flag_reg ? 8'h1 : _out_exp_T_2; // @[FloatingPointDesigns2.scala 526:47]
  wire [22:0] _out_frac_T_2 = msb_check ? divider_BW48_v3_io_out_s[23:1] : divider_BW48_v3_io_out_s[22:0]; // @[FloatingPointDesigns2.scala 527:74]
  wire [22:0] out_frac = o_flag_reg ? 23'h0 : _out_frac_T_2; // @[FloatingPointDesigns2.scala 527:49]
  wire [8:0] _io_out_s_T = {new_sign_reg,out_exp}; // @[FloatingPointDesigns2.scala 528:26]
  full_subtractor postProcess_exp_subtractor ( // @[FloatingPointDesigns2.scala 499:44]
    .io_in_a(postProcess_exp_subtractor_io_in_a),
    .io_in_b(postProcess_exp_subtractor_io_in_b),
    .io_out_s(postProcess_exp_subtractor_io_out_s),
    .io_out_c(postProcess_exp_subtractor_io_out_c)
  );
  divider_BW48_v3 divider_BW48_v3 ( // @[FloatingPointDesigns2.scala 504:30]
    .clock(divider_BW48_v3_clock),
    .reset(divider_BW48_v3_reset),
    .io_in_a(divider_BW48_v3_io_in_a),
    .io_out_s(divider_BW48_v3_io_out_s)
  );
  assign io_out_s = {_io_out_s_T,out_frac}; // @[FloatingPointDesigns2.scala 528:37]
  assign postProcess_exp_subtractor_io_in_a = io_in_a[30:23] > 8'hfe ? 8'hfe : _GEN_0; // @[FloatingPointDesigns2.scala 470:47 471:19]
  assign postProcess_exp_subtractor_io_in_b = 8'h81 - 8'h7f; // @[FloatingPointDesigns2.scala 501:55]
  assign divider_BW48_v3_clock = clock;
  assign divider_BW48_v3_reset = reset;
  assign divider_BW48_v3_io_in_a = {whole_frac_wire_0,24'h0}; // @[FloatingPointDesigns2.scala 508:45]
  always @(posedge clock) begin
    carry_flag_r <= postProcess_exp_subtractor_io_out_c; // @[FloatingPointDesigns2.scala 512:72]
    carry_flag_r_1 <= carry_flag_r; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_2 <= carry_flag_r_1; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_3 <= carry_flag_r_2; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_4 <= carry_flag_r_3; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_5 <= carry_flag_r_4; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_6 <= carry_flag_r_5; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_7 <= carry_flag_r_6; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_8 <= carry_flag_r_7; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_9 <= carry_flag_r_8; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_10 <= carry_flag_r_9; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_11 <= carry_flag_r_10; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_12 <= carry_flag_r_11; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_13 <= carry_flag_r_12; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_14 <= carry_flag_r_13; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_15 <= carry_flag_r_14; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_16 <= carry_flag_r_15; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_17 <= carry_flag_r_16; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_18 <= carry_flag_r_17; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_19 <= carry_flag_r_18; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_20 <= carry_flag_r_19; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_21 <= carry_flag_r_20; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag_r_22 <= carry_flag_r_21; // @[Reg.scala 16:16 17:{18,22}]
    carry_flag <= carry_flag_r_22; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r <= postProcess_exp_subtractor_io_out_s; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_1 <= exp_sum_r; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_2 <= exp_sum_r_1; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_3 <= exp_sum_r_2; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_4 <= exp_sum_r_3; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_5 <= exp_sum_r_4; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_6 <= exp_sum_r_5; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_7 <= exp_sum_r_6; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_8 <= exp_sum_r_7; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_9 <= exp_sum_r_8; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_10 <= exp_sum_r_9; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_11 <= exp_sum_r_10; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_12 <= exp_sum_r_11; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_13 <= exp_sum_r_12; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_14 <= exp_sum_r_13; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_15 <= exp_sum_r_14; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_16 <= exp_sum_r_15; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_17 <= exp_sum_r_16; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_18 <= exp_sum_r_17; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_19 <= exp_sum_r_18; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_20 <= exp_sum_r_19; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_21 <= exp_sum_r_20; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum_r_22 <= exp_sum_r_21; // @[Reg.scala 16:16 17:{18,22}]
    exp_sum <= exp_sum_r_22; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r <= io_in_a[31]; // @[FloatingPointDesigns2.scala 465:28]
    new_sign_reg_r_1 <= new_sign_reg_r; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_2 <= new_sign_reg_r_1; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_3 <= new_sign_reg_r_2; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_4 <= new_sign_reg_r_3; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_5 <= new_sign_reg_r_4; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_6 <= new_sign_reg_r_5; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_7 <= new_sign_reg_r_6; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_8 <= new_sign_reg_r_7; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_9 <= new_sign_reg_r_8; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_10 <= new_sign_reg_r_9; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_11 <= new_sign_reg_r_10; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_12 <= new_sign_reg_r_11; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_13 <= new_sign_reg_r_12; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_14 <= new_sign_reg_r_13; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_15 <= new_sign_reg_r_14; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_16 <= new_sign_reg_r_15; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_17 <= new_sign_reg_r_16; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_18 <= new_sign_reg_r_17; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_19 <= new_sign_reg_r_18; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_20 <= new_sign_reg_r_19; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_21 <= new_sign_reg_r_20; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg_r_22 <= new_sign_reg_r_21; // @[Reg.scala 16:16 17:{18,22}]
    new_sign_reg <= new_sign_reg_r_22; // @[Reg.scala 16:16 17:{18,22}]
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
  carry_flag_r = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  carry_flag_r_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  carry_flag_r_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  carry_flag_r_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  carry_flag_r_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  carry_flag_r_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  carry_flag_r_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  carry_flag_r_7 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  carry_flag_r_8 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  carry_flag_r_9 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  carry_flag_r_10 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  carry_flag_r_11 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  carry_flag_r_12 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  carry_flag_r_13 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  carry_flag_r_14 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  carry_flag_r_15 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  carry_flag_r_16 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  carry_flag_r_17 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  carry_flag_r_18 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  carry_flag_r_19 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  carry_flag_r_20 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  carry_flag_r_21 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  carry_flag_r_22 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  carry_flag = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  exp_sum_r = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  exp_sum_r_1 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  exp_sum_r_2 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  exp_sum_r_3 = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  exp_sum_r_4 = _RAND_28[7:0];
  _RAND_29 = {1{`RANDOM}};
  exp_sum_r_5 = _RAND_29[7:0];
  _RAND_30 = {1{`RANDOM}};
  exp_sum_r_6 = _RAND_30[7:0];
  _RAND_31 = {1{`RANDOM}};
  exp_sum_r_7 = _RAND_31[7:0];
  _RAND_32 = {1{`RANDOM}};
  exp_sum_r_8 = _RAND_32[7:0];
  _RAND_33 = {1{`RANDOM}};
  exp_sum_r_9 = _RAND_33[7:0];
  _RAND_34 = {1{`RANDOM}};
  exp_sum_r_10 = _RAND_34[7:0];
  _RAND_35 = {1{`RANDOM}};
  exp_sum_r_11 = _RAND_35[7:0];
  _RAND_36 = {1{`RANDOM}};
  exp_sum_r_12 = _RAND_36[7:0];
  _RAND_37 = {1{`RANDOM}};
  exp_sum_r_13 = _RAND_37[7:0];
  _RAND_38 = {1{`RANDOM}};
  exp_sum_r_14 = _RAND_38[7:0];
  _RAND_39 = {1{`RANDOM}};
  exp_sum_r_15 = _RAND_39[7:0];
  _RAND_40 = {1{`RANDOM}};
  exp_sum_r_16 = _RAND_40[7:0];
  _RAND_41 = {1{`RANDOM}};
  exp_sum_r_17 = _RAND_41[7:0];
  _RAND_42 = {1{`RANDOM}};
  exp_sum_r_18 = _RAND_42[7:0];
  _RAND_43 = {1{`RANDOM}};
  exp_sum_r_19 = _RAND_43[7:0];
  _RAND_44 = {1{`RANDOM}};
  exp_sum_r_20 = _RAND_44[7:0];
  _RAND_45 = {1{`RANDOM}};
  exp_sum_r_21 = _RAND_45[7:0];
  _RAND_46 = {1{`RANDOM}};
  exp_sum_r_22 = _RAND_46[7:0];
  _RAND_47 = {1{`RANDOM}};
  exp_sum = _RAND_47[7:0];
  _RAND_48 = {1{`RANDOM}};
  new_sign_reg_r = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  new_sign_reg_r_1 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  new_sign_reg_r_2 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  new_sign_reg_r_3 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  new_sign_reg_r_4 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  new_sign_reg_r_5 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  new_sign_reg_r_6 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  new_sign_reg_r_7 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  new_sign_reg_r_8 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  new_sign_reg_r_9 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  new_sign_reg_r_10 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  new_sign_reg_r_11 = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  new_sign_reg_r_12 = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  new_sign_reg_r_13 = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  new_sign_reg_r_14 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  new_sign_reg_r_15 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  new_sign_reg_r_16 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  new_sign_reg_r_17 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  new_sign_reg_r_18 = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  new_sign_reg_r_19 = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  new_sign_reg_r_20 = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  new_sign_reg_r_21 = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  new_sign_reg_r_22 = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  new_sign_reg = _RAND_71[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
