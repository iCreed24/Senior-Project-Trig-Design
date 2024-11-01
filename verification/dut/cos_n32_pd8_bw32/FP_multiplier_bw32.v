module FP_multiplier_bw32(
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
  reg [63:0] _RAND_27;
  reg [63:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [63:0] _RAND_31;
  reg [63:0] _RAND_32;
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
`endif // RANDOMIZE_REG_INIT
  wire [23:0] frac_multiplier_io_in_a; // @[FloatingPointDesigns2.scala 337:33]
  wire [23:0] frac_multiplier_io_in_b; // @[FloatingPointDesigns2.scala 337:33]
  wire [47:0] frac_multiplier_io_out_s; // @[FloatingPointDesigns2.scala 337:33]
  wire [7:0] postProcess_exp_subtractor_io_in_a; // @[FloatingPointDesigns2.scala 344:44]
  wire [7:0] postProcess_exp_subtractor_io_in_b; // @[FloatingPointDesigns2.scala 344:44]
  wire [7:0] postProcess_exp_subtractor_io_out_s; // @[FloatingPointDesigns2.scala 344:44]
  wire  postProcess_exp_subtractor_io_out_c; // @[FloatingPointDesigns2.scala 344:44]
  wire [7:0] postProcess_cmpl_io_in; // @[FloatingPointDesigns2.scala 353:34]
  wire [7:0] postProcess_cmpl_io_out; // @[FloatingPointDesigns2.scala 353:34]
  wire [7:0] postProcess_exp_adder_io_in_a; // @[FloatingPointDesigns2.scala 370:39]
  wire [7:0] postProcess_exp_adder_io_in_b; // @[FloatingPointDesigns2.scala 370:39]
  wire [7:0] postProcess_exp_adder_io_out_s; // @[FloatingPointDesigns2.scala 370:39]
  wire  postProcess_exp_adder_io_out_c; // @[FloatingPointDesigns2.scala 370:39]
  wire  sign_wire_0 = io_in_a[31]; // @[FloatingPointDesigns2.scala 303:28]
  wire [8:0] _T_2 = 9'h100 - 9'h2; // @[FloatingPointDesigns2.scala 308:64]
  wire [8:0] _GEN_62 = {{1'd0}, io_in_a[30:23]}; // @[FloatingPointDesigns2.scala 308:36]
  wire [7:0] _GEN_0 = io_in_a[30:23] < 8'h1 ? 8'h1 : io_in_a[30:23]; // @[FloatingPointDesigns2.scala 310:45 311:19 313:19]
  wire [8:0] _GEN_1 = _GEN_62 > _T_2 ? _T_2 : {{1'd0}, _GEN_0}; // @[FloatingPointDesigns2.scala 308:71 309:19]
  wire [8:0] _GEN_3 = 9'h81 > _T_2 ? _T_2 : 9'h81; // @[FloatingPointDesigns2.scala 315:71 316:19]
  wire [22:0] frac_wire_0 = io_in_a[22:0]; // @[FloatingPointDesigns2.scala 325:28]
  wire [23:0] whole_frac_wire_0 = {1'h1,frac_wire_0}; // @[FloatingPointDesigns2.scala 330:31]
  reg  sign_reg_0_0; // @[FloatingPointDesigns2.scala 333:27]
  reg  sign_reg_1_0; // @[FloatingPointDesigns2.scala 333:27]
  reg  sign_reg_2_0; // @[FloatingPointDesigns2.scala 333:27]
  reg  sign_reg_3_0; // @[FloatingPointDesigns2.scala 333:27]
  reg  sign_reg_4_0; // @[FloatingPointDesigns2.scala 333:27]
  reg [7:0] exp_reg_0_0; // @[FloatingPointDesigns2.scala 334:26]
  reg [7:0] exp_reg_0_1; // @[FloatingPointDesigns2.scala 334:26]
  reg [7:0] exp_reg_1_0; // @[FloatingPointDesigns2.scala 334:26]
  reg [7:0] exp_reg_1_1; // @[FloatingPointDesigns2.scala 334:26]
  reg [7:0] exp_reg_2_0; // @[FloatingPointDesigns2.scala 334:26]
  reg [7:0] exp_reg_2_1; // @[FloatingPointDesigns2.scala 334:26]
  reg [7:0] exp_reg_3_0; // @[FloatingPointDesigns2.scala 334:26]
  reg [7:0] exp_reg_3_1; // @[FloatingPointDesigns2.scala 334:26]
  reg [7:0] exp_reg_4_0; // @[FloatingPointDesigns2.scala 334:26]
  reg [7:0] exp_reg_4_1; // @[FloatingPointDesigns2.scala 334:26]
  reg [7:0] exp_reg_5_0; // @[FloatingPointDesigns2.scala 334:26]
  reg [7:0] exp_reg_5_1; // @[FloatingPointDesigns2.scala 334:26]
  reg [7:0] exp_reg_6_0; // @[FloatingPointDesigns2.scala 334:26]
  reg [7:0] exp_reg_6_1; // @[FloatingPointDesigns2.scala 334:26]
  reg [7:0] exp_reg_7_0; // @[FloatingPointDesigns2.scala 334:26]
  reg [7:0] exp_reg_7_1; // @[FloatingPointDesigns2.scala 334:26]
  reg [7:0] exp_reg_8_0; // @[FloatingPointDesigns2.scala 334:26]
  reg [7:0] exp_reg_8_1; // @[FloatingPointDesigns2.scala 334:26]
  reg [23:0] whole_frac_reg_0_0; // @[FloatingPointDesigns2.scala 335:33]
  reg [23:0] whole_frac_reg_0_1; // @[FloatingPointDesigns2.scala 335:33]
  reg [23:0] whole_frac_reg_1_0; // @[FloatingPointDesigns2.scala 335:33]
  reg [23:0] whole_frac_reg_1_1; // @[FloatingPointDesigns2.scala 335:33]
  reg [47:0] frac_multiplier_out_reg_0; // @[FloatingPointDesigns2.scala 341:42]
  reg [47:0] frac_multiplier_out_reg_1; // @[FloatingPointDesigns2.scala 341:42]
  reg [47:0] frac_multiplier_out_reg_2; // @[FloatingPointDesigns2.scala 341:42]
  reg [47:0] frac_multiplier_out_reg_3; // @[FloatingPointDesigns2.scala 341:42]
  reg [47:0] frac_multiplier_out_reg_4; // @[FloatingPointDesigns2.scala 341:42]
  reg [47:0] frac_multiplier_out_reg_5; // @[FloatingPointDesigns2.scala 341:42]
  reg [7:0] postProcess_exp_sub_out_sum_reg_0; // @[FloatingPointDesigns2.scala 349:50]
  reg [7:0] postProcess_cmpl_out_reg_0; // @[FloatingPointDesigns2.scala 356:43]
  reg [7:0] postProcess_cmpl_out_reg_1; // @[FloatingPointDesigns2.scala 356:43]
  reg [7:0] postProcess_cmpl_out_reg_2; // @[FloatingPointDesigns2.scala 356:43]
  reg  new_sign_reg_0; // @[FloatingPointDesigns2.scala 361:31]
  reg  new_sign_reg_1; // @[FloatingPointDesigns2.scala 361:31]
  reg  new_sign_reg_2; // @[FloatingPointDesigns2.scala 361:31]
  reg  new_sign_reg_3; // @[FloatingPointDesigns2.scala 361:31]
  wire  postProcessInstruction_wire = exp_reg_5_1 < 8'h7f; // @[FloatingPointDesigns2.scala 364:51]
  reg  postProcessInstruction_reg_0; // @[FloatingPointDesigns2.scala 366:45]
  reg  postProcessInstruction_reg_1; // @[FloatingPointDesigns2.scala 366:45]
  wire [7:0] _postProcess_exp_adder_io_in_a_T_1 = exp_reg_6_0 + 8'h1; // @[FloatingPointDesigns2.scala 374:54]
  reg [7:0] postProcess_exp_adder_out_sum_reg_0; // @[FloatingPointDesigns2.scala 381:52]
  reg  postProcess_exp_adder_out_carry_reg_0; // @[FloatingPointDesigns2.scala 382:54]
  reg [7:0] new_exp_reg_0; // @[FloatingPointDesigns2.scala 384:30]
  reg [22:0] new_frac_reg_0; // @[FloatingPointDesigns2.scala 385:31]
  reg [31:0] output_result_reg; // @[FloatingPointDesigns2.scala 387:36]
  wire  _new_exp_reg_0_T_1 = ~postProcess_exp_adder_out_carry_reg_0; // @[FloatingPointDesigns2.scala 390:64]
  wire  _new_exp_reg_0_T_5 = postProcess_exp_adder_out_carry_reg_0 | postProcess_exp_adder_out_sum_reg_0 > 8'hfe; // @[FloatingPointDesigns2.scala 390:206]
  wire [31:0] _output_result_reg_T_1 = {new_sign_reg_3,new_exp_reg_0,new_frac_reg_0}; // @[FloatingPointDesigns2.scala 429:64]
  wire [7:0] exp_wire_0 = _GEN_1[7:0]; // @[FloatingPointDesigns2.scala 307:24]
  wire [7:0] exp_wire_1 = _GEN_3[7:0]; // @[FloatingPointDesigns2.scala 307:24]
  wire [47:0] _GEN_16 = frac_multiplier_io_out_s; // @[FloatingPointDesigns2.scala 389:19 399:34 341:42]
  wire [7:0] _GEN_17 = postProcess_exp_subtractor_io_out_s; // @[FloatingPointDesigns2.scala 389:19 400:42 349:50]
  wire [7:0] _GEN_19 = postProcess_cmpl_io_out; // @[FloatingPointDesigns2.scala 389:19 402:35 356:43]
  wire [7:0] _GEN_22 = postProcess_exp_adder_io_out_s; // @[FloatingPointDesigns2.scala 389:19 405:44 381:52]
  wire  _GEN_23 = postProcess_exp_adder_io_out_c; // @[FloatingPointDesigns2.scala 389:19 406:46 382:54]
  multiplier frac_multiplier ( // @[FloatingPointDesigns2.scala 337:33]
    .io_in_a(frac_multiplier_io_in_a),
    .io_in_b(frac_multiplier_io_in_b),
    .io_out_s(frac_multiplier_io_out_s)
  );
  full_subtractor postProcess_exp_subtractor ( // @[FloatingPointDesigns2.scala 344:44]
    .io_in_a(postProcess_exp_subtractor_io_in_a),
    .io_in_b(postProcess_exp_subtractor_io_in_b),
    .io_out_s(postProcess_exp_subtractor_io_out_s),
    .io_out_c(postProcess_exp_subtractor_io_out_c)
  );
  twoscomplement postProcess_cmpl ( // @[FloatingPointDesigns2.scala 353:34]
    .io_in(postProcess_cmpl_io_in),
    .io_out(postProcess_cmpl_io_out)
  );
  full_adder postProcess_exp_adder ( // @[FloatingPointDesigns2.scala 370:39]
    .io_in_a(postProcess_exp_adder_io_in_a),
    .io_in_b(postProcess_exp_adder_io_in_b),
    .io_out_s(postProcess_exp_adder_io_out_s),
    .io_out_c(postProcess_exp_adder_io_out_c)
  );
  assign io_out_s = output_result_reg; // @[FloatingPointDesigns2.scala 432:14]
  assign frac_multiplier_io_in_a = whole_frac_reg_1_0; // @[FloatingPointDesigns2.scala 338:29]
  assign frac_multiplier_io_in_b = whole_frac_reg_1_1; // @[FloatingPointDesigns2.scala 339:29]
  assign postProcess_exp_subtractor_io_in_a = 8'h7f; // @[FloatingPointDesigns2.scala 345:40]
  assign postProcess_exp_subtractor_io_in_b = exp_reg_2_1; // @[FloatingPointDesigns2.scala 346:40]
  assign postProcess_cmpl_io_in = postProcess_exp_sub_out_sum_reg_0; // @[FloatingPointDesigns2.scala 354:28]
  assign postProcess_exp_adder_io_in_a = frac_multiplier_out_reg_4[47] ? _postProcess_exp_adder_io_in_a_T_1 :
    exp_reg_6_0; // @[FloatingPointDesigns2.scala 373:72 374:37 377:37]
  assign postProcess_exp_adder_io_in_b = postProcess_cmpl_out_reg_2; // @[FloatingPointDesigns2.scala 373:72 375:37 378:37]
  always @(posedge clock) begin
    if (reset) begin // @[FloatingPointDesigns2.scala 333:27]
      sign_reg_0_0 <= 1'h0; // @[FloatingPointDesigns2.scala 333:27]
    end else begin
      sign_reg_0_0 <= sign_wire_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 333:27]
      sign_reg_1_0 <= 1'h0; // @[FloatingPointDesigns2.scala 333:27]
    end else begin
      sign_reg_1_0 <= sign_reg_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 333:27]
      sign_reg_2_0 <= 1'h0; // @[FloatingPointDesigns2.scala 333:27]
    end else begin
      sign_reg_2_0 <= sign_reg_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 333:27]
      sign_reg_3_0 <= 1'h0; // @[FloatingPointDesigns2.scala 333:27]
    end else begin
      sign_reg_3_0 <= sign_reg_2_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 333:27]
      sign_reg_4_0 <= 1'h0; // @[FloatingPointDesigns2.scala 333:27]
    end else begin
      sign_reg_4_0 <= sign_reg_3_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 334:26]
      exp_reg_0_0 <= 8'h0; // @[FloatingPointDesigns2.scala 334:26]
    end else begin
      exp_reg_0_0 <= exp_wire_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 334:26]
      exp_reg_0_1 <= 8'h0; // @[FloatingPointDesigns2.scala 334:26]
    end else begin
      exp_reg_0_1 <= exp_wire_1;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 334:26]
      exp_reg_1_0 <= 8'h0; // @[FloatingPointDesigns2.scala 334:26]
    end else begin
      exp_reg_1_0 <= exp_reg_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 334:26]
      exp_reg_1_1 <= 8'h0; // @[FloatingPointDesigns2.scala 334:26]
    end else begin
      exp_reg_1_1 <= exp_reg_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 334:26]
      exp_reg_2_0 <= 8'h0; // @[FloatingPointDesigns2.scala 334:26]
    end else begin
      exp_reg_2_0 <= exp_reg_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 334:26]
      exp_reg_2_1 <= 8'h0; // @[FloatingPointDesigns2.scala 334:26]
    end else begin
      exp_reg_2_1 <= exp_reg_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 334:26]
      exp_reg_3_0 <= 8'h0; // @[FloatingPointDesigns2.scala 334:26]
    end else begin
      exp_reg_3_0 <= exp_reg_2_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 334:26]
      exp_reg_3_1 <= 8'h0; // @[FloatingPointDesigns2.scala 334:26]
    end else begin
      exp_reg_3_1 <= exp_reg_2_1;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 334:26]
      exp_reg_4_0 <= 8'h0; // @[FloatingPointDesigns2.scala 334:26]
    end else begin
      exp_reg_4_0 <= exp_reg_3_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 334:26]
      exp_reg_4_1 <= 8'h0; // @[FloatingPointDesigns2.scala 334:26]
    end else begin
      exp_reg_4_1 <= exp_reg_3_1;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 334:26]
      exp_reg_5_0 <= 8'h0; // @[FloatingPointDesigns2.scala 334:26]
    end else begin
      exp_reg_5_0 <= exp_reg_4_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 334:26]
      exp_reg_5_1 <= 8'h0; // @[FloatingPointDesigns2.scala 334:26]
    end else begin
      exp_reg_5_1 <= exp_reg_4_1;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 334:26]
      exp_reg_6_0 <= 8'h0; // @[FloatingPointDesigns2.scala 334:26]
    end else begin
      exp_reg_6_0 <= exp_reg_5_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 334:26]
      exp_reg_6_1 <= 8'h0; // @[FloatingPointDesigns2.scala 334:26]
    end else begin
      exp_reg_6_1 <= exp_reg_5_1;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 334:26]
      exp_reg_7_0 <= 8'h0; // @[FloatingPointDesigns2.scala 334:26]
    end else begin
      exp_reg_7_0 <= exp_reg_6_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 334:26]
      exp_reg_7_1 <= 8'h0; // @[FloatingPointDesigns2.scala 334:26]
    end else begin
      exp_reg_7_1 <= exp_reg_6_1;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 334:26]
      exp_reg_8_0 <= 8'h0; // @[FloatingPointDesigns2.scala 334:26]
    end else begin
      exp_reg_8_0 <= exp_reg_7_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 334:26]
      exp_reg_8_1 <= 8'h0; // @[FloatingPointDesigns2.scala 334:26]
    end else begin
      exp_reg_8_1 <= exp_reg_7_1;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 335:33]
      whole_frac_reg_0_0 <= 24'h0; // @[FloatingPointDesigns2.scala 335:33]
    end else begin
      whole_frac_reg_0_0 <= whole_frac_wire_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 335:33]
      whole_frac_reg_0_1 <= 24'h0; // @[FloatingPointDesigns2.scala 335:33]
    end else begin
      whole_frac_reg_0_1 <= 24'hc90fdb;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 335:33]
      whole_frac_reg_1_0 <= 24'h0; // @[FloatingPointDesigns2.scala 335:33]
    end else begin
      whole_frac_reg_1_0 <= whole_frac_reg_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 335:33]
      whole_frac_reg_1_1 <= 24'h0; // @[FloatingPointDesigns2.scala 335:33]
    end else begin
      whole_frac_reg_1_1 <= whole_frac_reg_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 341:42]
      frac_multiplier_out_reg_0 <= 48'h0; // @[FloatingPointDesigns2.scala 341:42]
    end else begin
      frac_multiplier_out_reg_0 <= _GEN_16;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 341:42]
      frac_multiplier_out_reg_1 <= 48'h0; // @[FloatingPointDesigns2.scala 341:42]
    end else begin
      frac_multiplier_out_reg_1 <= frac_multiplier_out_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 341:42]
      frac_multiplier_out_reg_2 <= 48'h0; // @[FloatingPointDesigns2.scala 341:42]
    end else begin
      frac_multiplier_out_reg_2 <= frac_multiplier_out_reg_1;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 341:42]
      frac_multiplier_out_reg_3 <= 48'h0; // @[FloatingPointDesigns2.scala 341:42]
    end else begin
      frac_multiplier_out_reg_3 <= frac_multiplier_out_reg_2;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 341:42]
      frac_multiplier_out_reg_4 <= 48'h0; // @[FloatingPointDesigns2.scala 341:42]
    end else begin
      frac_multiplier_out_reg_4 <= frac_multiplier_out_reg_3;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 341:42]
      frac_multiplier_out_reg_5 <= 48'h0; // @[FloatingPointDesigns2.scala 341:42]
    end else begin
      frac_multiplier_out_reg_5 <= frac_multiplier_out_reg_4;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 349:50]
      postProcess_exp_sub_out_sum_reg_0 <= 8'h0; // @[FloatingPointDesigns2.scala 349:50]
    end else begin
      postProcess_exp_sub_out_sum_reg_0 <= _GEN_17;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 356:43]
      postProcess_cmpl_out_reg_0 <= 8'h0; // @[FloatingPointDesigns2.scala 356:43]
    end else begin
      postProcess_cmpl_out_reg_0 <= _GEN_19;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 356:43]
      postProcess_cmpl_out_reg_1 <= 8'h0; // @[FloatingPointDesigns2.scala 356:43]
    end else begin
      postProcess_cmpl_out_reg_1 <= postProcess_cmpl_out_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 356:43]
      postProcess_cmpl_out_reg_2 <= 8'h0; // @[FloatingPointDesigns2.scala 356:43]
    end else begin
      postProcess_cmpl_out_reg_2 <= postProcess_cmpl_out_reg_1;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 361:31]
      new_sign_reg_0 <= 1'h0; // @[FloatingPointDesigns2.scala 361:31]
    end else begin
      new_sign_reg_0 <= sign_reg_4_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 361:31]
      new_sign_reg_1 <= 1'h0; // @[FloatingPointDesigns2.scala 361:31]
    end else begin
      new_sign_reg_1 <= new_sign_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 361:31]
      new_sign_reg_2 <= 1'h0; // @[FloatingPointDesigns2.scala 361:31]
    end else begin
      new_sign_reg_2 <= new_sign_reg_1;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 361:31]
      new_sign_reg_3 <= 1'h0; // @[FloatingPointDesigns2.scala 361:31]
    end else begin
      new_sign_reg_3 <= new_sign_reg_2;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 366:45]
      postProcessInstruction_reg_0 <= 1'h0; // @[FloatingPointDesigns2.scala 366:45]
    end else begin
      postProcessInstruction_reg_0 <= postProcessInstruction_wire;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 366:45]
      postProcessInstruction_reg_1 <= 1'h0; // @[FloatingPointDesigns2.scala 366:45]
    end else begin
      postProcessInstruction_reg_1 <= postProcessInstruction_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 381:52]
      postProcess_exp_adder_out_sum_reg_0 <= 8'h0; // @[FloatingPointDesigns2.scala 381:52]
    end else begin
      postProcess_exp_adder_out_sum_reg_0 <= _GEN_22;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 382:54]
      postProcess_exp_adder_out_carry_reg_0 <= 1'h0; // @[FloatingPointDesigns2.scala 382:54]
    end else begin
      postProcess_exp_adder_out_carry_reg_0 <= _GEN_23;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 384:30]
      new_exp_reg_0 <= 8'h0; // @[FloatingPointDesigns2.scala 384:30]
    end else if (postProcessInstruction_reg_1) begin // @[FloatingPointDesigns2.scala 390:28]
      if (~postProcess_exp_adder_out_carry_reg_0) begin // @[FloatingPointDesigns2.scala 390:63]
        new_exp_reg_0 <= 8'h1;
      end else begin
        new_exp_reg_0 <= postProcess_exp_adder_out_sum_reg_0;
      end
    end else if (postProcess_exp_adder_out_carry_reg_0 | postProcess_exp_adder_out_sum_reg_0 > 8'hfe) begin // @[FloatingPointDesigns2.scala 390:159]
      new_exp_reg_0 <= 8'hfe;
    end else begin
      new_exp_reg_0 <= postProcess_exp_adder_out_sum_reg_0;
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 385:31]
      new_frac_reg_0 <= 23'h0; // @[FloatingPointDesigns2.scala 385:31]
    end else if (frac_multiplier_out_reg_5[47]) begin // @[FloatingPointDesigns2.scala 391:74]
      if (postProcessInstruction_reg_1) begin // @[FloatingPointDesigns2.scala 392:31]
        if (_new_exp_reg_0_T_1) begin // @[FloatingPointDesigns2.scala 392:66]
          new_frac_reg_0 <= 23'h0;
        end else begin
          new_frac_reg_0 <= frac_multiplier_out_reg_5[46:24];
        end
      end else if (_new_exp_reg_0_T_5) begin // @[FloatingPointDesigns2.scala 392:192]
        new_frac_reg_0 <= 23'h7fffff;
      end else begin
        new_frac_reg_0 <= frac_multiplier_out_reg_5[46:24];
      end
    end else if (postProcessInstruction_reg_1) begin // @[FloatingPointDesigns2.scala 394:31]
      if (_new_exp_reg_0_T_1) begin // @[FloatingPointDesigns2.scala 394:66]
        new_frac_reg_0 <= 23'h0;
      end else begin
        new_frac_reg_0 <= frac_multiplier_out_reg_5[45:23];
      end
    end else if (_new_exp_reg_0_T_5) begin // @[FloatingPointDesigns2.scala 394:188]
      new_frac_reg_0 <= 23'h7fffff;
    end else begin
      new_frac_reg_0 <= frac_multiplier_out_reg_5[45:23];
    end
    if (reset) begin // @[FloatingPointDesigns2.scala 387:36]
      output_result_reg <= 32'h0; // @[FloatingPointDesigns2.scala 387:36]
    end else if (exp_reg_8_0 == 8'h0 | exp_reg_8_1 == 8'h0) begin // @[FloatingPointDesigns2.scala 426:60]
      output_result_reg <= 32'h0; // @[FloatingPointDesigns2.scala 427:27]
    end else begin
      output_result_reg <= _output_result_reg_T_1; // @[FloatingPointDesigns2.scala 429:27]
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
  sign_reg_0_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  sign_reg_1_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  sign_reg_2_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  sign_reg_3_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  sign_reg_4_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  exp_reg_0_0 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  exp_reg_0_1 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  exp_reg_1_0 = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  exp_reg_1_1 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  exp_reg_2_0 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  exp_reg_2_1 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  exp_reg_3_0 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  exp_reg_3_1 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  exp_reg_4_0 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  exp_reg_4_1 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  exp_reg_5_0 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  exp_reg_5_1 = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  exp_reg_6_0 = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  exp_reg_6_1 = _RAND_18[7:0];
  _RAND_19 = {1{`RANDOM}};
  exp_reg_7_0 = _RAND_19[7:0];
  _RAND_20 = {1{`RANDOM}};
  exp_reg_7_1 = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  exp_reg_8_0 = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  exp_reg_8_1 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  whole_frac_reg_0_0 = _RAND_23[23:0];
  _RAND_24 = {1{`RANDOM}};
  whole_frac_reg_0_1 = _RAND_24[23:0];
  _RAND_25 = {1{`RANDOM}};
  whole_frac_reg_1_0 = _RAND_25[23:0];
  _RAND_26 = {1{`RANDOM}};
  whole_frac_reg_1_1 = _RAND_26[23:0];
  _RAND_27 = {2{`RANDOM}};
  frac_multiplier_out_reg_0 = _RAND_27[47:0];
  _RAND_28 = {2{`RANDOM}};
  frac_multiplier_out_reg_1 = _RAND_28[47:0];
  _RAND_29 = {2{`RANDOM}};
  frac_multiplier_out_reg_2 = _RAND_29[47:0];
  _RAND_30 = {2{`RANDOM}};
  frac_multiplier_out_reg_3 = _RAND_30[47:0];
  _RAND_31 = {2{`RANDOM}};
  frac_multiplier_out_reg_4 = _RAND_31[47:0];
  _RAND_32 = {2{`RANDOM}};
  frac_multiplier_out_reg_5 = _RAND_32[47:0];
  _RAND_33 = {1{`RANDOM}};
  postProcess_exp_sub_out_sum_reg_0 = _RAND_33[7:0];
  _RAND_34 = {1{`RANDOM}};
  postProcess_cmpl_out_reg_0 = _RAND_34[7:0];
  _RAND_35 = {1{`RANDOM}};
  postProcess_cmpl_out_reg_1 = _RAND_35[7:0];
  _RAND_36 = {1{`RANDOM}};
  postProcess_cmpl_out_reg_2 = _RAND_36[7:0];
  _RAND_37 = {1{`RANDOM}};
  new_sign_reg_0 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  new_sign_reg_1 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  new_sign_reg_2 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  new_sign_reg_3 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  postProcessInstruction_reg_0 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  postProcessInstruction_reg_1 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  postProcess_exp_adder_out_sum_reg_0 = _RAND_43[7:0];
  _RAND_44 = {1{`RANDOM}};
  postProcess_exp_adder_out_carry_reg_0 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  new_exp_reg_0 = _RAND_45[7:0];
  _RAND_46 = {1{`RANDOM}};
  new_frac_reg_0 = _RAND_46[22:0];
  _RAND_47 = {1{`RANDOM}};
  output_result_reg = _RAND_47[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
