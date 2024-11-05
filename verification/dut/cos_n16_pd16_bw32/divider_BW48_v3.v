module divider_BW48_v3(
  input         clock,
  input         reset,
  input  [47:0] io_in_a,
  output [47:0] io_out_s
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
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [63:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [63:0] _RAND_27;
  reg [63:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [63:0] _RAND_31;
  reg [63:0] _RAND_32;
  reg [63:0] _RAND_33;
  reg [63:0] _RAND_34;
  reg [63:0] _RAND_35;
  reg [63:0] _RAND_36;
  reg [63:0] _RAND_37;
  reg [63:0] _RAND_38;
  reg [63:0] _RAND_39;
  reg [63:0] _RAND_40;
  reg [63:0] _RAND_41;
  reg [63:0] _RAND_42;
  reg [63:0] _RAND_43;
  reg [63:0] _RAND_44;
  reg [63:0] _RAND_45;
  reg [63:0] _RAND_46;
  reg [63:0] _RAND_47;
  reg [63:0] _RAND_48;
  reg [63:0] _RAND_49;
  reg [63:0] _RAND_50;
  reg [63:0] _RAND_51;
  reg [63:0] _RAND_52;
  reg [63:0] _RAND_53;
  reg [63:0] _RAND_54;
  reg [63:0] _RAND_55;
  reg [63:0] _RAND_56;
  reg [63:0] _RAND_57;
  reg [63:0] _RAND_58;
  reg [63:0] _RAND_59;
  reg [63:0] _RAND_60;
  reg [63:0] _RAND_61;
  reg [63:0] _RAND_62;
  reg [63:0] _RAND_63;
  reg [63:0] _RAND_64;
  reg [63:0] _RAND_65;
  reg [63:0] _RAND_66;
  reg [63:0] _RAND_67;
  reg [63:0] _RAND_68;
`endif // RANDOMIZE_REG_INIT
  reg [47:0] a_aux_reg_r_0; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_1; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_2; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_3; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_4; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_5; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_6; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_7; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_8; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_9; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_10; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_11; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_12; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_13; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_14; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_15; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_16; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_17; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_18; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_19; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_20; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_21; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] a_aux_reg_r_22; // @[BinaryDesigns2.scala 171:30]
  reg [47:0] b_aux_reg_r_0; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_1; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_2; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_3; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_4; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_5; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_6; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_7; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_8; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_9; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_10; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_11; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_12; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_13; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_14; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_15; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_16; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_17; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_18; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_19; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_20; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_21; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] b_aux_reg_r_22; // @[BinaryDesigns2.scala 176:30]
  reg [47:0] result_reg_r_1; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_2; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_3; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_4; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_5; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_6; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_7; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_8; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_9; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_10; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_11; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_12; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_13; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_14; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_15; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_16; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_17; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_18; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_19; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_20; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_21; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_22; // @[BinaryDesigns2.scala 181:31]
  reg [47:0] result_reg_r_23; // @[BinaryDesigns2.scala 181:31]
  wire [92:0] _T_2308 = {b_aux_reg_r_0, 45'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [92:0] _GEN_576 = {{45'd0}, a_aux_reg_r_0}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_1_45 = _GEN_576 >= _T_2308; // @[BinaryDesigns2.scala 224:35]
  wire [47:0] result_reg_w_1 = {2'h0,wire_res_1_45,3'h0,6'h0,12'h0,24'h0}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_2_0 = result_reg_w_1[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_1 = result_reg_w_1[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_2 = result_reg_w_1[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_3 = result_reg_w_1[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_4 = result_reg_w_1[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_5 = result_reg_w_1[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_6 = result_reg_w_1[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_7 = result_reg_w_1[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_8 = result_reg_w_1[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_9 = result_reg_w_1[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_10 = result_reg_w_1[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_11 = result_reg_w_1[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_12 = result_reg_w_1[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_13 = result_reg_w_1[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_14 = result_reg_w_1[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_15 = result_reg_w_1[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_16 = result_reg_w_1[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_17 = result_reg_w_1[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_18 = result_reg_w_1[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_19 = result_reg_w_1[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_20 = result_reg_w_1[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_21 = result_reg_w_1[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_22 = result_reg_w_1[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_23 = result_reg_w_1[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_24 = result_reg_w_1[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_25 = result_reg_w_1[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_26 = result_reg_w_1[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_27 = result_reg_w_1[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_28 = result_reg_w_1[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_29 = result_reg_w_1[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_30 = result_reg_w_1[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_31 = result_reg_w_1[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_32 = result_reg_w_1[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_33 = result_reg_w_1[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_34 = result_reg_w_1[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_35 = result_reg_w_1[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_36 = result_reg_w_1[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_37 = result_reg_w_1[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_38 = result_reg_w_1[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_39 = result_reg_w_1[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_40 = result_reg_w_1[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_41 = result_reg_w_1[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_42 = result_reg_w_1[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_43 = result_reg_w_1[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_45 = result_reg_w_1[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_46 = result_reg_w_1[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_2_47 = result_reg_w_1[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_0 = result_reg_r_1[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_1 = result_reg_r_1[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_2 = result_reg_r_1[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_3 = result_reg_r_1[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_4 = result_reg_r_1[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_5 = result_reg_r_1[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_6 = result_reg_r_1[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_7 = result_reg_r_1[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_8 = result_reg_r_1[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_9 = result_reg_r_1[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_10 = result_reg_r_1[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_11 = result_reg_r_1[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_12 = result_reg_r_1[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_13 = result_reg_r_1[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_14 = result_reg_r_1[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_15 = result_reg_r_1[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_16 = result_reg_r_1[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_17 = result_reg_r_1[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_18 = result_reg_r_1[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_19 = result_reg_r_1[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_20 = result_reg_r_1[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_21 = result_reg_r_1[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_22 = result_reg_r_1[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_23 = result_reg_r_1[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_24 = result_reg_r_1[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_25 = result_reg_r_1[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_26 = result_reg_r_1[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_27 = result_reg_r_1[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_28 = result_reg_r_1[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_29 = result_reg_r_1[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_30 = result_reg_r_1[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_31 = result_reg_r_1[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_32 = result_reg_r_1[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_33 = result_reg_r_1[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_34 = result_reg_r_1[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_35 = result_reg_r_1[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_36 = result_reg_r_1[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_37 = result_reg_r_1[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_38 = result_reg_r_1[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_39 = result_reg_r_1[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_40 = result_reg_r_1[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_41 = result_reg_r_1[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_42 = result_reg_r_1[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_44 = result_reg_r_1[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_45 = result_reg_r_1[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_46 = result_reg_r_1[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_3_47 = result_reg_r_1[47]; // @[BinaryDesigns2.scala 192:62]
  wire [90:0] _T_2312 = {b_aux_reg_r_1, 43'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [90:0] _GEN_577 = {{43'd0}, a_aux_reg_r_1}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_3_43 = _GEN_577 >= _T_2312; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_2_hi_hi_lo = {wire_res_3_41,wire_res_3_40,wire_res_3_39,wire_res_3_38,wire_res_3_37,
    wire_res_3_36}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_2_hi_lo_lo = {wire_res_3_29,wire_res_3_28,wire_res_3_27,wire_res_3_26,wire_res_3_25,
    wire_res_3_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_2_hi_lo = {wire_res_3_35,wire_res_3_34,wire_res_3_33,wire_res_3_32,wire_res_3_31,
    wire_res_3_30,result_reg_w_2_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_2_lo_hi_lo = {wire_res_3_17,wire_res_3_16,wire_res_3_15,wire_res_3_14,wire_res_3_13,
    wire_res_3_12}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_2_lo_lo_lo = {wire_res_3_5,wire_res_3_4,wire_res_3_3,wire_res_3_2,wire_res_3_1,wire_res_3_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_2_lo_lo = {wire_res_3_11,wire_res_3_10,wire_res_3_9,wire_res_3_8,wire_res_3_7,wire_res_3_6,
    result_reg_w_2_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_2_lo = {wire_res_3_23,wire_res_3_22,wire_res_3_21,wire_res_3_20,wire_res_3_19,wire_res_3_18,
    result_reg_w_2_lo_hi_lo,result_reg_w_2_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_2 = {wire_res_3_47,wire_res_3_46,wire_res_3_45,wire_res_3_44,wire_res_3_43,wire_res_3_42,
    result_reg_w_2_hi_hi_lo,result_reg_w_2_hi_lo,result_reg_w_2_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_4_0 = result_reg_w_2[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_1 = result_reg_w_2[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_2 = result_reg_w_2[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_3 = result_reg_w_2[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_4 = result_reg_w_2[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_5 = result_reg_w_2[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_6 = result_reg_w_2[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_7 = result_reg_w_2[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_8 = result_reg_w_2[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_9 = result_reg_w_2[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_10 = result_reg_w_2[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_11 = result_reg_w_2[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_12 = result_reg_w_2[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_13 = result_reg_w_2[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_14 = result_reg_w_2[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_15 = result_reg_w_2[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_16 = result_reg_w_2[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_17 = result_reg_w_2[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_18 = result_reg_w_2[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_19 = result_reg_w_2[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_20 = result_reg_w_2[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_21 = result_reg_w_2[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_22 = result_reg_w_2[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_23 = result_reg_w_2[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_24 = result_reg_w_2[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_25 = result_reg_w_2[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_26 = result_reg_w_2[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_27 = result_reg_w_2[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_28 = result_reg_w_2[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_29 = result_reg_w_2[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_30 = result_reg_w_2[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_31 = result_reg_w_2[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_32 = result_reg_w_2[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_33 = result_reg_w_2[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_34 = result_reg_w_2[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_35 = result_reg_w_2[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_36 = result_reg_w_2[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_37 = result_reg_w_2[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_38 = result_reg_w_2[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_39 = result_reg_w_2[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_40 = result_reg_w_2[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_41 = result_reg_w_2[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_43 = result_reg_w_2[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_44 = result_reg_w_2[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_45 = result_reg_w_2[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_46 = result_reg_w_2[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_4_47 = result_reg_w_2[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_0 = result_reg_r_2[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_1 = result_reg_r_2[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_2 = result_reg_r_2[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_3 = result_reg_r_2[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_4 = result_reg_r_2[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_5 = result_reg_r_2[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_6 = result_reg_r_2[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_7 = result_reg_r_2[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_8 = result_reg_r_2[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_9 = result_reg_r_2[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_10 = result_reg_r_2[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_11 = result_reg_r_2[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_12 = result_reg_r_2[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_13 = result_reg_r_2[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_14 = result_reg_r_2[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_15 = result_reg_r_2[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_16 = result_reg_r_2[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_17 = result_reg_r_2[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_18 = result_reg_r_2[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_19 = result_reg_r_2[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_20 = result_reg_r_2[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_21 = result_reg_r_2[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_22 = result_reg_r_2[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_23 = result_reg_r_2[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_24 = result_reg_r_2[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_25 = result_reg_r_2[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_26 = result_reg_r_2[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_27 = result_reg_r_2[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_28 = result_reg_r_2[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_29 = result_reg_r_2[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_30 = result_reg_r_2[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_31 = result_reg_r_2[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_32 = result_reg_r_2[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_33 = result_reg_r_2[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_34 = result_reg_r_2[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_35 = result_reg_r_2[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_36 = result_reg_r_2[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_37 = result_reg_r_2[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_38 = result_reg_r_2[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_39 = result_reg_r_2[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_40 = result_reg_r_2[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_42 = result_reg_r_2[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_43 = result_reg_r_2[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_44 = result_reg_r_2[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_45 = result_reg_r_2[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_46 = result_reg_r_2[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_5_47 = result_reg_r_2[47]; // @[BinaryDesigns2.scala 192:62]
  wire [88:0] _T_2316 = {b_aux_reg_r_2, 41'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [88:0] _GEN_578 = {{41'd0}, a_aux_reg_r_2}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_5_41 = _GEN_578 >= _T_2316; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_3_hi_hi_lo = {wire_res_5_41,wire_res_5_40,wire_res_5_39,wire_res_5_38,wire_res_5_37,
    wire_res_5_36}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_3_hi_lo_lo = {wire_res_5_29,wire_res_5_28,wire_res_5_27,wire_res_5_26,wire_res_5_25,
    wire_res_5_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_3_hi_lo = {wire_res_5_35,wire_res_5_34,wire_res_5_33,wire_res_5_32,wire_res_5_31,
    wire_res_5_30,result_reg_w_3_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_3_lo_hi_lo = {wire_res_5_17,wire_res_5_16,wire_res_5_15,wire_res_5_14,wire_res_5_13,
    wire_res_5_12}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_3_lo_lo_lo = {wire_res_5_5,wire_res_5_4,wire_res_5_3,wire_res_5_2,wire_res_5_1,wire_res_5_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_3_lo_lo = {wire_res_5_11,wire_res_5_10,wire_res_5_9,wire_res_5_8,wire_res_5_7,wire_res_5_6,
    result_reg_w_3_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_3_lo = {wire_res_5_23,wire_res_5_22,wire_res_5_21,wire_res_5_20,wire_res_5_19,wire_res_5_18,
    result_reg_w_3_lo_hi_lo,result_reg_w_3_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_3 = {wire_res_5_47,wire_res_5_46,wire_res_5_45,wire_res_5_44,wire_res_5_43,wire_res_5_42,
    result_reg_w_3_hi_hi_lo,result_reg_w_3_hi_lo,result_reg_w_3_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_6_0 = result_reg_w_3[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_1 = result_reg_w_3[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_2 = result_reg_w_3[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_3 = result_reg_w_3[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_4 = result_reg_w_3[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_5 = result_reg_w_3[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_6 = result_reg_w_3[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_7 = result_reg_w_3[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_8 = result_reg_w_3[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_9 = result_reg_w_3[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_10 = result_reg_w_3[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_11 = result_reg_w_3[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_12 = result_reg_w_3[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_13 = result_reg_w_3[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_14 = result_reg_w_3[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_15 = result_reg_w_3[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_16 = result_reg_w_3[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_17 = result_reg_w_3[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_18 = result_reg_w_3[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_19 = result_reg_w_3[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_20 = result_reg_w_3[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_21 = result_reg_w_3[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_22 = result_reg_w_3[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_23 = result_reg_w_3[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_24 = result_reg_w_3[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_25 = result_reg_w_3[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_26 = result_reg_w_3[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_27 = result_reg_w_3[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_28 = result_reg_w_3[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_29 = result_reg_w_3[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_30 = result_reg_w_3[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_31 = result_reg_w_3[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_32 = result_reg_w_3[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_33 = result_reg_w_3[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_34 = result_reg_w_3[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_35 = result_reg_w_3[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_36 = result_reg_w_3[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_37 = result_reg_w_3[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_38 = result_reg_w_3[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_39 = result_reg_w_3[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_41 = result_reg_w_3[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_42 = result_reg_w_3[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_43 = result_reg_w_3[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_44 = result_reg_w_3[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_45 = result_reg_w_3[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_46 = result_reg_w_3[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_6_47 = result_reg_w_3[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_0 = result_reg_r_3[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_1 = result_reg_r_3[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_2 = result_reg_r_3[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_3 = result_reg_r_3[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_4 = result_reg_r_3[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_5 = result_reg_r_3[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_6 = result_reg_r_3[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_7 = result_reg_r_3[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_8 = result_reg_r_3[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_9 = result_reg_r_3[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_10 = result_reg_r_3[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_11 = result_reg_r_3[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_12 = result_reg_r_3[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_13 = result_reg_r_3[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_14 = result_reg_r_3[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_15 = result_reg_r_3[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_16 = result_reg_r_3[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_17 = result_reg_r_3[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_18 = result_reg_r_3[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_19 = result_reg_r_3[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_20 = result_reg_r_3[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_21 = result_reg_r_3[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_22 = result_reg_r_3[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_23 = result_reg_r_3[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_24 = result_reg_r_3[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_25 = result_reg_r_3[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_26 = result_reg_r_3[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_27 = result_reg_r_3[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_28 = result_reg_r_3[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_29 = result_reg_r_3[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_30 = result_reg_r_3[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_31 = result_reg_r_3[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_32 = result_reg_r_3[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_33 = result_reg_r_3[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_34 = result_reg_r_3[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_35 = result_reg_r_3[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_36 = result_reg_r_3[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_37 = result_reg_r_3[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_38 = result_reg_r_3[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_40 = result_reg_r_3[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_41 = result_reg_r_3[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_42 = result_reg_r_3[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_43 = result_reg_r_3[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_44 = result_reg_r_3[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_45 = result_reg_r_3[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_46 = result_reg_r_3[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_7_47 = result_reg_r_3[47]; // @[BinaryDesigns2.scala 192:62]
  wire [86:0] _T_2320 = {b_aux_reg_r_3, 39'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [86:0] _GEN_579 = {{39'd0}, a_aux_reg_r_3}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_7_39 = _GEN_579 >= _T_2320; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_4_hi_hi_lo = {wire_res_7_41,wire_res_7_40,wire_res_7_39,wire_res_7_38,wire_res_7_37,
    wire_res_7_36}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_4_hi_lo_lo = {wire_res_7_29,wire_res_7_28,wire_res_7_27,wire_res_7_26,wire_res_7_25,
    wire_res_7_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_4_hi_lo = {wire_res_7_35,wire_res_7_34,wire_res_7_33,wire_res_7_32,wire_res_7_31,
    wire_res_7_30,result_reg_w_4_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_4_lo_hi_lo = {wire_res_7_17,wire_res_7_16,wire_res_7_15,wire_res_7_14,wire_res_7_13,
    wire_res_7_12}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_4_lo_lo_lo = {wire_res_7_5,wire_res_7_4,wire_res_7_3,wire_res_7_2,wire_res_7_1,wire_res_7_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_4_lo_lo = {wire_res_7_11,wire_res_7_10,wire_res_7_9,wire_res_7_8,wire_res_7_7,wire_res_7_6,
    result_reg_w_4_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_4_lo = {wire_res_7_23,wire_res_7_22,wire_res_7_21,wire_res_7_20,wire_res_7_19,wire_res_7_18,
    result_reg_w_4_lo_hi_lo,result_reg_w_4_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_4 = {wire_res_7_47,wire_res_7_46,wire_res_7_45,wire_res_7_44,wire_res_7_43,wire_res_7_42,
    result_reg_w_4_hi_hi_lo,result_reg_w_4_hi_lo,result_reg_w_4_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_8_0 = result_reg_w_4[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_1 = result_reg_w_4[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_2 = result_reg_w_4[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_3 = result_reg_w_4[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_4 = result_reg_w_4[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_5 = result_reg_w_4[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_6 = result_reg_w_4[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_7 = result_reg_w_4[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_8 = result_reg_w_4[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_9 = result_reg_w_4[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_10 = result_reg_w_4[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_11 = result_reg_w_4[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_12 = result_reg_w_4[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_13 = result_reg_w_4[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_14 = result_reg_w_4[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_15 = result_reg_w_4[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_16 = result_reg_w_4[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_17 = result_reg_w_4[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_18 = result_reg_w_4[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_19 = result_reg_w_4[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_20 = result_reg_w_4[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_21 = result_reg_w_4[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_22 = result_reg_w_4[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_23 = result_reg_w_4[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_24 = result_reg_w_4[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_25 = result_reg_w_4[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_26 = result_reg_w_4[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_27 = result_reg_w_4[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_28 = result_reg_w_4[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_29 = result_reg_w_4[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_30 = result_reg_w_4[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_31 = result_reg_w_4[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_32 = result_reg_w_4[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_33 = result_reg_w_4[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_34 = result_reg_w_4[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_35 = result_reg_w_4[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_36 = result_reg_w_4[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_37 = result_reg_w_4[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_39 = result_reg_w_4[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_40 = result_reg_w_4[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_41 = result_reg_w_4[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_42 = result_reg_w_4[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_43 = result_reg_w_4[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_44 = result_reg_w_4[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_45 = result_reg_w_4[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_46 = result_reg_w_4[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_8_47 = result_reg_w_4[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_0 = result_reg_r_4[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_1 = result_reg_r_4[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_2 = result_reg_r_4[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_3 = result_reg_r_4[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_4 = result_reg_r_4[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_5 = result_reg_r_4[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_6 = result_reg_r_4[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_7 = result_reg_r_4[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_8 = result_reg_r_4[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_9 = result_reg_r_4[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_10 = result_reg_r_4[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_11 = result_reg_r_4[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_12 = result_reg_r_4[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_13 = result_reg_r_4[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_14 = result_reg_r_4[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_15 = result_reg_r_4[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_16 = result_reg_r_4[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_17 = result_reg_r_4[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_18 = result_reg_r_4[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_19 = result_reg_r_4[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_20 = result_reg_r_4[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_21 = result_reg_r_4[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_22 = result_reg_r_4[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_23 = result_reg_r_4[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_24 = result_reg_r_4[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_25 = result_reg_r_4[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_26 = result_reg_r_4[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_27 = result_reg_r_4[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_28 = result_reg_r_4[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_29 = result_reg_r_4[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_30 = result_reg_r_4[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_31 = result_reg_r_4[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_32 = result_reg_r_4[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_33 = result_reg_r_4[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_34 = result_reg_r_4[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_35 = result_reg_r_4[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_36 = result_reg_r_4[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_38 = result_reg_r_4[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_39 = result_reg_r_4[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_40 = result_reg_r_4[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_41 = result_reg_r_4[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_42 = result_reg_r_4[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_43 = result_reg_r_4[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_44 = result_reg_r_4[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_45 = result_reg_r_4[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_46 = result_reg_r_4[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_9_47 = result_reg_r_4[47]; // @[BinaryDesigns2.scala 192:62]
  wire [84:0] _T_2324 = {b_aux_reg_r_4, 37'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [84:0] _GEN_580 = {{37'd0}, a_aux_reg_r_4}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_9_37 = _GEN_580 >= _T_2324; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_5_hi_hi_lo = {wire_res_9_41,wire_res_9_40,wire_res_9_39,wire_res_9_38,wire_res_9_37,
    wire_res_9_36}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_5_hi_lo_lo = {wire_res_9_29,wire_res_9_28,wire_res_9_27,wire_res_9_26,wire_res_9_25,
    wire_res_9_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_5_hi_lo = {wire_res_9_35,wire_res_9_34,wire_res_9_33,wire_res_9_32,wire_res_9_31,
    wire_res_9_30,result_reg_w_5_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_5_lo_hi_lo = {wire_res_9_17,wire_res_9_16,wire_res_9_15,wire_res_9_14,wire_res_9_13,
    wire_res_9_12}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_5_lo_lo_lo = {wire_res_9_5,wire_res_9_4,wire_res_9_3,wire_res_9_2,wire_res_9_1,wire_res_9_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_5_lo_lo = {wire_res_9_11,wire_res_9_10,wire_res_9_9,wire_res_9_8,wire_res_9_7,wire_res_9_6,
    result_reg_w_5_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_5_lo = {wire_res_9_23,wire_res_9_22,wire_res_9_21,wire_res_9_20,wire_res_9_19,wire_res_9_18,
    result_reg_w_5_lo_hi_lo,result_reg_w_5_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_5 = {wire_res_9_47,wire_res_9_46,wire_res_9_45,wire_res_9_44,wire_res_9_43,wire_res_9_42,
    result_reg_w_5_hi_hi_lo,result_reg_w_5_hi_lo,result_reg_w_5_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_10_0 = result_reg_w_5[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_1 = result_reg_w_5[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_2 = result_reg_w_5[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_3 = result_reg_w_5[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_4 = result_reg_w_5[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_5 = result_reg_w_5[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_6 = result_reg_w_5[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_7 = result_reg_w_5[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_8 = result_reg_w_5[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_9 = result_reg_w_5[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_10 = result_reg_w_5[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_11 = result_reg_w_5[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_12 = result_reg_w_5[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_13 = result_reg_w_5[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_14 = result_reg_w_5[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_15 = result_reg_w_5[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_16 = result_reg_w_5[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_17 = result_reg_w_5[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_18 = result_reg_w_5[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_19 = result_reg_w_5[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_20 = result_reg_w_5[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_21 = result_reg_w_5[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_22 = result_reg_w_5[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_23 = result_reg_w_5[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_24 = result_reg_w_5[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_25 = result_reg_w_5[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_26 = result_reg_w_5[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_27 = result_reg_w_5[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_28 = result_reg_w_5[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_29 = result_reg_w_5[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_30 = result_reg_w_5[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_31 = result_reg_w_5[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_32 = result_reg_w_5[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_33 = result_reg_w_5[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_34 = result_reg_w_5[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_35 = result_reg_w_5[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_37 = result_reg_w_5[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_38 = result_reg_w_5[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_39 = result_reg_w_5[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_40 = result_reg_w_5[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_41 = result_reg_w_5[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_42 = result_reg_w_5[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_43 = result_reg_w_5[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_44 = result_reg_w_5[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_45 = result_reg_w_5[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_46 = result_reg_w_5[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_10_47 = result_reg_w_5[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_0 = result_reg_r_5[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_1 = result_reg_r_5[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_2 = result_reg_r_5[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_3 = result_reg_r_5[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_4 = result_reg_r_5[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_5 = result_reg_r_5[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_6 = result_reg_r_5[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_7 = result_reg_r_5[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_8 = result_reg_r_5[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_9 = result_reg_r_5[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_10 = result_reg_r_5[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_11 = result_reg_r_5[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_12 = result_reg_r_5[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_13 = result_reg_r_5[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_14 = result_reg_r_5[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_15 = result_reg_r_5[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_16 = result_reg_r_5[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_17 = result_reg_r_5[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_18 = result_reg_r_5[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_19 = result_reg_r_5[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_20 = result_reg_r_5[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_21 = result_reg_r_5[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_22 = result_reg_r_5[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_23 = result_reg_r_5[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_24 = result_reg_r_5[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_25 = result_reg_r_5[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_26 = result_reg_r_5[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_27 = result_reg_r_5[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_28 = result_reg_r_5[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_29 = result_reg_r_5[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_30 = result_reg_r_5[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_31 = result_reg_r_5[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_32 = result_reg_r_5[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_33 = result_reg_r_5[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_34 = result_reg_r_5[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_36 = result_reg_r_5[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_37 = result_reg_r_5[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_38 = result_reg_r_5[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_39 = result_reg_r_5[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_40 = result_reg_r_5[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_41 = result_reg_r_5[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_42 = result_reg_r_5[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_43 = result_reg_r_5[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_44 = result_reg_r_5[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_45 = result_reg_r_5[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_46 = result_reg_r_5[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_11_47 = result_reg_r_5[47]; // @[BinaryDesigns2.scala 192:62]
  wire [5:0] result_reg_w_6_hi_hi_lo = {wire_res_11_41,wire_res_11_40,wire_res_11_39,wire_res_11_38,wire_res_11_37,
    wire_res_11_36}; // @[BinaryDesigns2.scala 231:46]
  wire [82:0] _T_2328 = {b_aux_reg_r_5, 35'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [82:0] _GEN_581 = {{35'd0}, a_aux_reg_r_5}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_11_35 = _GEN_581 >= _T_2328; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_6_hi_lo_lo = {wire_res_11_29,wire_res_11_28,wire_res_11_27,wire_res_11_26,wire_res_11_25,
    wire_res_11_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_6_hi_lo = {wire_res_11_35,wire_res_11_34,wire_res_11_33,wire_res_11_32,wire_res_11_31,
    wire_res_11_30,result_reg_w_6_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_6_lo_hi_lo = {wire_res_11_17,wire_res_11_16,wire_res_11_15,wire_res_11_14,wire_res_11_13,
    wire_res_11_12}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_6_lo_lo_lo = {wire_res_11_5,wire_res_11_4,wire_res_11_3,wire_res_11_2,wire_res_11_1,
    wire_res_11_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_6_lo_lo = {wire_res_11_11,wire_res_11_10,wire_res_11_9,wire_res_11_8,wire_res_11_7,
    wire_res_11_6,result_reg_w_6_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_6_lo = {wire_res_11_23,wire_res_11_22,wire_res_11_21,wire_res_11_20,wire_res_11_19,
    wire_res_11_18,result_reg_w_6_lo_hi_lo,result_reg_w_6_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_6 = {wire_res_11_47,wire_res_11_46,wire_res_11_45,wire_res_11_44,wire_res_11_43,
    wire_res_11_42,result_reg_w_6_hi_hi_lo,result_reg_w_6_hi_lo,result_reg_w_6_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_12_0 = result_reg_w_6[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_1 = result_reg_w_6[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_2 = result_reg_w_6[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_3 = result_reg_w_6[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_4 = result_reg_w_6[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_5 = result_reg_w_6[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_6 = result_reg_w_6[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_7 = result_reg_w_6[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_8 = result_reg_w_6[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_9 = result_reg_w_6[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_10 = result_reg_w_6[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_11 = result_reg_w_6[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_12 = result_reg_w_6[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_13 = result_reg_w_6[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_14 = result_reg_w_6[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_15 = result_reg_w_6[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_16 = result_reg_w_6[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_17 = result_reg_w_6[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_18 = result_reg_w_6[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_19 = result_reg_w_6[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_20 = result_reg_w_6[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_21 = result_reg_w_6[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_22 = result_reg_w_6[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_23 = result_reg_w_6[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_24 = result_reg_w_6[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_25 = result_reg_w_6[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_26 = result_reg_w_6[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_27 = result_reg_w_6[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_28 = result_reg_w_6[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_29 = result_reg_w_6[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_30 = result_reg_w_6[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_31 = result_reg_w_6[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_32 = result_reg_w_6[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_33 = result_reg_w_6[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_35 = result_reg_w_6[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_36 = result_reg_w_6[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_37 = result_reg_w_6[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_38 = result_reg_w_6[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_39 = result_reg_w_6[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_40 = result_reg_w_6[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_41 = result_reg_w_6[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_42 = result_reg_w_6[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_43 = result_reg_w_6[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_44 = result_reg_w_6[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_45 = result_reg_w_6[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_46 = result_reg_w_6[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_12_47 = result_reg_w_6[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_0 = result_reg_r_6[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_1 = result_reg_r_6[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_2 = result_reg_r_6[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_3 = result_reg_r_6[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_4 = result_reg_r_6[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_5 = result_reg_r_6[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_6 = result_reg_r_6[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_7 = result_reg_r_6[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_8 = result_reg_r_6[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_9 = result_reg_r_6[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_10 = result_reg_r_6[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_11 = result_reg_r_6[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_12 = result_reg_r_6[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_13 = result_reg_r_6[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_14 = result_reg_r_6[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_15 = result_reg_r_6[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_16 = result_reg_r_6[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_17 = result_reg_r_6[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_18 = result_reg_r_6[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_19 = result_reg_r_6[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_20 = result_reg_r_6[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_21 = result_reg_r_6[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_22 = result_reg_r_6[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_23 = result_reg_r_6[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_24 = result_reg_r_6[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_25 = result_reg_r_6[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_26 = result_reg_r_6[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_27 = result_reg_r_6[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_28 = result_reg_r_6[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_29 = result_reg_r_6[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_30 = result_reg_r_6[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_31 = result_reg_r_6[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_32 = result_reg_r_6[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_34 = result_reg_r_6[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_35 = result_reg_r_6[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_36 = result_reg_r_6[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_37 = result_reg_r_6[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_38 = result_reg_r_6[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_39 = result_reg_r_6[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_40 = result_reg_r_6[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_41 = result_reg_r_6[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_42 = result_reg_r_6[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_43 = result_reg_r_6[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_44 = result_reg_r_6[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_45 = result_reg_r_6[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_46 = result_reg_r_6[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_13_47 = result_reg_r_6[47]; // @[BinaryDesigns2.scala 192:62]
  wire [5:0] result_reg_w_7_hi_hi_lo = {wire_res_13_41,wire_res_13_40,wire_res_13_39,wire_res_13_38,wire_res_13_37,
    wire_res_13_36}; // @[BinaryDesigns2.scala 231:46]
  wire [80:0] _T_2332 = {b_aux_reg_r_6, 33'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [80:0] _GEN_582 = {{33'd0}, a_aux_reg_r_6}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_13_33 = _GEN_582 >= _T_2332; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_7_hi_lo_lo = {wire_res_13_29,wire_res_13_28,wire_res_13_27,wire_res_13_26,wire_res_13_25,
    wire_res_13_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_7_hi_lo = {wire_res_13_35,wire_res_13_34,wire_res_13_33,wire_res_13_32,wire_res_13_31,
    wire_res_13_30,result_reg_w_7_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_7_lo_hi_lo = {wire_res_13_17,wire_res_13_16,wire_res_13_15,wire_res_13_14,wire_res_13_13,
    wire_res_13_12}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_7_lo_lo_lo = {wire_res_13_5,wire_res_13_4,wire_res_13_3,wire_res_13_2,wire_res_13_1,
    wire_res_13_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_7_lo_lo = {wire_res_13_11,wire_res_13_10,wire_res_13_9,wire_res_13_8,wire_res_13_7,
    wire_res_13_6,result_reg_w_7_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_7_lo = {wire_res_13_23,wire_res_13_22,wire_res_13_21,wire_res_13_20,wire_res_13_19,
    wire_res_13_18,result_reg_w_7_lo_hi_lo,result_reg_w_7_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_7 = {wire_res_13_47,wire_res_13_46,wire_res_13_45,wire_res_13_44,wire_res_13_43,
    wire_res_13_42,result_reg_w_7_hi_hi_lo,result_reg_w_7_hi_lo,result_reg_w_7_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_14_0 = result_reg_w_7[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_1 = result_reg_w_7[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_2 = result_reg_w_7[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_3 = result_reg_w_7[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_4 = result_reg_w_7[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_5 = result_reg_w_7[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_6 = result_reg_w_7[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_7 = result_reg_w_7[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_8 = result_reg_w_7[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_9 = result_reg_w_7[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_10 = result_reg_w_7[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_11 = result_reg_w_7[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_12 = result_reg_w_7[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_13 = result_reg_w_7[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_14 = result_reg_w_7[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_15 = result_reg_w_7[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_16 = result_reg_w_7[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_17 = result_reg_w_7[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_18 = result_reg_w_7[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_19 = result_reg_w_7[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_20 = result_reg_w_7[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_21 = result_reg_w_7[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_22 = result_reg_w_7[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_23 = result_reg_w_7[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_24 = result_reg_w_7[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_25 = result_reg_w_7[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_26 = result_reg_w_7[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_27 = result_reg_w_7[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_28 = result_reg_w_7[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_29 = result_reg_w_7[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_30 = result_reg_w_7[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_31 = result_reg_w_7[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_33 = result_reg_w_7[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_34 = result_reg_w_7[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_35 = result_reg_w_7[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_36 = result_reg_w_7[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_37 = result_reg_w_7[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_38 = result_reg_w_7[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_39 = result_reg_w_7[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_40 = result_reg_w_7[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_41 = result_reg_w_7[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_42 = result_reg_w_7[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_43 = result_reg_w_7[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_44 = result_reg_w_7[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_45 = result_reg_w_7[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_46 = result_reg_w_7[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_14_47 = result_reg_w_7[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_0 = result_reg_r_7[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_1 = result_reg_r_7[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_2 = result_reg_r_7[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_3 = result_reg_r_7[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_4 = result_reg_r_7[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_5 = result_reg_r_7[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_6 = result_reg_r_7[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_7 = result_reg_r_7[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_8 = result_reg_r_7[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_9 = result_reg_r_7[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_10 = result_reg_r_7[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_11 = result_reg_r_7[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_12 = result_reg_r_7[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_13 = result_reg_r_7[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_14 = result_reg_r_7[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_15 = result_reg_r_7[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_16 = result_reg_r_7[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_17 = result_reg_r_7[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_18 = result_reg_r_7[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_19 = result_reg_r_7[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_20 = result_reg_r_7[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_21 = result_reg_r_7[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_22 = result_reg_r_7[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_23 = result_reg_r_7[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_24 = result_reg_r_7[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_25 = result_reg_r_7[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_26 = result_reg_r_7[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_27 = result_reg_r_7[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_28 = result_reg_r_7[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_29 = result_reg_r_7[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_30 = result_reg_r_7[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_32 = result_reg_r_7[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_33 = result_reg_r_7[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_34 = result_reg_r_7[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_35 = result_reg_r_7[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_36 = result_reg_r_7[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_37 = result_reg_r_7[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_38 = result_reg_r_7[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_39 = result_reg_r_7[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_40 = result_reg_r_7[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_41 = result_reg_r_7[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_42 = result_reg_r_7[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_43 = result_reg_r_7[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_44 = result_reg_r_7[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_45 = result_reg_r_7[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_46 = result_reg_r_7[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_15_47 = result_reg_r_7[47]; // @[BinaryDesigns2.scala 192:62]
  wire [5:0] result_reg_w_8_hi_hi_lo = {wire_res_15_41,wire_res_15_40,wire_res_15_39,wire_res_15_38,wire_res_15_37,
    wire_res_15_36}; // @[BinaryDesigns2.scala 231:46]
  wire [78:0] _T_2336 = {b_aux_reg_r_7, 31'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [78:0] _GEN_583 = {{31'd0}, a_aux_reg_r_7}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_15_31 = _GEN_583 >= _T_2336; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_8_hi_lo_lo = {wire_res_15_29,wire_res_15_28,wire_res_15_27,wire_res_15_26,wire_res_15_25,
    wire_res_15_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_8_hi_lo = {wire_res_15_35,wire_res_15_34,wire_res_15_33,wire_res_15_32,wire_res_15_31,
    wire_res_15_30,result_reg_w_8_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_8_lo_hi_lo = {wire_res_15_17,wire_res_15_16,wire_res_15_15,wire_res_15_14,wire_res_15_13,
    wire_res_15_12}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_8_lo_lo_lo = {wire_res_15_5,wire_res_15_4,wire_res_15_3,wire_res_15_2,wire_res_15_1,
    wire_res_15_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_8_lo_lo = {wire_res_15_11,wire_res_15_10,wire_res_15_9,wire_res_15_8,wire_res_15_7,
    wire_res_15_6,result_reg_w_8_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_8_lo = {wire_res_15_23,wire_res_15_22,wire_res_15_21,wire_res_15_20,wire_res_15_19,
    wire_res_15_18,result_reg_w_8_lo_hi_lo,result_reg_w_8_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_8 = {wire_res_15_47,wire_res_15_46,wire_res_15_45,wire_res_15_44,wire_res_15_43,
    wire_res_15_42,result_reg_w_8_hi_hi_lo,result_reg_w_8_hi_lo,result_reg_w_8_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_16_0 = result_reg_w_8[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_1 = result_reg_w_8[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_2 = result_reg_w_8[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_3 = result_reg_w_8[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_4 = result_reg_w_8[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_5 = result_reg_w_8[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_6 = result_reg_w_8[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_7 = result_reg_w_8[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_8 = result_reg_w_8[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_9 = result_reg_w_8[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_10 = result_reg_w_8[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_11 = result_reg_w_8[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_12 = result_reg_w_8[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_13 = result_reg_w_8[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_14 = result_reg_w_8[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_15 = result_reg_w_8[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_16 = result_reg_w_8[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_17 = result_reg_w_8[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_18 = result_reg_w_8[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_19 = result_reg_w_8[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_20 = result_reg_w_8[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_21 = result_reg_w_8[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_22 = result_reg_w_8[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_23 = result_reg_w_8[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_24 = result_reg_w_8[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_25 = result_reg_w_8[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_26 = result_reg_w_8[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_27 = result_reg_w_8[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_28 = result_reg_w_8[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_29 = result_reg_w_8[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_31 = result_reg_w_8[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_32 = result_reg_w_8[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_33 = result_reg_w_8[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_34 = result_reg_w_8[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_35 = result_reg_w_8[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_36 = result_reg_w_8[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_37 = result_reg_w_8[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_38 = result_reg_w_8[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_39 = result_reg_w_8[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_40 = result_reg_w_8[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_41 = result_reg_w_8[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_42 = result_reg_w_8[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_43 = result_reg_w_8[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_44 = result_reg_w_8[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_45 = result_reg_w_8[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_46 = result_reg_w_8[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_16_47 = result_reg_w_8[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_0 = result_reg_r_8[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_1 = result_reg_r_8[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_2 = result_reg_r_8[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_3 = result_reg_r_8[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_4 = result_reg_r_8[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_5 = result_reg_r_8[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_6 = result_reg_r_8[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_7 = result_reg_r_8[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_8 = result_reg_r_8[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_9 = result_reg_r_8[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_10 = result_reg_r_8[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_11 = result_reg_r_8[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_12 = result_reg_r_8[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_13 = result_reg_r_8[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_14 = result_reg_r_8[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_15 = result_reg_r_8[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_16 = result_reg_r_8[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_17 = result_reg_r_8[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_18 = result_reg_r_8[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_19 = result_reg_r_8[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_20 = result_reg_r_8[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_21 = result_reg_r_8[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_22 = result_reg_r_8[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_23 = result_reg_r_8[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_24 = result_reg_r_8[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_25 = result_reg_r_8[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_26 = result_reg_r_8[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_27 = result_reg_r_8[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_28 = result_reg_r_8[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_30 = result_reg_r_8[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_31 = result_reg_r_8[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_32 = result_reg_r_8[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_33 = result_reg_r_8[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_34 = result_reg_r_8[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_35 = result_reg_r_8[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_36 = result_reg_r_8[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_37 = result_reg_r_8[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_38 = result_reg_r_8[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_39 = result_reg_r_8[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_40 = result_reg_r_8[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_41 = result_reg_r_8[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_42 = result_reg_r_8[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_43 = result_reg_r_8[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_44 = result_reg_r_8[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_45 = result_reg_r_8[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_46 = result_reg_r_8[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_17_47 = result_reg_r_8[47]; // @[BinaryDesigns2.scala 192:62]
  wire [5:0] result_reg_w_9_hi_hi_lo = {wire_res_17_41,wire_res_17_40,wire_res_17_39,wire_res_17_38,wire_res_17_37,
    wire_res_17_36}; // @[BinaryDesigns2.scala 231:46]
  wire [76:0] _T_2340 = {b_aux_reg_r_8, 29'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [76:0] _GEN_584 = {{29'd0}, a_aux_reg_r_8}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_17_29 = _GEN_584 >= _T_2340; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_9_hi_lo_lo = {wire_res_17_29,wire_res_17_28,wire_res_17_27,wire_res_17_26,wire_res_17_25,
    wire_res_17_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_9_hi_lo = {wire_res_17_35,wire_res_17_34,wire_res_17_33,wire_res_17_32,wire_res_17_31,
    wire_res_17_30,result_reg_w_9_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_9_lo_hi_lo = {wire_res_17_17,wire_res_17_16,wire_res_17_15,wire_res_17_14,wire_res_17_13,
    wire_res_17_12}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_9_lo_lo_lo = {wire_res_17_5,wire_res_17_4,wire_res_17_3,wire_res_17_2,wire_res_17_1,
    wire_res_17_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_9_lo_lo = {wire_res_17_11,wire_res_17_10,wire_res_17_9,wire_res_17_8,wire_res_17_7,
    wire_res_17_6,result_reg_w_9_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_9_lo = {wire_res_17_23,wire_res_17_22,wire_res_17_21,wire_res_17_20,wire_res_17_19,
    wire_res_17_18,result_reg_w_9_lo_hi_lo,result_reg_w_9_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_9 = {wire_res_17_47,wire_res_17_46,wire_res_17_45,wire_res_17_44,wire_res_17_43,
    wire_res_17_42,result_reg_w_9_hi_hi_lo,result_reg_w_9_hi_lo,result_reg_w_9_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_18_0 = result_reg_w_9[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_1 = result_reg_w_9[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_2 = result_reg_w_9[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_3 = result_reg_w_9[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_4 = result_reg_w_9[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_5 = result_reg_w_9[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_6 = result_reg_w_9[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_7 = result_reg_w_9[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_8 = result_reg_w_9[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_9 = result_reg_w_9[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_10 = result_reg_w_9[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_11 = result_reg_w_9[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_12 = result_reg_w_9[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_13 = result_reg_w_9[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_14 = result_reg_w_9[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_15 = result_reg_w_9[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_16 = result_reg_w_9[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_17 = result_reg_w_9[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_18 = result_reg_w_9[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_19 = result_reg_w_9[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_20 = result_reg_w_9[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_21 = result_reg_w_9[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_22 = result_reg_w_9[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_23 = result_reg_w_9[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_24 = result_reg_w_9[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_25 = result_reg_w_9[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_26 = result_reg_w_9[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_27 = result_reg_w_9[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_29 = result_reg_w_9[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_30 = result_reg_w_9[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_31 = result_reg_w_9[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_32 = result_reg_w_9[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_33 = result_reg_w_9[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_34 = result_reg_w_9[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_35 = result_reg_w_9[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_36 = result_reg_w_9[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_37 = result_reg_w_9[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_38 = result_reg_w_9[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_39 = result_reg_w_9[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_40 = result_reg_w_9[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_41 = result_reg_w_9[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_42 = result_reg_w_9[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_43 = result_reg_w_9[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_44 = result_reg_w_9[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_45 = result_reg_w_9[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_46 = result_reg_w_9[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_18_47 = result_reg_w_9[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_0 = result_reg_r_9[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_1 = result_reg_r_9[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_2 = result_reg_r_9[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_3 = result_reg_r_9[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_4 = result_reg_r_9[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_5 = result_reg_r_9[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_6 = result_reg_r_9[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_7 = result_reg_r_9[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_8 = result_reg_r_9[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_9 = result_reg_r_9[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_10 = result_reg_r_9[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_11 = result_reg_r_9[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_12 = result_reg_r_9[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_13 = result_reg_r_9[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_14 = result_reg_r_9[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_15 = result_reg_r_9[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_16 = result_reg_r_9[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_17 = result_reg_r_9[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_18 = result_reg_r_9[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_19 = result_reg_r_9[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_20 = result_reg_r_9[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_21 = result_reg_r_9[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_22 = result_reg_r_9[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_23 = result_reg_r_9[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_24 = result_reg_r_9[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_25 = result_reg_r_9[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_26 = result_reg_r_9[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_28 = result_reg_r_9[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_29 = result_reg_r_9[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_30 = result_reg_r_9[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_31 = result_reg_r_9[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_32 = result_reg_r_9[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_33 = result_reg_r_9[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_34 = result_reg_r_9[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_35 = result_reg_r_9[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_36 = result_reg_r_9[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_37 = result_reg_r_9[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_38 = result_reg_r_9[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_39 = result_reg_r_9[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_40 = result_reg_r_9[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_41 = result_reg_r_9[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_42 = result_reg_r_9[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_43 = result_reg_r_9[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_44 = result_reg_r_9[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_45 = result_reg_r_9[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_46 = result_reg_r_9[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_19_47 = result_reg_r_9[47]; // @[BinaryDesigns2.scala 192:62]
  wire [5:0] result_reg_w_10_hi_hi_lo = {wire_res_19_41,wire_res_19_40,wire_res_19_39,wire_res_19_38,wire_res_19_37,
    wire_res_19_36}; // @[BinaryDesigns2.scala 231:46]
  wire [74:0] _T_2344 = {b_aux_reg_r_9, 27'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [74:0] _GEN_585 = {{27'd0}, a_aux_reg_r_9}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_19_27 = _GEN_585 >= _T_2344; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_10_hi_lo_lo = {wire_res_19_29,wire_res_19_28,wire_res_19_27,wire_res_19_26,wire_res_19_25,
    wire_res_19_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_10_hi_lo = {wire_res_19_35,wire_res_19_34,wire_res_19_33,wire_res_19_32,wire_res_19_31,
    wire_res_19_30,result_reg_w_10_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_10_lo_hi_lo = {wire_res_19_17,wire_res_19_16,wire_res_19_15,wire_res_19_14,wire_res_19_13,
    wire_res_19_12}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_10_lo_lo_lo = {wire_res_19_5,wire_res_19_4,wire_res_19_3,wire_res_19_2,wire_res_19_1,
    wire_res_19_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_10_lo_lo = {wire_res_19_11,wire_res_19_10,wire_res_19_9,wire_res_19_8,wire_res_19_7,
    wire_res_19_6,result_reg_w_10_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_10_lo = {wire_res_19_23,wire_res_19_22,wire_res_19_21,wire_res_19_20,wire_res_19_19,
    wire_res_19_18,result_reg_w_10_lo_hi_lo,result_reg_w_10_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_10 = {wire_res_19_47,wire_res_19_46,wire_res_19_45,wire_res_19_44,wire_res_19_43,
    wire_res_19_42,result_reg_w_10_hi_hi_lo,result_reg_w_10_hi_lo,result_reg_w_10_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_20_0 = result_reg_w_10[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_1 = result_reg_w_10[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_2 = result_reg_w_10[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_3 = result_reg_w_10[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_4 = result_reg_w_10[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_5 = result_reg_w_10[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_6 = result_reg_w_10[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_7 = result_reg_w_10[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_8 = result_reg_w_10[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_9 = result_reg_w_10[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_10 = result_reg_w_10[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_11 = result_reg_w_10[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_12 = result_reg_w_10[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_13 = result_reg_w_10[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_14 = result_reg_w_10[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_15 = result_reg_w_10[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_16 = result_reg_w_10[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_17 = result_reg_w_10[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_18 = result_reg_w_10[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_19 = result_reg_w_10[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_20 = result_reg_w_10[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_21 = result_reg_w_10[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_22 = result_reg_w_10[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_23 = result_reg_w_10[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_24 = result_reg_w_10[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_25 = result_reg_w_10[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_27 = result_reg_w_10[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_28 = result_reg_w_10[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_29 = result_reg_w_10[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_30 = result_reg_w_10[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_31 = result_reg_w_10[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_32 = result_reg_w_10[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_33 = result_reg_w_10[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_34 = result_reg_w_10[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_35 = result_reg_w_10[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_36 = result_reg_w_10[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_37 = result_reg_w_10[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_38 = result_reg_w_10[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_39 = result_reg_w_10[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_40 = result_reg_w_10[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_41 = result_reg_w_10[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_42 = result_reg_w_10[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_43 = result_reg_w_10[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_44 = result_reg_w_10[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_45 = result_reg_w_10[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_46 = result_reg_w_10[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_20_47 = result_reg_w_10[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_0 = result_reg_r_10[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_1 = result_reg_r_10[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_2 = result_reg_r_10[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_3 = result_reg_r_10[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_4 = result_reg_r_10[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_5 = result_reg_r_10[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_6 = result_reg_r_10[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_7 = result_reg_r_10[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_8 = result_reg_r_10[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_9 = result_reg_r_10[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_10 = result_reg_r_10[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_11 = result_reg_r_10[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_12 = result_reg_r_10[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_13 = result_reg_r_10[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_14 = result_reg_r_10[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_15 = result_reg_r_10[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_16 = result_reg_r_10[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_17 = result_reg_r_10[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_18 = result_reg_r_10[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_19 = result_reg_r_10[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_20 = result_reg_r_10[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_21 = result_reg_r_10[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_22 = result_reg_r_10[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_23 = result_reg_r_10[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_24 = result_reg_r_10[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_26 = result_reg_r_10[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_27 = result_reg_r_10[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_28 = result_reg_r_10[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_29 = result_reg_r_10[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_30 = result_reg_r_10[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_31 = result_reg_r_10[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_32 = result_reg_r_10[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_33 = result_reg_r_10[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_34 = result_reg_r_10[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_35 = result_reg_r_10[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_36 = result_reg_r_10[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_37 = result_reg_r_10[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_38 = result_reg_r_10[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_39 = result_reg_r_10[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_40 = result_reg_r_10[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_41 = result_reg_r_10[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_42 = result_reg_r_10[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_43 = result_reg_r_10[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_44 = result_reg_r_10[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_45 = result_reg_r_10[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_46 = result_reg_r_10[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_21_47 = result_reg_r_10[47]; // @[BinaryDesigns2.scala 192:62]
  wire [5:0] result_reg_w_11_hi_hi_lo = {wire_res_21_41,wire_res_21_40,wire_res_21_39,wire_res_21_38,wire_res_21_37,
    wire_res_21_36}; // @[BinaryDesigns2.scala 231:46]
  wire [72:0] _T_2348 = {b_aux_reg_r_10, 25'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [72:0] _GEN_586 = {{25'd0}, a_aux_reg_r_10}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_21_25 = _GEN_586 >= _T_2348; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_11_hi_lo_lo = {wire_res_21_29,wire_res_21_28,wire_res_21_27,wire_res_21_26,wire_res_21_25,
    wire_res_21_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_11_hi_lo = {wire_res_21_35,wire_res_21_34,wire_res_21_33,wire_res_21_32,wire_res_21_31,
    wire_res_21_30,result_reg_w_11_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_11_lo_hi_lo = {wire_res_21_17,wire_res_21_16,wire_res_21_15,wire_res_21_14,wire_res_21_13,
    wire_res_21_12}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_11_lo_lo_lo = {wire_res_21_5,wire_res_21_4,wire_res_21_3,wire_res_21_2,wire_res_21_1,
    wire_res_21_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_11_lo_lo = {wire_res_21_11,wire_res_21_10,wire_res_21_9,wire_res_21_8,wire_res_21_7,
    wire_res_21_6,result_reg_w_11_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_11_lo = {wire_res_21_23,wire_res_21_22,wire_res_21_21,wire_res_21_20,wire_res_21_19,
    wire_res_21_18,result_reg_w_11_lo_hi_lo,result_reg_w_11_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_11 = {wire_res_21_47,wire_res_21_46,wire_res_21_45,wire_res_21_44,wire_res_21_43,
    wire_res_21_42,result_reg_w_11_hi_hi_lo,result_reg_w_11_hi_lo,result_reg_w_11_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_22_0 = result_reg_w_11[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_1 = result_reg_w_11[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_2 = result_reg_w_11[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_3 = result_reg_w_11[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_4 = result_reg_w_11[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_5 = result_reg_w_11[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_6 = result_reg_w_11[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_7 = result_reg_w_11[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_8 = result_reg_w_11[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_9 = result_reg_w_11[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_10 = result_reg_w_11[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_11 = result_reg_w_11[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_12 = result_reg_w_11[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_13 = result_reg_w_11[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_14 = result_reg_w_11[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_15 = result_reg_w_11[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_16 = result_reg_w_11[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_17 = result_reg_w_11[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_18 = result_reg_w_11[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_19 = result_reg_w_11[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_20 = result_reg_w_11[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_21 = result_reg_w_11[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_22 = result_reg_w_11[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_23 = result_reg_w_11[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_25 = result_reg_w_11[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_26 = result_reg_w_11[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_27 = result_reg_w_11[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_28 = result_reg_w_11[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_29 = result_reg_w_11[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_30 = result_reg_w_11[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_31 = result_reg_w_11[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_32 = result_reg_w_11[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_33 = result_reg_w_11[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_34 = result_reg_w_11[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_35 = result_reg_w_11[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_36 = result_reg_w_11[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_37 = result_reg_w_11[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_38 = result_reg_w_11[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_39 = result_reg_w_11[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_40 = result_reg_w_11[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_41 = result_reg_w_11[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_42 = result_reg_w_11[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_43 = result_reg_w_11[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_44 = result_reg_w_11[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_45 = result_reg_w_11[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_46 = result_reg_w_11[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_22_47 = result_reg_w_11[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_0 = result_reg_r_11[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_1 = result_reg_r_11[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_2 = result_reg_r_11[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_3 = result_reg_r_11[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_4 = result_reg_r_11[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_5 = result_reg_r_11[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_6 = result_reg_r_11[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_7 = result_reg_r_11[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_8 = result_reg_r_11[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_9 = result_reg_r_11[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_10 = result_reg_r_11[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_11 = result_reg_r_11[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_12 = result_reg_r_11[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_13 = result_reg_r_11[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_14 = result_reg_r_11[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_15 = result_reg_r_11[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_16 = result_reg_r_11[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_17 = result_reg_r_11[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_18 = result_reg_r_11[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_19 = result_reg_r_11[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_20 = result_reg_r_11[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_21 = result_reg_r_11[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_22 = result_reg_r_11[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_24 = result_reg_r_11[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_25 = result_reg_r_11[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_26 = result_reg_r_11[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_27 = result_reg_r_11[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_28 = result_reg_r_11[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_29 = result_reg_r_11[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_30 = result_reg_r_11[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_31 = result_reg_r_11[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_32 = result_reg_r_11[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_33 = result_reg_r_11[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_34 = result_reg_r_11[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_35 = result_reg_r_11[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_36 = result_reg_r_11[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_37 = result_reg_r_11[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_38 = result_reg_r_11[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_39 = result_reg_r_11[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_40 = result_reg_r_11[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_41 = result_reg_r_11[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_42 = result_reg_r_11[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_43 = result_reg_r_11[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_44 = result_reg_r_11[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_45 = result_reg_r_11[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_46 = result_reg_r_11[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_23_47 = result_reg_r_11[47]; // @[BinaryDesigns2.scala 192:62]
  wire [5:0] result_reg_w_12_hi_hi_lo = {wire_res_23_41,wire_res_23_40,wire_res_23_39,wire_res_23_38,wire_res_23_37,
    wire_res_23_36}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_12_hi_lo_lo = {wire_res_23_29,wire_res_23_28,wire_res_23_27,wire_res_23_26,wire_res_23_25,
    wire_res_23_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_12_hi_lo = {wire_res_23_35,wire_res_23_34,wire_res_23_33,wire_res_23_32,wire_res_23_31,
    wire_res_23_30,result_reg_w_12_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [70:0] _T_2352 = {b_aux_reg_r_11, 23'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [70:0] _GEN_587 = {{23'd0}, a_aux_reg_r_11}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_23_23 = _GEN_587 >= _T_2352; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_12_lo_hi_lo = {wire_res_23_17,wire_res_23_16,wire_res_23_15,wire_res_23_14,wire_res_23_13,
    wire_res_23_12}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_12_lo_lo_lo = {wire_res_23_5,wire_res_23_4,wire_res_23_3,wire_res_23_2,wire_res_23_1,
    wire_res_23_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_12_lo_lo = {wire_res_23_11,wire_res_23_10,wire_res_23_9,wire_res_23_8,wire_res_23_7,
    wire_res_23_6,result_reg_w_12_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_12_lo = {wire_res_23_23,wire_res_23_22,wire_res_23_21,wire_res_23_20,wire_res_23_19,
    wire_res_23_18,result_reg_w_12_lo_hi_lo,result_reg_w_12_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_12 = {wire_res_23_47,wire_res_23_46,wire_res_23_45,wire_res_23_44,wire_res_23_43,
    wire_res_23_42,result_reg_w_12_hi_hi_lo,result_reg_w_12_hi_lo,result_reg_w_12_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_24_0 = result_reg_w_12[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_1 = result_reg_w_12[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_2 = result_reg_w_12[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_3 = result_reg_w_12[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_4 = result_reg_w_12[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_5 = result_reg_w_12[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_6 = result_reg_w_12[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_7 = result_reg_w_12[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_8 = result_reg_w_12[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_9 = result_reg_w_12[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_10 = result_reg_w_12[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_11 = result_reg_w_12[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_12 = result_reg_w_12[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_13 = result_reg_w_12[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_14 = result_reg_w_12[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_15 = result_reg_w_12[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_16 = result_reg_w_12[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_17 = result_reg_w_12[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_18 = result_reg_w_12[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_19 = result_reg_w_12[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_20 = result_reg_w_12[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_21 = result_reg_w_12[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_23 = result_reg_w_12[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_24 = result_reg_w_12[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_25 = result_reg_w_12[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_26 = result_reg_w_12[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_27 = result_reg_w_12[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_28 = result_reg_w_12[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_29 = result_reg_w_12[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_30 = result_reg_w_12[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_31 = result_reg_w_12[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_32 = result_reg_w_12[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_33 = result_reg_w_12[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_34 = result_reg_w_12[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_35 = result_reg_w_12[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_36 = result_reg_w_12[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_37 = result_reg_w_12[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_38 = result_reg_w_12[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_39 = result_reg_w_12[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_40 = result_reg_w_12[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_41 = result_reg_w_12[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_42 = result_reg_w_12[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_43 = result_reg_w_12[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_44 = result_reg_w_12[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_45 = result_reg_w_12[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_46 = result_reg_w_12[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_24_47 = result_reg_w_12[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_0 = result_reg_r_12[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_1 = result_reg_r_12[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_2 = result_reg_r_12[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_3 = result_reg_r_12[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_4 = result_reg_r_12[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_5 = result_reg_r_12[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_6 = result_reg_r_12[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_7 = result_reg_r_12[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_8 = result_reg_r_12[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_9 = result_reg_r_12[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_10 = result_reg_r_12[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_11 = result_reg_r_12[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_12 = result_reg_r_12[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_13 = result_reg_r_12[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_14 = result_reg_r_12[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_15 = result_reg_r_12[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_16 = result_reg_r_12[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_17 = result_reg_r_12[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_18 = result_reg_r_12[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_19 = result_reg_r_12[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_20 = result_reg_r_12[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_22 = result_reg_r_12[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_23 = result_reg_r_12[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_24 = result_reg_r_12[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_25 = result_reg_r_12[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_26 = result_reg_r_12[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_27 = result_reg_r_12[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_28 = result_reg_r_12[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_29 = result_reg_r_12[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_30 = result_reg_r_12[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_31 = result_reg_r_12[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_32 = result_reg_r_12[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_33 = result_reg_r_12[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_34 = result_reg_r_12[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_35 = result_reg_r_12[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_36 = result_reg_r_12[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_37 = result_reg_r_12[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_38 = result_reg_r_12[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_39 = result_reg_r_12[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_40 = result_reg_r_12[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_41 = result_reg_r_12[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_42 = result_reg_r_12[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_43 = result_reg_r_12[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_44 = result_reg_r_12[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_45 = result_reg_r_12[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_46 = result_reg_r_12[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_25_47 = result_reg_r_12[47]; // @[BinaryDesigns2.scala 192:62]
  wire [5:0] result_reg_w_13_hi_hi_lo = {wire_res_25_41,wire_res_25_40,wire_res_25_39,wire_res_25_38,wire_res_25_37,
    wire_res_25_36}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_13_hi_lo_lo = {wire_res_25_29,wire_res_25_28,wire_res_25_27,wire_res_25_26,wire_res_25_25,
    wire_res_25_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_13_hi_lo = {wire_res_25_35,wire_res_25_34,wire_res_25_33,wire_res_25_32,wire_res_25_31,
    wire_res_25_30,result_reg_w_13_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [68:0] _T_2356 = {b_aux_reg_r_12, 21'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [68:0] _GEN_588 = {{21'd0}, a_aux_reg_r_12}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_25_21 = _GEN_588 >= _T_2356; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_13_lo_hi_lo = {wire_res_25_17,wire_res_25_16,wire_res_25_15,wire_res_25_14,wire_res_25_13,
    wire_res_25_12}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_13_lo_lo_lo = {wire_res_25_5,wire_res_25_4,wire_res_25_3,wire_res_25_2,wire_res_25_1,
    wire_res_25_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_13_lo_lo = {wire_res_25_11,wire_res_25_10,wire_res_25_9,wire_res_25_8,wire_res_25_7,
    wire_res_25_6,result_reg_w_13_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_13_lo = {wire_res_25_23,wire_res_25_22,wire_res_25_21,wire_res_25_20,wire_res_25_19,
    wire_res_25_18,result_reg_w_13_lo_hi_lo,result_reg_w_13_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_13 = {wire_res_25_47,wire_res_25_46,wire_res_25_45,wire_res_25_44,wire_res_25_43,
    wire_res_25_42,result_reg_w_13_hi_hi_lo,result_reg_w_13_hi_lo,result_reg_w_13_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_26_0 = result_reg_w_13[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_1 = result_reg_w_13[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_2 = result_reg_w_13[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_3 = result_reg_w_13[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_4 = result_reg_w_13[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_5 = result_reg_w_13[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_6 = result_reg_w_13[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_7 = result_reg_w_13[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_8 = result_reg_w_13[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_9 = result_reg_w_13[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_10 = result_reg_w_13[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_11 = result_reg_w_13[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_12 = result_reg_w_13[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_13 = result_reg_w_13[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_14 = result_reg_w_13[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_15 = result_reg_w_13[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_16 = result_reg_w_13[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_17 = result_reg_w_13[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_18 = result_reg_w_13[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_19 = result_reg_w_13[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_21 = result_reg_w_13[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_22 = result_reg_w_13[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_23 = result_reg_w_13[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_24 = result_reg_w_13[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_25 = result_reg_w_13[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_26 = result_reg_w_13[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_27 = result_reg_w_13[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_28 = result_reg_w_13[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_29 = result_reg_w_13[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_30 = result_reg_w_13[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_31 = result_reg_w_13[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_32 = result_reg_w_13[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_33 = result_reg_w_13[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_34 = result_reg_w_13[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_35 = result_reg_w_13[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_36 = result_reg_w_13[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_37 = result_reg_w_13[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_38 = result_reg_w_13[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_39 = result_reg_w_13[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_40 = result_reg_w_13[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_41 = result_reg_w_13[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_42 = result_reg_w_13[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_43 = result_reg_w_13[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_44 = result_reg_w_13[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_45 = result_reg_w_13[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_46 = result_reg_w_13[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_26_47 = result_reg_w_13[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_0 = result_reg_r_13[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_1 = result_reg_r_13[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_2 = result_reg_r_13[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_3 = result_reg_r_13[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_4 = result_reg_r_13[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_5 = result_reg_r_13[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_6 = result_reg_r_13[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_7 = result_reg_r_13[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_8 = result_reg_r_13[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_9 = result_reg_r_13[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_10 = result_reg_r_13[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_11 = result_reg_r_13[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_12 = result_reg_r_13[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_13 = result_reg_r_13[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_14 = result_reg_r_13[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_15 = result_reg_r_13[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_16 = result_reg_r_13[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_17 = result_reg_r_13[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_18 = result_reg_r_13[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_20 = result_reg_r_13[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_21 = result_reg_r_13[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_22 = result_reg_r_13[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_23 = result_reg_r_13[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_24 = result_reg_r_13[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_25 = result_reg_r_13[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_26 = result_reg_r_13[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_27 = result_reg_r_13[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_28 = result_reg_r_13[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_29 = result_reg_r_13[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_30 = result_reg_r_13[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_31 = result_reg_r_13[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_32 = result_reg_r_13[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_33 = result_reg_r_13[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_34 = result_reg_r_13[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_35 = result_reg_r_13[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_36 = result_reg_r_13[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_37 = result_reg_r_13[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_38 = result_reg_r_13[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_39 = result_reg_r_13[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_40 = result_reg_r_13[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_41 = result_reg_r_13[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_42 = result_reg_r_13[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_43 = result_reg_r_13[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_44 = result_reg_r_13[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_45 = result_reg_r_13[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_46 = result_reg_r_13[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_27_47 = result_reg_r_13[47]; // @[BinaryDesigns2.scala 192:62]
  wire [5:0] result_reg_w_14_hi_hi_lo = {wire_res_27_41,wire_res_27_40,wire_res_27_39,wire_res_27_38,wire_res_27_37,
    wire_res_27_36}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_14_hi_lo_lo = {wire_res_27_29,wire_res_27_28,wire_res_27_27,wire_res_27_26,wire_res_27_25,
    wire_res_27_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_14_hi_lo = {wire_res_27_35,wire_res_27_34,wire_res_27_33,wire_res_27_32,wire_res_27_31,
    wire_res_27_30,result_reg_w_14_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [66:0] _T_2360 = {b_aux_reg_r_13, 19'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [66:0] _GEN_589 = {{19'd0}, a_aux_reg_r_13}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_27_19 = _GEN_589 >= _T_2360; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_14_lo_hi_lo = {wire_res_27_17,wire_res_27_16,wire_res_27_15,wire_res_27_14,wire_res_27_13,
    wire_res_27_12}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_14_lo_lo_lo = {wire_res_27_5,wire_res_27_4,wire_res_27_3,wire_res_27_2,wire_res_27_1,
    wire_res_27_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_14_lo_lo = {wire_res_27_11,wire_res_27_10,wire_res_27_9,wire_res_27_8,wire_res_27_7,
    wire_res_27_6,result_reg_w_14_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_14_lo = {wire_res_27_23,wire_res_27_22,wire_res_27_21,wire_res_27_20,wire_res_27_19,
    wire_res_27_18,result_reg_w_14_lo_hi_lo,result_reg_w_14_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_14 = {wire_res_27_47,wire_res_27_46,wire_res_27_45,wire_res_27_44,wire_res_27_43,
    wire_res_27_42,result_reg_w_14_hi_hi_lo,result_reg_w_14_hi_lo,result_reg_w_14_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_28_0 = result_reg_w_14[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_1 = result_reg_w_14[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_2 = result_reg_w_14[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_3 = result_reg_w_14[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_4 = result_reg_w_14[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_5 = result_reg_w_14[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_6 = result_reg_w_14[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_7 = result_reg_w_14[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_8 = result_reg_w_14[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_9 = result_reg_w_14[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_10 = result_reg_w_14[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_11 = result_reg_w_14[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_12 = result_reg_w_14[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_13 = result_reg_w_14[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_14 = result_reg_w_14[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_15 = result_reg_w_14[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_16 = result_reg_w_14[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_17 = result_reg_w_14[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_19 = result_reg_w_14[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_20 = result_reg_w_14[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_21 = result_reg_w_14[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_22 = result_reg_w_14[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_23 = result_reg_w_14[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_24 = result_reg_w_14[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_25 = result_reg_w_14[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_26 = result_reg_w_14[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_27 = result_reg_w_14[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_28 = result_reg_w_14[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_29 = result_reg_w_14[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_30 = result_reg_w_14[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_31 = result_reg_w_14[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_32 = result_reg_w_14[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_33 = result_reg_w_14[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_34 = result_reg_w_14[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_35 = result_reg_w_14[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_36 = result_reg_w_14[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_37 = result_reg_w_14[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_38 = result_reg_w_14[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_39 = result_reg_w_14[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_40 = result_reg_w_14[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_41 = result_reg_w_14[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_42 = result_reg_w_14[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_43 = result_reg_w_14[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_44 = result_reg_w_14[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_45 = result_reg_w_14[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_46 = result_reg_w_14[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_28_47 = result_reg_w_14[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_0 = result_reg_r_14[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_1 = result_reg_r_14[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_2 = result_reg_r_14[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_3 = result_reg_r_14[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_4 = result_reg_r_14[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_5 = result_reg_r_14[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_6 = result_reg_r_14[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_7 = result_reg_r_14[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_8 = result_reg_r_14[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_9 = result_reg_r_14[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_10 = result_reg_r_14[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_11 = result_reg_r_14[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_12 = result_reg_r_14[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_13 = result_reg_r_14[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_14 = result_reg_r_14[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_15 = result_reg_r_14[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_16 = result_reg_r_14[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_18 = result_reg_r_14[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_19 = result_reg_r_14[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_20 = result_reg_r_14[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_21 = result_reg_r_14[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_22 = result_reg_r_14[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_23 = result_reg_r_14[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_24 = result_reg_r_14[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_25 = result_reg_r_14[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_26 = result_reg_r_14[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_27 = result_reg_r_14[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_28 = result_reg_r_14[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_29 = result_reg_r_14[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_30 = result_reg_r_14[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_31 = result_reg_r_14[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_32 = result_reg_r_14[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_33 = result_reg_r_14[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_34 = result_reg_r_14[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_35 = result_reg_r_14[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_36 = result_reg_r_14[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_37 = result_reg_r_14[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_38 = result_reg_r_14[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_39 = result_reg_r_14[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_40 = result_reg_r_14[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_41 = result_reg_r_14[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_42 = result_reg_r_14[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_43 = result_reg_r_14[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_44 = result_reg_r_14[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_45 = result_reg_r_14[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_46 = result_reg_r_14[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_29_47 = result_reg_r_14[47]; // @[BinaryDesigns2.scala 192:62]
  wire [5:0] result_reg_w_15_hi_hi_lo = {wire_res_29_41,wire_res_29_40,wire_res_29_39,wire_res_29_38,wire_res_29_37,
    wire_res_29_36}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_15_hi_lo_lo = {wire_res_29_29,wire_res_29_28,wire_res_29_27,wire_res_29_26,wire_res_29_25,
    wire_res_29_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_15_hi_lo = {wire_res_29_35,wire_res_29_34,wire_res_29_33,wire_res_29_32,wire_res_29_31,
    wire_res_29_30,result_reg_w_15_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [64:0] _T_2364 = {b_aux_reg_r_14, 17'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [64:0] _GEN_590 = {{17'd0}, a_aux_reg_r_14}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_29_17 = _GEN_590 >= _T_2364; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_15_lo_hi_lo = {wire_res_29_17,wire_res_29_16,wire_res_29_15,wire_res_29_14,wire_res_29_13,
    wire_res_29_12}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_15_lo_lo_lo = {wire_res_29_5,wire_res_29_4,wire_res_29_3,wire_res_29_2,wire_res_29_1,
    wire_res_29_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_15_lo_lo = {wire_res_29_11,wire_res_29_10,wire_res_29_9,wire_res_29_8,wire_res_29_7,
    wire_res_29_6,result_reg_w_15_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_15_lo = {wire_res_29_23,wire_res_29_22,wire_res_29_21,wire_res_29_20,wire_res_29_19,
    wire_res_29_18,result_reg_w_15_lo_hi_lo,result_reg_w_15_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_15 = {wire_res_29_47,wire_res_29_46,wire_res_29_45,wire_res_29_44,wire_res_29_43,
    wire_res_29_42,result_reg_w_15_hi_hi_lo,result_reg_w_15_hi_lo,result_reg_w_15_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_30_0 = result_reg_w_15[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_1 = result_reg_w_15[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_2 = result_reg_w_15[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_3 = result_reg_w_15[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_4 = result_reg_w_15[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_5 = result_reg_w_15[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_6 = result_reg_w_15[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_7 = result_reg_w_15[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_8 = result_reg_w_15[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_9 = result_reg_w_15[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_10 = result_reg_w_15[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_11 = result_reg_w_15[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_12 = result_reg_w_15[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_13 = result_reg_w_15[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_14 = result_reg_w_15[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_15 = result_reg_w_15[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_17 = result_reg_w_15[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_18 = result_reg_w_15[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_19 = result_reg_w_15[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_20 = result_reg_w_15[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_21 = result_reg_w_15[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_22 = result_reg_w_15[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_23 = result_reg_w_15[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_24 = result_reg_w_15[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_25 = result_reg_w_15[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_26 = result_reg_w_15[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_27 = result_reg_w_15[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_28 = result_reg_w_15[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_29 = result_reg_w_15[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_30 = result_reg_w_15[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_31 = result_reg_w_15[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_32 = result_reg_w_15[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_33 = result_reg_w_15[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_34 = result_reg_w_15[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_35 = result_reg_w_15[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_36 = result_reg_w_15[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_37 = result_reg_w_15[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_38 = result_reg_w_15[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_39 = result_reg_w_15[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_40 = result_reg_w_15[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_41 = result_reg_w_15[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_42 = result_reg_w_15[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_43 = result_reg_w_15[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_44 = result_reg_w_15[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_45 = result_reg_w_15[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_46 = result_reg_w_15[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_30_47 = result_reg_w_15[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_0 = result_reg_r_15[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_1 = result_reg_r_15[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_2 = result_reg_r_15[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_3 = result_reg_r_15[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_4 = result_reg_r_15[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_5 = result_reg_r_15[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_6 = result_reg_r_15[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_7 = result_reg_r_15[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_8 = result_reg_r_15[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_9 = result_reg_r_15[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_10 = result_reg_r_15[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_11 = result_reg_r_15[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_12 = result_reg_r_15[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_13 = result_reg_r_15[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_14 = result_reg_r_15[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_16 = result_reg_r_15[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_17 = result_reg_r_15[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_18 = result_reg_r_15[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_19 = result_reg_r_15[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_20 = result_reg_r_15[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_21 = result_reg_r_15[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_22 = result_reg_r_15[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_23 = result_reg_r_15[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_24 = result_reg_r_15[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_25 = result_reg_r_15[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_26 = result_reg_r_15[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_27 = result_reg_r_15[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_28 = result_reg_r_15[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_29 = result_reg_r_15[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_30 = result_reg_r_15[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_31 = result_reg_r_15[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_32 = result_reg_r_15[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_33 = result_reg_r_15[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_34 = result_reg_r_15[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_35 = result_reg_r_15[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_36 = result_reg_r_15[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_37 = result_reg_r_15[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_38 = result_reg_r_15[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_39 = result_reg_r_15[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_40 = result_reg_r_15[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_41 = result_reg_r_15[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_42 = result_reg_r_15[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_43 = result_reg_r_15[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_44 = result_reg_r_15[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_45 = result_reg_r_15[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_46 = result_reg_r_15[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_31_47 = result_reg_r_15[47]; // @[BinaryDesigns2.scala 192:62]
  wire [5:0] result_reg_w_16_hi_hi_lo = {wire_res_31_41,wire_res_31_40,wire_res_31_39,wire_res_31_38,wire_res_31_37,
    wire_res_31_36}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_16_hi_lo_lo = {wire_res_31_29,wire_res_31_28,wire_res_31_27,wire_res_31_26,wire_res_31_25,
    wire_res_31_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_16_hi_lo = {wire_res_31_35,wire_res_31_34,wire_res_31_33,wire_res_31_32,wire_res_31_31,
    wire_res_31_30,result_reg_w_16_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [62:0] _T_2368 = {b_aux_reg_r_15, 15'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [62:0] _GEN_591 = {{15'd0}, a_aux_reg_r_15}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_31_15 = _GEN_591 >= _T_2368; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_16_lo_hi_lo = {wire_res_31_17,wire_res_31_16,wire_res_31_15,wire_res_31_14,wire_res_31_13,
    wire_res_31_12}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_16_lo_lo_lo = {wire_res_31_5,wire_res_31_4,wire_res_31_3,wire_res_31_2,wire_res_31_1,
    wire_res_31_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_16_lo_lo = {wire_res_31_11,wire_res_31_10,wire_res_31_9,wire_res_31_8,wire_res_31_7,
    wire_res_31_6,result_reg_w_16_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_16_lo = {wire_res_31_23,wire_res_31_22,wire_res_31_21,wire_res_31_20,wire_res_31_19,
    wire_res_31_18,result_reg_w_16_lo_hi_lo,result_reg_w_16_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_16 = {wire_res_31_47,wire_res_31_46,wire_res_31_45,wire_res_31_44,wire_res_31_43,
    wire_res_31_42,result_reg_w_16_hi_hi_lo,result_reg_w_16_hi_lo,result_reg_w_16_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_32_0 = result_reg_w_16[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_1 = result_reg_w_16[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_2 = result_reg_w_16[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_3 = result_reg_w_16[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_4 = result_reg_w_16[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_5 = result_reg_w_16[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_6 = result_reg_w_16[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_7 = result_reg_w_16[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_8 = result_reg_w_16[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_9 = result_reg_w_16[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_10 = result_reg_w_16[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_11 = result_reg_w_16[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_12 = result_reg_w_16[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_13 = result_reg_w_16[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_15 = result_reg_w_16[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_16 = result_reg_w_16[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_17 = result_reg_w_16[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_18 = result_reg_w_16[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_19 = result_reg_w_16[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_20 = result_reg_w_16[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_21 = result_reg_w_16[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_22 = result_reg_w_16[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_23 = result_reg_w_16[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_24 = result_reg_w_16[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_25 = result_reg_w_16[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_26 = result_reg_w_16[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_27 = result_reg_w_16[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_28 = result_reg_w_16[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_29 = result_reg_w_16[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_30 = result_reg_w_16[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_31 = result_reg_w_16[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_32 = result_reg_w_16[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_33 = result_reg_w_16[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_34 = result_reg_w_16[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_35 = result_reg_w_16[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_36 = result_reg_w_16[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_37 = result_reg_w_16[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_38 = result_reg_w_16[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_39 = result_reg_w_16[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_40 = result_reg_w_16[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_41 = result_reg_w_16[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_42 = result_reg_w_16[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_43 = result_reg_w_16[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_44 = result_reg_w_16[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_45 = result_reg_w_16[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_46 = result_reg_w_16[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_32_47 = result_reg_w_16[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_0 = result_reg_r_16[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_1 = result_reg_r_16[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_2 = result_reg_r_16[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_3 = result_reg_r_16[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_4 = result_reg_r_16[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_5 = result_reg_r_16[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_6 = result_reg_r_16[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_7 = result_reg_r_16[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_8 = result_reg_r_16[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_9 = result_reg_r_16[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_10 = result_reg_r_16[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_11 = result_reg_r_16[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_12 = result_reg_r_16[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_14 = result_reg_r_16[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_15 = result_reg_r_16[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_16 = result_reg_r_16[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_17 = result_reg_r_16[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_18 = result_reg_r_16[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_19 = result_reg_r_16[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_20 = result_reg_r_16[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_21 = result_reg_r_16[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_22 = result_reg_r_16[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_23 = result_reg_r_16[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_24 = result_reg_r_16[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_25 = result_reg_r_16[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_26 = result_reg_r_16[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_27 = result_reg_r_16[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_28 = result_reg_r_16[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_29 = result_reg_r_16[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_30 = result_reg_r_16[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_31 = result_reg_r_16[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_32 = result_reg_r_16[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_33 = result_reg_r_16[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_34 = result_reg_r_16[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_35 = result_reg_r_16[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_36 = result_reg_r_16[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_37 = result_reg_r_16[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_38 = result_reg_r_16[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_39 = result_reg_r_16[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_40 = result_reg_r_16[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_41 = result_reg_r_16[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_42 = result_reg_r_16[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_43 = result_reg_r_16[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_44 = result_reg_r_16[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_45 = result_reg_r_16[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_46 = result_reg_r_16[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_33_47 = result_reg_r_16[47]; // @[BinaryDesigns2.scala 192:62]
  wire [5:0] result_reg_w_17_hi_hi_lo = {wire_res_33_41,wire_res_33_40,wire_res_33_39,wire_res_33_38,wire_res_33_37,
    wire_res_33_36}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_17_hi_lo_lo = {wire_res_33_29,wire_res_33_28,wire_res_33_27,wire_res_33_26,wire_res_33_25,
    wire_res_33_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_17_hi_lo = {wire_res_33_35,wire_res_33_34,wire_res_33_33,wire_res_33_32,wire_res_33_31,
    wire_res_33_30,result_reg_w_17_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [60:0] _T_2372 = {b_aux_reg_r_16, 13'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [60:0] _GEN_592 = {{13'd0}, a_aux_reg_r_16}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_33_13 = _GEN_592 >= _T_2372; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_17_lo_hi_lo = {wire_res_33_17,wire_res_33_16,wire_res_33_15,wire_res_33_14,wire_res_33_13,
    wire_res_33_12}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_17_lo_lo_lo = {wire_res_33_5,wire_res_33_4,wire_res_33_3,wire_res_33_2,wire_res_33_1,
    wire_res_33_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_17_lo_lo = {wire_res_33_11,wire_res_33_10,wire_res_33_9,wire_res_33_8,wire_res_33_7,
    wire_res_33_6,result_reg_w_17_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_17_lo = {wire_res_33_23,wire_res_33_22,wire_res_33_21,wire_res_33_20,wire_res_33_19,
    wire_res_33_18,result_reg_w_17_lo_hi_lo,result_reg_w_17_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_17 = {wire_res_33_47,wire_res_33_46,wire_res_33_45,wire_res_33_44,wire_res_33_43,
    wire_res_33_42,result_reg_w_17_hi_hi_lo,result_reg_w_17_hi_lo,result_reg_w_17_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_34_0 = result_reg_w_17[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_1 = result_reg_w_17[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_2 = result_reg_w_17[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_3 = result_reg_w_17[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_4 = result_reg_w_17[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_5 = result_reg_w_17[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_6 = result_reg_w_17[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_7 = result_reg_w_17[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_8 = result_reg_w_17[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_9 = result_reg_w_17[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_10 = result_reg_w_17[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_11 = result_reg_w_17[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_13 = result_reg_w_17[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_14 = result_reg_w_17[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_15 = result_reg_w_17[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_16 = result_reg_w_17[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_17 = result_reg_w_17[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_18 = result_reg_w_17[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_19 = result_reg_w_17[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_20 = result_reg_w_17[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_21 = result_reg_w_17[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_22 = result_reg_w_17[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_23 = result_reg_w_17[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_24 = result_reg_w_17[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_25 = result_reg_w_17[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_26 = result_reg_w_17[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_27 = result_reg_w_17[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_28 = result_reg_w_17[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_29 = result_reg_w_17[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_30 = result_reg_w_17[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_31 = result_reg_w_17[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_32 = result_reg_w_17[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_33 = result_reg_w_17[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_34 = result_reg_w_17[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_35 = result_reg_w_17[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_36 = result_reg_w_17[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_37 = result_reg_w_17[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_38 = result_reg_w_17[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_39 = result_reg_w_17[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_40 = result_reg_w_17[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_41 = result_reg_w_17[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_42 = result_reg_w_17[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_43 = result_reg_w_17[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_44 = result_reg_w_17[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_45 = result_reg_w_17[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_46 = result_reg_w_17[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_34_47 = result_reg_w_17[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_0 = result_reg_r_17[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_1 = result_reg_r_17[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_2 = result_reg_r_17[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_3 = result_reg_r_17[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_4 = result_reg_r_17[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_5 = result_reg_r_17[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_6 = result_reg_r_17[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_7 = result_reg_r_17[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_8 = result_reg_r_17[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_9 = result_reg_r_17[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_10 = result_reg_r_17[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_12 = result_reg_r_17[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_13 = result_reg_r_17[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_14 = result_reg_r_17[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_15 = result_reg_r_17[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_16 = result_reg_r_17[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_17 = result_reg_r_17[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_18 = result_reg_r_17[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_19 = result_reg_r_17[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_20 = result_reg_r_17[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_21 = result_reg_r_17[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_22 = result_reg_r_17[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_23 = result_reg_r_17[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_24 = result_reg_r_17[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_25 = result_reg_r_17[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_26 = result_reg_r_17[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_27 = result_reg_r_17[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_28 = result_reg_r_17[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_29 = result_reg_r_17[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_30 = result_reg_r_17[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_31 = result_reg_r_17[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_32 = result_reg_r_17[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_33 = result_reg_r_17[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_34 = result_reg_r_17[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_35 = result_reg_r_17[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_36 = result_reg_r_17[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_37 = result_reg_r_17[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_38 = result_reg_r_17[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_39 = result_reg_r_17[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_40 = result_reg_r_17[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_41 = result_reg_r_17[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_42 = result_reg_r_17[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_43 = result_reg_r_17[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_44 = result_reg_r_17[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_45 = result_reg_r_17[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_46 = result_reg_r_17[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_35_47 = result_reg_r_17[47]; // @[BinaryDesigns2.scala 192:62]
  wire [5:0] result_reg_w_18_hi_hi_lo = {wire_res_35_41,wire_res_35_40,wire_res_35_39,wire_res_35_38,wire_res_35_37,
    wire_res_35_36}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_18_hi_lo_lo = {wire_res_35_29,wire_res_35_28,wire_res_35_27,wire_res_35_26,wire_res_35_25,
    wire_res_35_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_18_hi_lo = {wire_res_35_35,wire_res_35_34,wire_res_35_33,wire_res_35_32,wire_res_35_31,
    wire_res_35_30,result_reg_w_18_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_18_lo_hi_lo = {wire_res_35_17,wire_res_35_16,wire_res_35_15,wire_res_35_14,wire_res_35_13,
    wire_res_35_12}; // @[BinaryDesigns2.scala 231:46]
  wire [58:0] _T_2376 = {b_aux_reg_r_17, 11'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [58:0] _GEN_593 = {{11'd0}, a_aux_reg_r_17}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_35_11 = _GEN_593 >= _T_2376; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_18_lo_lo_lo = {wire_res_35_5,wire_res_35_4,wire_res_35_3,wire_res_35_2,wire_res_35_1,
    wire_res_35_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_18_lo_lo = {wire_res_35_11,wire_res_35_10,wire_res_35_9,wire_res_35_8,wire_res_35_7,
    wire_res_35_6,result_reg_w_18_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_18_lo = {wire_res_35_23,wire_res_35_22,wire_res_35_21,wire_res_35_20,wire_res_35_19,
    wire_res_35_18,result_reg_w_18_lo_hi_lo,result_reg_w_18_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_18 = {wire_res_35_47,wire_res_35_46,wire_res_35_45,wire_res_35_44,wire_res_35_43,
    wire_res_35_42,result_reg_w_18_hi_hi_lo,result_reg_w_18_hi_lo,result_reg_w_18_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_36_0 = result_reg_w_18[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_1 = result_reg_w_18[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_2 = result_reg_w_18[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_3 = result_reg_w_18[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_4 = result_reg_w_18[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_5 = result_reg_w_18[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_6 = result_reg_w_18[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_7 = result_reg_w_18[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_8 = result_reg_w_18[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_9 = result_reg_w_18[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_11 = result_reg_w_18[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_12 = result_reg_w_18[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_13 = result_reg_w_18[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_14 = result_reg_w_18[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_15 = result_reg_w_18[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_16 = result_reg_w_18[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_17 = result_reg_w_18[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_18 = result_reg_w_18[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_19 = result_reg_w_18[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_20 = result_reg_w_18[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_21 = result_reg_w_18[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_22 = result_reg_w_18[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_23 = result_reg_w_18[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_24 = result_reg_w_18[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_25 = result_reg_w_18[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_26 = result_reg_w_18[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_27 = result_reg_w_18[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_28 = result_reg_w_18[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_29 = result_reg_w_18[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_30 = result_reg_w_18[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_31 = result_reg_w_18[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_32 = result_reg_w_18[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_33 = result_reg_w_18[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_34 = result_reg_w_18[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_35 = result_reg_w_18[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_36 = result_reg_w_18[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_37 = result_reg_w_18[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_38 = result_reg_w_18[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_39 = result_reg_w_18[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_40 = result_reg_w_18[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_41 = result_reg_w_18[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_42 = result_reg_w_18[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_43 = result_reg_w_18[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_44 = result_reg_w_18[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_45 = result_reg_w_18[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_46 = result_reg_w_18[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_36_47 = result_reg_w_18[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_0 = result_reg_r_18[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_1 = result_reg_r_18[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_2 = result_reg_r_18[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_3 = result_reg_r_18[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_4 = result_reg_r_18[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_5 = result_reg_r_18[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_6 = result_reg_r_18[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_7 = result_reg_r_18[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_8 = result_reg_r_18[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_10 = result_reg_r_18[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_11 = result_reg_r_18[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_12 = result_reg_r_18[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_13 = result_reg_r_18[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_14 = result_reg_r_18[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_15 = result_reg_r_18[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_16 = result_reg_r_18[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_17 = result_reg_r_18[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_18 = result_reg_r_18[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_19 = result_reg_r_18[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_20 = result_reg_r_18[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_21 = result_reg_r_18[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_22 = result_reg_r_18[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_23 = result_reg_r_18[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_24 = result_reg_r_18[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_25 = result_reg_r_18[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_26 = result_reg_r_18[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_27 = result_reg_r_18[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_28 = result_reg_r_18[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_29 = result_reg_r_18[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_30 = result_reg_r_18[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_31 = result_reg_r_18[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_32 = result_reg_r_18[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_33 = result_reg_r_18[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_34 = result_reg_r_18[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_35 = result_reg_r_18[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_36 = result_reg_r_18[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_37 = result_reg_r_18[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_38 = result_reg_r_18[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_39 = result_reg_r_18[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_40 = result_reg_r_18[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_41 = result_reg_r_18[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_42 = result_reg_r_18[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_43 = result_reg_r_18[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_44 = result_reg_r_18[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_45 = result_reg_r_18[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_46 = result_reg_r_18[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_37_47 = result_reg_r_18[47]; // @[BinaryDesigns2.scala 192:62]
  wire [5:0] result_reg_w_19_hi_hi_lo = {wire_res_37_41,wire_res_37_40,wire_res_37_39,wire_res_37_38,wire_res_37_37,
    wire_res_37_36}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_19_hi_lo_lo = {wire_res_37_29,wire_res_37_28,wire_res_37_27,wire_res_37_26,wire_res_37_25,
    wire_res_37_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_19_hi_lo = {wire_res_37_35,wire_res_37_34,wire_res_37_33,wire_res_37_32,wire_res_37_31,
    wire_res_37_30,result_reg_w_19_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_19_lo_hi_lo = {wire_res_37_17,wire_res_37_16,wire_res_37_15,wire_res_37_14,wire_res_37_13,
    wire_res_37_12}; // @[BinaryDesigns2.scala 231:46]
  wire [56:0] _T_2380 = {b_aux_reg_r_18, 9'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [56:0] _GEN_594 = {{9'd0}, a_aux_reg_r_18}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_37_9 = _GEN_594 >= _T_2380; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_19_lo_lo_lo = {wire_res_37_5,wire_res_37_4,wire_res_37_3,wire_res_37_2,wire_res_37_1,
    wire_res_37_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_19_lo_lo = {wire_res_37_11,wire_res_37_10,wire_res_37_9,wire_res_37_8,wire_res_37_7,
    wire_res_37_6,result_reg_w_19_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_19_lo = {wire_res_37_23,wire_res_37_22,wire_res_37_21,wire_res_37_20,wire_res_37_19,
    wire_res_37_18,result_reg_w_19_lo_hi_lo,result_reg_w_19_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_19 = {wire_res_37_47,wire_res_37_46,wire_res_37_45,wire_res_37_44,wire_res_37_43,
    wire_res_37_42,result_reg_w_19_hi_hi_lo,result_reg_w_19_hi_lo,result_reg_w_19_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_38_0 = result_reg_w_19[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_1 = result_reg_w_19[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_2 = result_reg_w_19[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_3 = result_reg_w_19[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_4 = result_reg_w_19[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_5 = result_reg_w_19[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_6 = result_reg_w_19[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_7 = result_reg_w_19[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_9 = result_reg_w_19[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_10 = result_reg_w_19[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_11 = result_reg_w_19[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_12 = result_reg_w_19[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_13 = result_reg_w_19[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_14 = result_reg_w_19[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_15 = result_reg_w_19[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_16 = result_reg_w_19[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_17 = result_reg_w_19[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_18 = result_reg_w_19[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_19 = result_reg_w_19[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_20 = result_reg_w_19[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_21 = result_reg_w_19[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_22 = result_reg_w_19[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_23 = result_reg_w_19[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_24 = result_reg_w_19[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_25 = result_reg_w_19[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_26 = result_reg_w_19[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_27 = result_reg_w_19[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_28 = result_reg_w_19[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_29 = result_reg_w_19[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_30 = result_reg_w_19[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_31 = result_reg_w_19[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_32 = result_reg_w_19[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_33 = result_reg_w_19[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_34 = result_reg_w_19[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_35 = result_reg_w_19[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_36 = result_reg_w_19[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_37 = result_reg_w_19[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_38 = result_reg_w_19[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_39 = result_reg_w_19[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_40 = result_reg_w_19[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_41 = result_reg_w_19[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_42 = result_reg_w_19[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_43 = result_reg_w_19[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_44 = result_reg_w_19[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_45 = result_reg_w_19[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_46 = result_reg_w_19[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_38_47 = result_reg_w_19[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_0 = result_reg_r_19[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_1 = result_reg_r_19[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_2 = result_reg_r_19[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_3 = result_reg_r_19[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_4 = result_reg_r_19[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_5 = result_reg_r_19[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_6 = result_reg_r_19[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_8 = result_reg_r_19[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_9 = result_reg_r_19[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_10 = result_reg_r_19[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_11 = result_reg_r_19[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_12 = result_reg_r_19[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_13 = result_reg_r_19[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_14 = result_reg_r_19[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_15 = result_reg_r_19[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_16 = result_reg_r_19[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_17 = result_reg_r_19[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_18 = result_reg_r_19[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_19 = result_reg_r_19[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_20 = result_reg_r_19[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_21 = result_reg_r_19[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_22 = result_reg_r_19[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_23 = result_reg_r_19[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_24 = result_reg_r_19[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_25 = result_reg_r_19[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_26 = result_reg_r_19[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_27 = result_reg_r_19[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_28 = result_reg_r_19[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_29 = result_reg_r_19[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_30 = result_reg_r_19[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_31 = result_reg_r_19[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_32 = result_reg_r_19[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_33 = result_reg_r_19[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_34 = result_reg_r_19[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_35 = result_reg_r_19[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_36 = result_reg_r_19[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_37 = result_reg_r_19[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_38 = result_reg_r_19[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_39 = result_reg_r_19[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_40 = result_reg_r_19[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_41 = result_reg_r_19[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_42 = result_reg_r_19[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_43 = result_reg_r_19[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_44 = result_reg_r_19[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_45 = result_reg_r_19[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_46 = result_reg_r_19[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_39_47 = result_reg_r_19[47]; // @[BinaryDesigns2.scala 192:62]
  wire [5:0] result_reg_w_20_hi_hi_lo = {wire_res_39_41,wire_res_39_40,wire_res_39_39,wire_res_39_38,wire_res_39_37,
    wire_res_39_36}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_20_hi_lo_lo = {wire_res_39_29,wire_res_39_28,wire_res_39_27,wire_res_39_26,wire_res_39_25,
    wire_res_39_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_20_hi_lo = {wire_res_39_35,wire_res_39_34,wire_res_39_33,wire_res_39_32,wire_res_39_31,
    wire_res_39_30,result_reg_w_20_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_20_lo_hi_lo = {wire_res_39_17,wire_res_39_16,wire_res_39_15,wire_res_39_14,wire_res_39_13,
    wire_res_39_12}; // @[BinaryDesigns2.scala 231:46]
  wire [54:0] _T_2384 = {b_aux_reg_r_19, 7'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [54:0] _GEN_595 = {{7'd0}, a_aux_reg_r_19}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_39_7 = _GEN_595 >= _T_2384; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_20_lo_lo_lo = {wire_res_39_5,wire_res_39_4,wire_res_39_3,wire_res_39_2,wire_res_39_1,
    wire_res_39_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_20_lo_lo = {wire_res_39_11,wire_res_39_10,wire_res_39_9,wire_res_39_8,wire_res_39_7,
    wire_res_39_6,result_reg_w_20_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_20_lo = {wire_res_39_23,wire_res_39_22,wire_res_39_21,wire_res_39_20,wire_res_39_19,
    wire_res_39_18,result_reg_w_20_lo_hi_lo,result_reg_w_20_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_20 = {wire_res_39_47,wire_res_39_46,wire_res_39_45,wire_res_39_44,wire_res_39_43,
    wire_res_39_42,result_reg_w_20_hi_hi_lo,result_reg_w_20_hi_lo,result_reg_w_20_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_40_0 = result_reg_w_20[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_1 = result_reg_w_20[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_2 = result_reg_w_20[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_3 = result_reg_w_20[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_4 = result_reg_w_20[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_5 = result_reg_w_20[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_7 = result_reg_w_20[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_8 = result_reg_w_20[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_9 = result_reg_w_20[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_10 = result_reg_w_20[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_11 = result_reg_w_20[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_12 = result_reg_w_20[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_13 = result_reg_w_20[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_14 = result_reg_w_20[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_15 = result_reg_w_20[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_16 = result_reg_w_20[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_17 = result_reg_w_20[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_18 = result_reg_w_20[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_19 = result_reg_w_20[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_20 = result_reg_w_20[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_21 = result_reg_w_20[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_22 = result_reg_w_20[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_23 = result_reg_w_20[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_24 = result_reg_w_20[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_25 = result_reg_w_20[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_26 = result_reg_w_20[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_27 = result_reg_w_20[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_28 = result_reg_w_20[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_29 = result_reg_w_20[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_30 = result_reg_w_20[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_31 = result_reg_w_20[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_32 = result_reg_w_20[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_33 = result_reg_w_20[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_34 = result_reg_w_20[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_35 = result_reg_w_20[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_36 = result_reg_w_20[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_37 = result_reg_w_20[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_38 = result_reg_w_20[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_39 = result_reg_w_20[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_40 = result_reg_w_20[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_41 = result_reg_w_20[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_42 = result_reg_w_20[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_43 = result_reg_w_20[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_44 = result_reg_w_20[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_45 = result_reg_w_20[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_46 = result_reg_w_20[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_40_47 = result_reg_w_20[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_0 = result_reg_r_20[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_1 = result_reg_r_20[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_2 = result_reg_r_20[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_3 = result_reg_r_20[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_4 = result_reg_r_20[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_6 = result_reg_r_20[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_7 = result_reg_r_20[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_8 = result_reg_r_20[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_9 = result_reg_r_20[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_10 = result_reg_r_20[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_11 = result_reg_r_20[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_12 = result_reg_r_20[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_13 = result_reg_r_20[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_14 = result_reg_r_20[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_15 = result_reg_r_20[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_16 = result_reg_r_20[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_17 = result_reg_r_20[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_18 = result_reg_r_20[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_19 = result_reg_r_20[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_20 = result_reg_r_20[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_21 = result_reg_r_20[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_22 = result_reg_r_20[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_23 = result_reg_r_20[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_24 = result_reg_r_20[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_25 = result_reg_r_20[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_26 = result_reg_r_20[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_27 = result_reg_r_20[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_28 = result_reg_r_20[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_29 = result_reg_r_20[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_30 = result_reg_r_20[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_31 = result_reg_r_20[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_32 = result_reg_r_20[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_33 = result_reg_r_20[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_34 = result_reg_r_20[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_35 = result_reg_r_20[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_36 = result_reg_r_20[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_37 = result_reg_r_20[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_38 = result_reg_r_20[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_39 = result_reg_r_20[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_40 = result_reg_r_20[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_41 = result_reg_r_20[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_42 = result_reg_r_20[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_43 = result_reg_r_20[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_44 = result_reg_r_20[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_45 = result_reg_r_20[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_46 = result_reg_r_20[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_41_47 = result_reg_r_20[47]; // @[BinaryDesigns2.scala 192:62]
  wire [5:0] result_reg_w_21_hi_hi_lo = {wire_res_41_41,wire_res_41_40,wire_res_41_39,wire_res_41_38,wire_res_41_37,
    wire_res_41_36}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_21_hi_lo_lo = {wire_res_41_29,wire_res_41_28,wire_res_41_27,wire_res_41_26,wire_res_41_25,
    wire_res_41_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_21_hi_lo = {wire_res_41_35,wire_res_41_34,wire_res_41_33,wire_res_41_32,wire_res_41_31,
    wire_res_41_30,result_reg_w_21_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_21_lo_hi_lo = {wire_res_41_17,wire_res_41_16,wire_res_41_15,wire_res_41_14,wire_res_41_13,
    wire_res_41_12}; // @[BinaryDesigns2.scala 231:46]
  wire [52:0] _T_2388 = {b_aux_reg_r_20, 5'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [52:0] _GEN_596 = {{5'd0}, a_aux_reg_r_20}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_41_5 = _GEN_596 >= _T_2388; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_21_lo_lo_lo = {wire_res_41_5,wire_res_41_4,wire_res_41_3,wire_res_41_2,wire_res_41_1,
    wire_res_41_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_21_lo_lo = {wire_res_41_11,wire_res_41_10,wire_res_41_9,wire_res_41_8,wire_res_41_7,
    wire_res_41_6,result_reg_w_21_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_21_lo = {wire_res_41_23,wire_res_41_22,wire_res_41_21,wire_res_41_20,wire_res_41_19,
    wire_res_41_18,result_reg_w_21_lo_hi_lo,result_reg_w_21_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_21 = {wire_res_41_47,wire_res_41_46,wire_res_41_45,wire_res_41_44,wire_res_41_43,
    wire_res_41_42,result_reg_w_21_hi_hi_lo,result_reg_w_21_hi_lo,result_reg_w_21_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_42_0 = result_reg_w_21[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_1 = result_reg_w_21[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_2 = result_reg_w_21[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_3 = result_reg_w_21[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_5 = result_reg_w_21[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_6 = result_reg_w_21[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_7 = result_reg_w_21[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_8 = result_reg_w_21[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_9 = result_reg_w_21[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_10 = result_reg_w_21[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_11 = result_reg_w_21[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_12 = result_reg_w_21[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_13 = result_reg_w_21[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_14 = result_reg_w_21[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_15 = result_reg_w_21[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_16 = result_reg_w_21[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_17 = result_reg_w_21[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_18 = result_reg_w_21[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_19 = result_reg_w_21[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_20 = result_reg_w_21[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_21 = result_reg_w_21[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_22 = result_reg_w_21[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_23 = result_reg_w_21[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_24 = result_reg_w_21[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_25 = result_reg_w_21[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_26 = result_reg_w_21[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_27 = result_reg_w_21[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_28 = result_reg_w_21[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_29 = result_reg_w_21[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_30 = result_reg_w_21[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_31 = result_reg_w_21[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_32 = result_reg_w_21[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_33 = result_reg_w_21[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_34 = result_reg_w_21[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_35 = result_reg_w_21[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_36 = result_reg_w_21[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_37 = result_reg_w_21[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_38 = result_reg_w_21[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_39 = result_reg_w_21[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_40 = result_reg_w_21[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_41 = result_reg_w_21[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_42 = result_reg_w_21[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_43 = result_reg_w_21[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_44 = result_reg_w_21[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_45 = result_reg_w_21[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_46 = result_reg_w_21[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_42_47 = result_reg_w_21[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_0 = result_reg_r_21[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_1 = result_reg_r_21[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_2 = result_reg_r_21[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_4 = result_reg_r_21[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_5 = result_reg_r_21[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_6 = result_reg_r_21[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_7 = result_reg_r_21[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_8 = result_reg_r_21[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_9 = result_reg_r_21[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_10 = result_reg_r_21[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_11 = result_reg_r_21[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_12 = result_reg_r_21[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_13 = result_reg_r_21[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_14 = result_reg_r_21[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_15 = result_reg_r_21[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_16 = result_reg_r_21[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_17 = result_reg_r_21[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_18 = result_reg_r_21[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_19 = result_reg_r_21[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_20 = result_reg_r_21[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_21 = result_reg_r_21[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_22 = result_reg_r_21[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_23 = result_reg_r_21[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_24 = result_reg_r_21[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_25 = result_reg_r_21[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_26 = result_reg_r_21[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_27 = result_reg_r_21[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_28 = result_reg_r_21[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_29 = result_reg_r_21[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_30 = result_reg_r_21[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_31 = result_reg_r_21[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_32 = result_reg_r_21[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_33 = result_reg_r_21[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_34 = result_reg_r_21[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_35 = result_reg_r_21[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_36 = result_reg_r_21[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_37 = result_reg_r_21[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_38 = result_reg_r_21[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_39 = result_reg_r_21[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_40 = result_reg_r_21[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_41 = result_reg_r_21[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_42 = result_reg_r_21[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_43 = result_reg_r_21[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_44 = result_reg_r_21[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_45 = result_reg_r_21[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_46 = result_reg_r_21[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_43_47 = result_reg_r_21[47]; // @[BinaryDesigns2.scala 192:62]
  wire [5:0] result_reg_w_22_hi_hi_lo = {wire_res_43_41,wire_res_43_40,wire_res_43_39,wire_res_43_38,wire_res_43_37,
    wire_res_43_36}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_22_hi_lo_lo = {wire_res_43_29,wire_res_43_28,wire_res_43_27,wire_res_43_26,wire_res_43_25,
    wire_res_43_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_22_hi_lo = {wire_res_43_35,wire_res_43_34,wire_res_43_33,wire_res_43_32,wire_res_43_31,
    wire_res_43_30,result_reg_w_22_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_22_lo_hi_lo = {wire_res_43_17,wire_res_43_16,wire_res_43_15,wire_res_43_14,wire_res_43_13,
    wire_res_43_12}; // @[BinaryDesigns2.scala 231:46]
  wire [50:0] _T_2392 = {b_aux_reg_r_21, 3'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [50:0] _GEN_597 = {{3'd0}, a_aux_reg_r_21}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_43_3 = _GEN_597 >= _T_2392; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_22_lo_lo_lo = {wire_res_43_5,wire_res_43_4,wire_res_43_3,wire_res_43_2,wire_res_43_1,
    wire_res_43_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_22_lo_lo = {wire_res_43_11,wire_res_43_10,wire_res_43_9,wire_res_43_8,wire_res_43_7,
    wire_res_43_6,result_reg_w_22_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_22_lo = {wire_res_43_23,wire_res_43_22,wire_res_43_21,wire_res_43_20,wire_res_43_19,
    wire_res_43_18,result_reg_w_22_lo_hi_lo,result_reg_w_22_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_22 = {wire_res_43_47,wire_res_43_46,wire_res_43_45,wire_res_43_44,wire_res_43_43,
    wire_res_43_42,result_reg_w_22_hi_hi_lo,result_reg_w_22_hi_lo,result_reg_w_22_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_44_0 = result_reg_w_22[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_1 = result_reg_w_22[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_3 = result_reg_w_22[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_4 = result_reg_w_22[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_5 = result_reg_w_22[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_6 = result_reg_w_22[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_7 = result_reg_w_22[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_8 = result_reg_w_22[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_9 = result_reg_w_22[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_10 = result_reg_w_22[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_11 = result_reg_w_22[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_12 = result_reg_w_22[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_13 = result_reg_w_22[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_14 = result_reg_w_22[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_15 = result_reg_w_22[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_16 = result_reg_w_22[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_17 = result_reg_w_22[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_18 = result_reg_w_22[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_19 = result_reg_w_22[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_20 = result_reg_w_22[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_21 = result_reg_w_22[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_22 = result_reg_w_22[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_23 = result_reg_w_22[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_24 = result_reg_w_22[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_25 = result_reg_w_22[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_26 = result_reg_w_22[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_27 = result_reg_w_22[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_28 = result_reg_w_22[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_29 = result_reg_w_22[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_30 = result_reg_w_22[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_31 = result_reg_w_22[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_32 = result_reg_w_22[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_33 = result_reg_w_22[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_34 = result_reg_w_22[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_35 = result_reg_w_22[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_36 = result_reg_w_22[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_37 = result_reg_w_22[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_38 = result_reg_w_22[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_39 = result_reg_w_22[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_40 = result_reg_w_22[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_41 = result_reg_w_22[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_42 = result_reg_w_22[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_43 = result_reg_w_22[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_44 = result_reg_w_22[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_45 = result_reg_w_22[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_46 = result_reg_w_22[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_44_47 = result_reg_w_22[47]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_0 = result_reg_r_22[0]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_2 = result_reg_r_22[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_3 = result_reg_r_22[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_4 = result_reg_r_22[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_5 = result_reg_r_22[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_6 = result_reg_r_22[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_7 = result_reg_r_22[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_8 = result_reg_r_22[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_9 = result_reg_r_22[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_10 = result_reg_r_22[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_11 = result_reg_r_22[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_12 = result_reg_r_22[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_13 = result_reg_r_22[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_14 = result_reg_r_22[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_15 = result_reg_r_22[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_16 = result_reg_r_22[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_17 = result_reg_r_22[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_18 = result_reg_r_22[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_19 = result_reg_r_22[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_20 = result_reg_r_22[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_21 = result_reg_r_22[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_22 = result_reg_r_22[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_23 = result_reg_r_22[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_24 = result_reg_r_22[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_25 = result_reg_r_22[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_26 = result_reg_r_22[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_27 = result_reg_r_22[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_28 = result_reg_r_22[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_29 = result_reg_r_22[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_30 = result_reg_r_22[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_31 = result_reg_r_22[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_32 = result_reg_r_22[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_33 = result_reg_r_22[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_34 = result_reg_r_22[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_35 = result_reg_r_22[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_36 = result_reg_r_22[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_37 = result_reg_r_22[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_38 = result_reg_r_22[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_39 = result_reg_r_22[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_40 = result_reg_r_22[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_41 = result_reg_r_22[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_42 = result_reg_r_22[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_43 = result_reg_r_22[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_44 = result_reg_r_22[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_45 = result_reg_r_22[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_46 = result_reg_r_22[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_45_47 = result_reg_r_22[47]; // @[BinaryDesigns2.scala 192:62]
  wire [5:0] result_reg_w_23_hi_hi_lo = {wire_res_45_41,wire_res_45_40,wire_res_45_39,wire_res_45_38,wire_res_45_37,
    wire_res_45_36}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_23_hi_lo_lo = {wire_res_45_29,wire_res_45_28,wire_res_45_27,wire_res_45_26,wire_res_45_25,
    wire_res_45_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_23_hi_lo = {wire_res_45_35,wire_res_45_34,wire_res_45_33,wire_res_45_32,wire_res_45_31,
    wire_res_45_30,result_reg_w_23_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_w_23_lo_hi_lo = {wire_res_45_17,wire_res_45_16,wire_res_45_15,wire_res_45_14,wire_res_45_13,
    wire_res_45_12}; // @[BinaryDesigns2.scala 231:46]
  wire [48:0] _T_2396 = {b_aux_reg_r_22, 1'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [48:0] _GEN_598 = {{1'd0}, a_aux_reg_r_22}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_45_1 = _GEN_598 >= _T_2396; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_w_23_lo_lo_lo = {wire_res_45_5,wire_res_45_4,wire_res_45_3,wire_res_45_2,wire_res_45_1,
    wire_res_45_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_w_23_lo_lo = {wire_res_45_11,wire_res_45_10,wire_res_45_9,wire_res_45_8,wire_res_45_7,
    wire_res_45_6,result_reg_w_23_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_w_23_lo = {wire_res_45_23,wire_res_45_22,wire_res_45_21,wire_res_45_20,wire_res_45_19,
    wire_res_45_18,result_reg_w_23_lo_hi_lo,result_reg_w_23_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] result_reg_w_23 = {wire_res_45_47,wire_res_45_46,wire_res_45_45,wire_res_45_44,wire_res_45_43,
    wire_res_45_42,result_reg_w_23_hi_hi_lo,result_reg_w_23_hi_lo,result_reg_w_23_lo}; // @[BinaryDesigns2.scala 231:46]
  wire  wire_res_46_1 = result_reg_w_23[1]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_2 = result_reg_w_23[2]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_3 = result_reg_w_23[3]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_4 = result_reg_w_23[4]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_5 = result_reg_w_23[5]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_6 = result_reg_w_23[6]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_7 = result_reg_w_23[7]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_8 = result_reg_w_23[8]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_9 = result_reg_w_23[9]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_10 = result_reg_w_23[10]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_11 = result_reg_w_23[11]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_12 = result_reg_w_23[12]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_13 = result_reg_w_23[13]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_14 = result_reg_w_23[14]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_15 = result_reg_w_23[15]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_16 = result_reg_w_23[16]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_17 = result_reg_w_23[17]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_18 = result_reg_w_23[18]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_19 = result_reg_w_23[19]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_20 = result_reg_w_23[20]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_21 = result_reg_w_23[21]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_22 = result_reg_w_23[22]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_23 = result_reg_w_23[23]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_24 = result_reg_w_23[24]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_25 = result_reg_w_23[25]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_26 = result_reg_w_23[26]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_27 = result_reg_w_23[27]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_28 = result_reg_w_23[28]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_29 = result_reg_w_23[29]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_30 = result_reg_w_23[30]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_31 = result_reg_w_23[31]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_32 = result_reg_w_23[32]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_33 = result_reg_w_23[33]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_34 = result_reg_w_23[34]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_35 = result_reg_w_23[35]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_36 = result_reg_w_23[36]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_37 = result_reg_w_23[37]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_38 = result_reg_w_23[38]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_39 = result_reg_w_23[39]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_40 = result_reg_w_23[40]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_41 = result_reg_w_23[41]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_42 = result_reg_w_23[42]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_43 = result_reg_w_23[43]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_44 = result_reg_w_23[44]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_45 = result_reg_w_23[45]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_46 = result_reg_w_23[46]; // @[BinaryDesigns2.scala 192:62]
  wire  wire_res_46_47 = result_reg_w_23[47]; // @[BinaryDesigns2.scala 192:62]
  wire [94:0] _GEN_599 = {{47'd0}, io_in_a}; // @[BinaryDesigns2.scala 211:39]
  wire [47:0] a_aux_reg_w_0 = _GEN_599[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [93:0] _GEN_600 = {{46'd0}, a_aux_reg_w_0}; // @[BinaryDesigns2.scala 225:48]
  wire [92:0] _a_aux_reg_w_1_T_2 = _GEN_576 - _T_2308; // @[BinaryDesigns2.scala 225:48]
  wire [92:0] _GEN_4 = wire_res_1_45 ? _a_aux_reg_w_1_T_2 : {{45'd0}, a_aux_reg_r_0}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [91:0] _T_2310 = {b_aux_reg_r_0, 44'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_1 = _GEN_4[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [91:0] _GEN_602 = {{44'd0}, a_aux_reg_w_1}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_2_44 = _GEN_602 >= _T_2310; // @[BinaryDesigns2.scala 224:35]
  wire [91:0] _a_aux_reg_r_1_T_2 = _GEN_602 - _T_2310; // @[BinaryDesigns2.scala 225:48]
  wire [91:0] _GEN_6 = wire_res_2_44 ? _a_aux_reg_r_1_T_2 : {{44'd0}, a_aux_reg_w_1}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_1_lo_lo_lo = {wire_res_2_5,wire_res_2_4,wire_res_2_3,wire_res_2_2,wire_res_2_1,wire_res_2_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_1_lo_lo = {wire_res_2_11,wire_res_2_10,wire_res_2_9,wire_res_2_8,wire_res_2_7,wire_res_2_6,
    result_reg_r_1_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_1_lo_hi_lo = {wire_res_2_17,wire_res_2_16,wire_res_2_15,wire_res_2_14,wire_res_2_13,
    wire_res_2_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_1_lo = {wire_res_2_23,wire_res_2_22,wire_res_2_21,wire_res_2_20,wire_res_2_19,wire_res_2_18,
    result_reg_r_1_lo_hi_lo,result_reg_r_1_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_1_hi_lo_lo = {wire_res_2_29,wire_res_2_28,wire_res_2_27,wire_res_2_26,wire_res_2_25,
    wire_res_2_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_1_hi_lo = {wire_res_2_35,wire_res_2_34,wire_res_2_33,wire_res_2_32,wire_res_2_31,
    wire_res_2_30,result_reg_r_1_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_1_hi_hi_lo = {wire_res_2_41,wire_res_2_40,wire_res_2_39,wire_res_2_38,wire_res_2_37,
    wire_res_2_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_1_T = {wire_res_2_47,wire_res_2_46,wire_res_2_45,wire_res_2_44,wire_res_2_43,wire_res_2_42,
    result_reg_r_1_hi_hi_lo,result_reg_r_1_hi_lo,result_reg_r_1_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [90:0] _a_aux_reg_w_2_T_2 = _GEN_577 - _T_2312; // @[BinaryDesigns2.scala 225:48]
  wire [90:0] _GEN_8 = wire_res_3_43 ? _a_aux_reg_w_2_T_2 : {{43'd0}, a_aux_reg_r_1}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [89:0] _T_2314 = {b_aux_reg_r_1, 42'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_2 = _GEN_8[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [89:0] _GEN_605 = {{42'd0}, a_aux_reg_w_2}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_4_42 = _GEN_605 >= _T_2314; // @[BinaryDesigns2.scala 224:35]
  wire [89:0] _a_aux_reg_r_2_T_2 = _GEN_605 - _T_2314; // @[BinaryDesigns2.scala 225:48]
  wire [89:0] _GEN_10 = wire_res_4_42 ? _a_aux_reg_r_2_T_2 : {{42'd0}, a_aux_reg_w_2}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_2_lo_lo_lo = {wire_res_4_5,wire_res_4_4,wire_res_4_3,wire_res_4_2,wire_res_4_1,wire_res_4_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_2_lo_lo = {wire_res_4_11,wire_res_4_10,wire_res_4_9,wire_res_4_8,wire_res_4_7,wire_res_4_6,
    result_reg_r_2_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_2_lo_hi_lo = {wire_res_4_17,wire_res_4_16,wire_res_4_15,wire_res_4_14,wire_res_4_13,
    wire_res_4_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_2_lo = {wire_res_4_23,wire_res_4_22,wire_res_4_21,wire_res_4_20,wire_res_4_19,wire_res_4_18,
    result_reg_r_2_lo_hi_lo,result_reg_r_2_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_2_hi_lo_lo = {wire_res_4_29,wire_res_4_28,wire_res_4_27,wire_res_4_26,wire_res_4_25,
    wire_res_4_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_2_hi_lo = {wire_res_4_35,wire_res_4_34,wire_res_4_33,wire_res_4_32,wire_res_4_31,
    wire_res_4_30,result_reg_r_2_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_2_hi_hi_lo = {wire_res_4_41,wire_res_4_40,wire_res_4_39,wire_res_4_38,wire_res_4_37,
    wire_res_4_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_2_T = {wire_res_4_47,wire_res_4_46,wire_res_4_45,wire_res_4_44,wire_res_4_43,wire_res_4_42,
    result_reg_r_2_hi_hi_lo,result_reg_r_2_hi_lo,result_reg_r_2_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [88:0] _a_aux_reg_w_3_T_2 = _GEN_578 - _T_2316; // @[BinaryDesigns2.scala 225:48]
  wire [88:0] _GEN_12 = wire_res_5_41 ? _a_aux_reg_w_3_T_2 : {{41'd0}, a_aux_reg_r_2}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [87:0] _T_2318 = {b_aux_reg_r_2, 40'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_3 = _GEN_12[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [87:0] _GEN_608 = {{40'd0}, a_aux_reg_w_3}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_6_40 = _GEN_608 >= _T_2318; // @[BinaryDesigns2.scala 224:35]
  wire [87:0] _a_aux_reg_r_3_T_2 = _GEN_608 - _T_2318; // @[BinaryDesigns2.scala 225:48]
  wire [87:0] _GEN_14 = wire_res_6_40 ? _a_aux_reg_r_3_T_2 : {{40'd0}, a_aux_reg_w_3}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_3_lo_lo_lo = {wire_res_6_5,wire_res_6_4,wire_res_6_3,wire_res_6_2,wire_res_6_1,wire_res_6_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_3_lo_lo = {wire_res_6_11,wire_res_6_10,wire_res_6_9,wire_res_6_8,wire_res_6_7,wire_res_6_6,
    result_reg_r_3_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_3_lo_hi_lo = {wire_res_6_17,wire_res_6_16,wire_res_6_15,wire_res_6_14,wire_res_6_13,
    wire_res_6_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_3_lo = {wire_res_6_23,wire_res_6_22,wire_res_6_21,wire_res_6_20,wire_res_6_19,wire_res_6_18,
    result_reg_r_3_lo_hi_lo,result_reg_r_3_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_3_hi_lo_lo = {wire_res_6_29,wire_res_6_28,wire_res_6_27,wire_res_6_26,wire_res_6_25,
    wire_res_6_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_3_hi_lo = {wire_res_6_35,wire_res_6_34,wire_res_6_33,wire_res_6_32,wire_res_6_31,
    wire_res_6_30,result_reg_r_3_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_3_hi_hi_lo = {wire_res_6_41,wire_res_6_40,wire_res_6_39,wire_res_6_38,wire_res_6_37,
    wire_res_6_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_3_T = {wire_res_6_47,wire_res_6_46,wire_res_6_45,wire_res_6_44,wire_res_6_43,wire_res_6_42,
    result_reg_r_3_hi_hi_lo,result_reg_r_3_hi_lo,result_reg_r_3_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [86:0] _a_aux_reg_w_4_T_2 = _GEN_579 - _T_2320; // @[BinaryDesigns2.scala 225:48]
  wire [86:0] _GEN_16 = wire_res_7_39 ? _a_aux_reg_w_4_T_2 : {{39'd0}, a_aux_reg_r_3}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [85:0] _T_2322 = {b_aux_reg_r_3, 38'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_4 = _GEN_16[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [85:0] _GEN_611 = {{38'd0}, a_aux_reg_w_4}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_8_38 = _GEN_611 >= _T_2322; // @[BinaryDesigns2.scala 224:35]
  wire [85:0] _a_aux_reg_r_4_T_2 = _GEN_611 - _T_2322; // @[BinaryDesigns2.scala 225:48]
  wire [85:0] _GEN_18 = wire_res_8_38 ? _a_aux_reg_r_4_T_2 : {{38'd0}, a_aux_reg_w_4}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_4_lo_lo_lo = {wire_res_8_5,wire_res_8_4,wire_res_8_3,wire_res_8_2,wire_res_8_1,wire_res_8_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_4_lo_lo = {wire_res_8_11,wire_res_8_10,wire_res_8_9,wire_res_8_8,wire_res_8_7,wire_res_8_6,
    result_reg_r_4_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_4_lo_hi_lo = {wire_res_8_17,wire_res_8_16,wire_res_8_15,wire_res_8_14,wire_res_8_13,
    wire_res_8_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_4_lo = {wire_res_8_23,wire_res_8_22,wire_res_8_21,wire_res_8_20,wire_res_8_19,wire_res_8_18,
    result_reg_r_4_lo_hi_lo,result_reg_r_4_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_4_hi_lo_lo = {wire_res_8_29,wire_res_8_28,wire_res_8_27,wire_res_8_26,wire_res_8_25,
    wire_res_8_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_4_hi_lo = {wire_res_8_35,wire_res_8_34,wire_res_8_33,wire_res_8_32,wire_res_8_31,
    wire_res_8_30,result_reg_r_4_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_4_hi_hi_lo = {wire_res_8_41,wire_res_8_40,wire_res_8_39,wire_res_8_38,wire_res_8_37,
    wire_res_8_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_4_T = {wire_res_8_47,wire_res_8_46,wire_res_8_45,wire_res_8_44,wire_res_8_43,wire_res_8_42,
    result_reg_r_4_hi_hi_lo,result_reg_r_4_hi_lo,result_reg_r_4_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [84:0] _a_aux_reg_w_5_T_2 = _GEN_580 - _T_2324; // @[BinaryDesigns2.scala 225:48]
  wire [84:0] _GEN_20 = wire_res_9_37 ? _a_aux_reg_w_5_T_2 : {{37'd0}, a_aux_reg_r_4}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [83:0] _T_2326 = {b_aux_reg_r_4, 36'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_5 = _GEN_20[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [83:0] _GEN_614 = {{36'd0}, a_aux_reg_w_5}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_10_36 = _GEN_614 >= _T_2326; // @[BinaryDesigns2.scala 224:35]
  wire [83:0] _a_aux_reg_r_5_T_2 = _GEN_614 - _T_2326; // @[BinaryDesigns2.scala 225:48]
  wire [83:0] _GEN_22 = wire_res_10_36 ? _a_aux_reg_r_5_T_2 : {{36'd0}, a_aux_reg_w_5}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_5_lo_lo_lo = {wire_res_10_5,wire_res_10_4,wire_res_10_3,wire_res_10_2,wire_res_10_1,
    wire_res_10_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_5_lo_lo = {wire_res_10_11,wire_res_10_10,wire_res_10_9,wire_res_10_8,wire_res_10_7,
    wire_res_10_6,result_reg_r_5_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_5_lo_hi_lo = {wire_res_10_17,wire_res_10_16,wire_res_10_15,wire_res_10_14,wire_res_10_13,
    wire_res_10_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_5_lo = {wire_res_10_23,wire_res_10_22,wire_res_10_21,wire_res_10_20,wire_res_10_19,
    wire_res_10_18,result_reg_r_5_lo_hi_lo,result_reg_r_5_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_5_hi_lo_lo = {wire_res_10_29,wire_res_10_28,wire_res_10_27,wire_res_10_26,wire_res_10_25,
    wire_res_10_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_5_hi_lo = {wire_res_10_35,wire_res_10_34,wire_res_10_33,wire_res_10_32,wire_res_10_31,
    wire_res_10_30,result_reg_r_5_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_5_hi_hi_lo = {wire_res_10_41,wire_res_10_40,wire_res_10_39,wire_res_10_38,wire_res_10_37,
    wire_res_10_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_5_T = {wire_res_10_47,wire_res_10_46,wire_res_10_45,wire_res_10_44,wire_res_10_43,
    wire_res_10_42,result_reg_r_5_hi_hi_lo,result_reg_r_5_hi_lo,result_reg_r_5_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [82:0] _a_aux_reg_w_6_T_2 = _GEN_581 - _T_2328; // @[BinaryDesigns2.scala 225:48]
  wire [82:0] _GEN_24 = wire_res_11_35 ? _a_aux_reg_w_6_T_2 : {{35'd0}, a_aux_reg_r_5}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [81:0] _T_2330 = {b_aux_reg_r_5, 34'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_6 = _GEN_24[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [81:0] _GEN_617 = {{34'd0}, a_aux_reg_w_6}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_12_34 = _GEN_617 >= _T_2330; // @[BinaryDesigns2.scala 224:35]
  wire [81:0] _a_aux_reg_r_6_T_2 = _GEN_617 - _T_2330; // @[BinaryDesigns2.scala 225:48]
  wire [81:0] _GEN_26 = wire_res_12_34 ? _a_aux_reg_r_6_T_2 : {{34'd0}, a_aux_reg_w_6}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_6_lo_lo_lo = {wire_res_12_5,wire_res_12_4,wire_res_12_3,wire_res_12_2,wire_res_12_1,
    wire_res_12_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_6_lo_lo = {wire_res_12_11,wire_res_12_10,wire_res_12_9,wire_res_12_8,wire_res_12_7,
    wire_res_12_6,result_reg_r_6_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_6_lo_hi_lo = {wire_res_12_17,wire_res_12_16,wire_res_12_15,wire_res_12_14,wire_res_12_13,
    wire_res_12_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_6_lo = {wire_res_12_23,wire_res_12_22,wire_res_12_21,wire_res_12_20,wire_res_12_19,
    wire_res_12_18,result_reg_r_6_lo_hi_lo,result_reg_r_6_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_6_hi_lo_lo = {wire_res_12_29,wire_res_12_28,wire_res_12_27,wire_res_12_26,wire_res_12_25,
    wire_res_12_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_6_hi_lo = {wire_res_12_35,wire_res_12_34,wire_res_12_33,wire_res_12_32,wire_res_12_31,
    wire_res_12_30,result_reg_r_6_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_6_hi_hi_lo = {wire_res_12_41,wire_res_12_40,wire_res_12_39,wire_res_12_38,wire_res_12_37,
    wire_res_12_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_6_T = {wire_res_12_47,wire_res_12_46,wire_res_12_45,wire_res_12_44,wire_res_12_43,
    wire_res_12_42,result_reg_r_6_hi_hi_lo,result_reg_r_6_hi_lo,result_reg_r_6_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [80:0] _a_aux_reg_w_7_T_2 = _GEN_582 - _T_2332; // @[BinaryDesigns2.scala 225:48]
  wire [80:0] _GEN_28 = wire_res_13_33 ? _a_aux_reg_w_7_T_2 : {{33'd0}, a_aux_reg_r_6}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [79:0] _T_2334 = {b_aux_reg_r_6, 32'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_7 = _GEN_28[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [79:0] _GEN_620 = {{32'd0}, a_aux_reg_w_7}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_14_32 = _GEN_620 >= _T_2334; // @[BinaryDesigns2.scala 224:35]
  wire [79:0] _a_aux_reg_r_7_T_2 = _GEN_620 - _T_2334; // @[BinaryDesigns2.scala 225:48]
  wire [79:0] _GEN_30 = wire_res_14_32 ? _a_aux_reg_r_7_T_2 : {{32'd0}, a_aux_reg_w_7}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_7_lo_lo_lo = {wire_res_14_5,wire_res_14_4,wire_res_14_3,wire_res_14_2,wire_res_14_1,
    wire_res_14_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_7_lo_lo = {wire_res_14_11,wire_res_14_10,wire_res_14_9,wire_res_14_8,wire_res_14_7,
    wire_res_14_6,result_reg_r_7_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_7_lo_hi_lo = {wire_res_14_17,wire_res_14_16,wire_res_14_15,wire_res_14_14,wire_res_14_13,
    wire_res_14_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_7_lo = {wire_res_14_23,wire_res_14_22,wire_res_14_21,wire_res_14_20,wire_res_14_19,
    wire_res_14_18,result_reg_r_7_lo_hi_lo,result_reg_r_7_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_7_hi_lo_lo = {wire_res_14_29,wire_res_14_28,wire_res_14_27,wire_res_14_26,wire_res_14_25,
    wire_res_14_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_7_hi_lo = {wire_res_14_35,wire_res_14_34,wire_res_14_33,wire_res_14_32,wire_res_14_31,
    wire_res_14_30,result_reg_r_7_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_7_hi_hi_lo = {wire_res_14_41,wire_res_14_40,wire_res_14_39,wire_res_14_38,wire_res_14_37,
    wire_res_14_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_7_T = {wire_res_14_47,wire_res_14_46,wire_res_14_45,wire_res_14_44,wire_res_14_43,
    wire_res_14_42,result_reg_r_7_hi_hi_lo,result_reg_r_7_hi_lo,result_reg_r_7_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [78:0] _a_aux_reg_w_8_T_2 = _GEN_583 - _T_2336; // @[BinaryDesigns2.scala 225:48]
  wire [78:0] _GEN_32 = wire_res_15_31 ? _a_aux_reg_w_8_T_2 : {{31'd0}, a_aux_reg_r_7}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [77:0] _T_2338 = {b_aux_reg_r_7, 30'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_8 = _GEN_32[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [77:0] _GEN_623 = {{30'd0}, a_aux_reg_w_8}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_16_30 = _GEN_623 >= _T_2338; // @[BinaryDesigns2.scala 224:35]
  wire [77:0] _a_aux_reg_r_8_T_2 = _GEN_623 - _T_2338; // @[BinaryDesigns2.scala 225:48]
  wire [77:0] _GEN_34 = wire_res_16_30 ? _a_aux_reg_r_8_T_2 : {{30'd0}, a_aux_reg_w_8}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_8_lo_lo_lo = {wire_res_16_5,wire_res_16_4,wire_res_16_3,wire_res_16_2,wire_res_16_1,
    wire_res_16_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_8_lo_lo = {wire_res_16_11,wire_res_16_10,wire_res_16_9,wire_res_16_8,wire_res_16_7,
    wire_res_16_6,result_reg_r_8_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_8_lo_hi_lo = {wire_res_16_17,wire_res_16_16,wire_res_16_15,wire_res_16_14,wire_res_16_13,
    wire_res_16_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_8_lo = {wire_res_16_23,wire_res_16_22,wire_res_16_21,wire_res_16_20,wire_res_16_19,
    wire_res_16_18,result_reg_r_8_lo_hi_lo,result_reg_r_8_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_8_hi_lo_lo = {wire_res_16_29,wire_res_16_28,wire_res_16_27,wire_res_16_26,wire_res_16_25,
    wire_res_16_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_8_hi_lo = {wire_res_16_35,wire_res_16_34,wire_res_16_33,wire_res_16_32,wire_res_16_31,
    wire_res_16_30,result_reg_r_8_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_8_hi_hi_lo = {wire_res_16_41,wire_res_16_40,wire_res_16_39,wire_res_16_38,wire_res_16_37,
    wire_res_16_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_8_T = {wire_res_16_47,wire_res_16_46,wire_res_16_45,wire_res_16_44,wire_res_16_43,
    wire_res_16_42,result_reg_r_8_hi_hi_lo,result_reg_r_8_hi_lo,result_reg_r_8_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [76:0] _a_aux_reg_w_9_T_2 = _GEN_584 - _T_2340; // @[BinaryDesigns2.scala 225:48]
  wire [76:0] _GEN_36 = wire_res_17_29 ? _a_aux_reg_w_9_T_2 : {{29'd0}, a_aux_reg_r_8}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [75:0] _T_2342 = {b_aux_reg_r_8, 28'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_9 = _GEN_36[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [75:0] _GEN_626 = {{28'd0}, a_aux_reg_w_9}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_18_28 = _GEN_626 >= _T_2342; // @[BinaryDesigns2.scala 224:35]
  wire [75:0] _a_aux_reg_r_9_T_2 = _GEN_626 - _T_2342; // @[BinaryDesigns2.scala 225:48]
  wire [75:0] _GEN_38 = wire_res_18_28 ? _a_aux_reg_r_9_T_2 : {{28'd0}, a_aux_reg_w_9}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_9_lo_lo_lo = {wire_res_18_5,wire_res_18_4,wire_res_18_3,wire_res_18_2,wire_res_18_1,
    wire_res_18_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_9_lo_lo = {wire_res_18_11,wire_res_18_10,wire_res_18_9,wire_res_18_8,wire_res_18_7,
    wire_res_18_6,result_reg_r_9_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_9_lo_hi_lo = {wire_res_18_17,wire_res_18_16,wire_res_18_15,wire_res_18_14,wire_res_18_13,
    wire_res_18_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_9_lo = {wire_res_18_23,wire_res_18_22,wire_res_18_21,wire_res_18_20,wire_res_18_19,
    wire_res_18_18,result_reg_r_9_lo_hi_lo,result_reg_r_9_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_9_hi_lo_lo = {wire_res_18_29,wire_res_18_28,wire_res_18_27,wire_res_18_26,wire_res_18_25,
    wire_res_18_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_9_hi_lo = {wire_res_18_35,wire_res_18_34,wire_res_18_33,wire_res_18_32,wire_res_18_31,
    wire_res_18_30,result_reg_r_9_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_9_hi_hi_lo = {wire_res_18_41,wire_res_18_40,wire_res_18_39,wire_res_18_38,wire_res_18_37,
    wire_res_18_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_9_T = {wire_res_18_47,wire_res_18_46,wire_res_18_45,wire_res_18_44,wire_res_18_43,
    wire_res_18_42,result_reg_r_9_hi_hi_lo,result_reg_r_9_hi_lo,result_reg_r_9_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [74:0] _a_aux_reg_w_10_T_2 = _GEN_585 - _T_2344; // @[BinaryDesigns2.scala 225:48]
  wire [74:0] _GEN_40 = wire_res_19_27 ? _a_aux_reg_w_10_T_2 : {{27'd0}, a_aux_reg_r_9}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [73:0] _T_2346 = {b_aux_reg_r_9, 26'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_10 = _GEN_40[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [73:0] _GEN_629 = {{26'd0}, a_aux_reg_w_10}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_20_26 = _GEN_629 >= _T_2346; // @[BinaryDesigns2.scala 224:35]
  wire [73:0] _a_aux_reg_r_10_T_2 = _GEN_629 - _T_2346; // @[BinaryDesigns2.scala 225:48]
  wire [73:0] _GEN_42 = wire_res_20_26 ? _a_aux_reg_r_10_T_2 : {{26'd0}, a_aux_reg_w_10}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_10_lo_lo_lo = {wire_res_20_5,wire_res_20_4,wire_res_20_3,wire_res_20_2,wire_res_20_1,
    wire_res_20_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_10_lo_lo = {wire_res_20_11,wire_res_20_10,wire_res_20_9,wire_res_20_8,wire_res_20_7,
    wire_res_20_6,result_reg_r_10_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_10_lo_hi_lo = {wire_res_20_17,wire_res_20_16,wire_res_20_15,wire_res_20_14,wire_res_20_13,
    wire_res_20_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_10_lo = {wire_res_20_23,wire_res_20_22,wire_res_20_21,wire_res_20_20,wire_res_20_19,
    wire_res_20_18,result_reg_r_10_lo_hi_lo,result_reg_r_10_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_10_hi_lo_lo = {wire_res_20_29,wire_res_20_28,wire_res_20_27,wire_res_20_26,wire_res_20_25,
    wire_res_20_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_10_hi_lo = {wire_res_20_35,wire_res_20_34,wire_res_20_33,wire_res_20_32,wire_res_20_31,
    wire_res_20_30,result_reg_r_10_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_10_hi_hi_lo = {wire_res_20_41,wire_res_20_40,wire_res_20_39,wire_res_20_38,wire_res_20_37,
    wire_res_20_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_10_T = {wire_res_20_47,wire_res_20_46,wire_res_20_45,wire_res_20_44,wire_res_20_43,
    wire_res_20_42,result_reg_r_10_hi_hi_lo,result_reg_r_10_hi_lo,result_reg_r_10_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [72:0] _a_aux_reg_w_11_T_2 = _GEN_586 - _T_2348; // @[BinaryDesigns2.scala 225:48]
  wire [72:0] _GEN_44 = wire_res_21_25 ? _a_aux_reg_w_11_T_2 : {{25'd0}, a_aux_reg_r_10}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [71:0] _T_2350 = {b_aux_reg_r_10, 24'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_11 = _GEN_44[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [71:0] _GEN_632 = {{24'd0}, a_aux_reg_w_11}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_22_24 = _GEN_632 >= _T_2350; // @[BinaryDesigns2.scala 224:35]
  wire [71:0] _a_aux_reg_r_11_T_2 = _GEN_632 - _T_2350; // @[BinaryDesigns2.scala 225:48]
  wire [71:0] _GEN_46 = wire_res_22_24 ? _a_aux_reg_r_11_T_2 : {{24'd0}, a_aux_reg_w_11}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_11_lo_lo_lo = {wire_res_22_5,wire_res_22_4,wire_res_22_3,wire_res_22_2,wire_res_22_1,
    wire_res_22_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_11_lo_lo = {wire_res_22_11,wire_res_22_10,wire_res_22_9,wire_res_22_8,wire_res_22_7,
    wire_res_22_6,result_reg_r_11_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_11_lo_hi_lo = {wire_res_22_17,wire_res_22_16,wire_res_22_15,wire_res_22_14,wire_res_22_13,
    wire_res_22_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_11_lo = {wire_res_22_23,wire_res_22_22,wire_res_22_21,wire_res_22_20,wire_res_22_19,
    wire_res_22_18,result_reg_r_11_lo_hi_lo,result_reg_r_11_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_11_hi_lo_lo = {wire_res_22_29,wire_res_22_28,wire_res_22_27,wire_res_22_26,wire_res_22_25,
    wire_res_22_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_11_hi_lo = {wire_res_22_35,wire_res_22_34,wire_res_22_33,wire_res_22_32,wire_res_22_31,
    wire_res_22_30,result_reg_r_11_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_11_hi_hi_lo = {wire_res_22_41,wire_res_22_40,wire_res_22_39,wire_res_22_38,wire_res_22_37,
    wire_res_22_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_11_T = {wire_res_22_47,wire_res_22_46,wire_res_22_45,wire_res_22_44,wire_res_22_43,
    wire_res_22_42,result_reg_r_11_hi_hi_lo,result_reg_r_11_hi_lo,result_reg_r_11_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [70:0] _a_aux_reg_w_12_T_2 = _GEN_587 - _T_2352; // @[BinaryDesigns2.scala 225:48]
  wire [70:0] _GEN_48 = wire_res_23_23 ? _a_aux_reg_w_12_T_2 : {{23'd0}, a_aux_reg_r_11}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [69:0] _T_2354 = {b_aux_reg_r_11, 22'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_12 = _GEN_48[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [69:0] _GEN_635 = {{22'd0}, a_aux_reg_w_12}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_24_22 = _GEN_635 >= _T_2354; // @[BinaryDesigns2.scala 224:35]
  wire [69:0] _a_aux_reg_r_12_T_2 = _GEN_635 - _T_2354; // @[BinaryDesigns2.scala 225:48]
  wire [69:0] _GEN_50 = wire_res_24_22 ? _a_aux_reg_r_12_T_2 : {{22'd0}, a_aux_reg_w_12}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_12_lo_lo_lo = {wire_res_24_5,wire_res_24_4,wire_res_24_3,wire_res_24_2,wire_res_24_1,
    wire_res_24_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_12_lo_lo = {wire_res_24_11,wire_res_24_10,wire_res_24_9,wire_res_24_8,wire_res_24_7,
    wire_res_24_6,result_reg_r_12_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_12_lo_hi_lo = {wire_res_24_17,wire_res_24_16,wire_res_24_15,wire_res_24_14,wire_res_24_13,
    wire_res_24_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_12_lo = {wire_res_24_23,wire_res_24_22,wire_res_24_21,wire_res_24_20,wire_res_24_19,
    wire_res_24_18,result_reg_r_12_lo_hi_lo,result_reg_r_12_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_12_hi_lo_lo = {wire_res_24_29,wire_res_24_28,wire_res_24_27,wire_res_24_26,wire_res_24_25,
    wire_res_24_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_12_hi_lo = {wire_res_24_35,wire_res_24_34,wire_res_24_33,wire_res_24_32,wire_res_24_31,
    wire_res_24_30,result_reg_r_12_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_12_hi_hi_lo = {wire_res_24_41,wire_res_24_40,wire_res_24_39,wire_res_24_38,wire_res_24_37,
    wire_res_24_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_12_T = {wire_res_24_47,wire_res_24_46,wire_res_24_45,wire_res_24_44,wire_res_24_43,
    wire_res_24_42,result_reg_r_12_hi_hi_lo,result_reg_r_12_hi_lo,result_reg_r_12_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [68:0] _a_aux_reg_w_13_T_2 = _GEN_588 - _T_2356; // @[BinaryDesigns2.scala 225:48]
  wire [68:0] _GEN_52 = wire_res_25_21 ? _a_aux_reg_w_13_T_2 : {{21'd0}, a_aux_reg_r_12}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [67:0] _T_2358 = {b_aux_reg_r_12, 20'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_13 = _GEN_52[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [67:0] _GEN_638 = {{20'd0}, a_aux_reg_w_13}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_26_20 = _GEN_638 >= _T_2358; // @[BinaryDesigns2.scala 224:35]
  wire [67:0] _a_aux_reg_r_13_T_2 = _GEN_638 - _T_2358; // @[BinaryDesigns2.scala 225:48]
  wire [67:0] _GEN_54 = wire_res_26_20 ? _a_aux_reg_r_13_T_2 : {{20'd0}, a_aux_reg_w_13}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_13_lo_lo_lo = {wire_res_26_5,wire_res_26_4,wire_res_26_3,wire_res_26_2,wire_res_26_1,
    wire_res_26_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_13_lo_lo = {wire_res_26_11,wire_res_26_10,wire_res_26_9,wire_res_26_8,wire_res_26_7,
    wire_res_26_6,result_reg_r_13_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_13_lo_hi_lo = {wire_res_26_17,wire_res_26_16,wire_res_26_15,wire_res_26_14,wire_res_26_13,
    wire_res_26_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_13_lo = {wire_res_26_23,wire_res_26_22,wire_res_26_21,wire_res_26_20,wire_res_26_19,
    wire_res_26_18,result_reg_r_13_lo_hi_lo,result_reg_r_13_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_13_hi_lo_lo = {wire_res_26_29,wire_res_26_28,wire_res_26_27,wire_res_26_26,wire_res_26_25,
    wire_res_26_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_13_hi_lo = {wire_res_26_35,wire_res_26_34,wire_res_26_33,wire_res_26_32,wire_res_26_31,
    wire_res_26_30,result_reg_r_13_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_13_hi_hi_lo = {wire_res_26_41,wire_res_26_40,wire_res_26_39,wire_res_26_38,wire_res_26_37,
    wire_res_26_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_13_T = {wire_res_26_47,wire_res_26_46,wire_res_26_45,wire_res_26_44,wire_res_26_43,
    wire_res_26_42,result_reg_r_13_hi_hi_lo,result_reg_r_13_hi_lo,result_reg_r_13_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [66:0] _a_aux_reg_w_14_T_2 = _GEN_589 - _T_2360; // @[BinaryDesigns2.scala 225:48]
  wire [66:0] _GEN_56 = wire_res_27_19 ? _a_aux_reg_w_14_T_2 : {{19'd0}, a_aux_reg_r_13}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [65:0] _T_2362 = {b_aux_reg_r_13, 18'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_14 = _GEN_56[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [65:0] _GEN_641 = {{18'd0}, a_aux_reg_w_14}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_28_18 = _GEN_641 >= _T_2362; // @[BinaryDesigns2.scala 224:35]
  wire [65:0] _a_aux_reg_r_14_T_2 = _GEN_641 - _T_2362; // @[BinaryDesigns2.scala 225:48]
  wire [65:0] _GEN_58 = wire_res_28_18 ? _a_aux_reg_r_14_T_2 : {{18'd0}, a_aux_reg_w_14}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_14_lo_lo_lo = {wire_res_28_5,wire_res_28_4,wire_res_28_3,wire_res_28_2,wire_res_28_1,
    wire_res_28_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_14_lo_lo = {wire_res_28_11,wire_res_28_10,wire_res_28_9,wire_res_28_8,wire_res_28_7,
    wire_res_28_6,result_reg_r_14_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_14_lo_hi_lo = {wire_res_28_17,wire_res_28_16,wire_res_28_15,wire_res_28_14,wire_res_28_13,
    wire_res_28_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_14_lo = {wire_res_28_23,wire_res_28_22,wire_res_28_21,wire_res_28_20,wire_res_28_19,
    wire_res_28_18,result_reg_r_14_lo_hi_lo,result_reg_r_14_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_14_hi_lo_lo = {wire_res_28_29,wire_res_28_28,wire_res_28_27,wire_res_28_26,wire_res_28_25,
    wire_res_28_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_14_hi_lo = {wire_res_28_35,wire_res_28_34,wire_res_28_33,wire_res_28_32,wire_res_28_31,
    wire_res_28_30,result_reg_r_14_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_14_hi_hi_lo = {wire_res_28_41,wire_res_28_40,wire_res_28_39,wire_res_28_38,wire_res_28_37,
    wire_res_28_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_14_T = {wire_res_28_47,wire_res_28_46,wire_res_28_45,wire_res_28_44,wire_res_28_43,
    wire_res_28_42,result_reg_r_14_hi_hi_lo,result_reg_r_14_hi_lo,result_reg_r_14_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [64:0] _a_aux_reg_w_15_T_2 = _GEN_590 - _T_2364; // @[BinaryDesigns2.scala 225:48]
  wire [64:0] _GEN_60 = wire_res_29_17 ? _a_aux_reg_w_15_T_2 : {{17'd0}, a_aux_reg_r_14}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [63:0] _T_2366 = {b_aux_reg_r_14, 16'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_15 = _GEN_60[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [63:0] _GEN_644 = {{16'd0}, a_aux_reg_w_15}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_30_16 = _GEN_644 >= _T_2366; // @[BinaryDesigns2.scala 224:35]
  wire [63:0] _a_aux_reg_r_15_T_2 = _GEN_644 - _T_2366; // @[BinaryDesigns2.scala 225:48]
  wire [63:0] _GEN_62 = wire_res_30_16 ? _a_aux_reg_r_15_T_2 : {{16'd0}, a_aux_reg_w_15}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_15_lo_lo_lo = {wire_res_30_5,wire_res_30_4,wire_res_30_3,wire_res_30_2,wire_res_30_1,
    wire_res_30_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_15_lo_lo = {wire_res_30_11,wire_res_30_10,wire_res_30_9,wire_res_30_8,wire_res_30_7,
    wire_res_30_6,result_reg_r_15_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_15_lo_hi_lo = {wire_res_30_17,wire_res_30_16,wire_res_30_15,wire_res_30_14,wire_res_30_13,
    wire_res_30_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_15_lo = {wire_res_30_23,wire_res_30_22,wire_res_30_21,wire_res_30_20,wire_res_30_19,
    wire_res_30_18,result_reg_r_15_lo_hi_lo,result_reg_r_15_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_15_hi_lo_lo = {wire_res_30_29,wire_res_30_28,wire_res_30_27,wire_res_30_26,wire_res_30_25,
    wire_res_30_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_15_hi_lo = {wire_res_30_35,wire_res_30_34,wire_res_30_33,wire_res_30_32,wire_res_30_31,
    wire_res_30_30,result_reg_r_15_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_15_hi_hi_lo = {wire_res_30_41,wire_res_30_40,wire_res_30_39,wire_res_30_38,wire_res_30_37,
    wire_res_30_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_15_T = {wire_res_30_47,wire_res_30_46,wire_res_30_45,wire_res_30_44,wire_res_30_43,
    wire_res_30_42,result_reg_r_15_hi_hi_lo,result_reg_r_15_hi_lo,result_reg_r_15_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [62:0] _a_aux_reg_w_16_T_2 = _GEN_591 - _T_2368; // @[BinaryDesigns2.scala 225:48]
  wire [62:0] _GEN_64 = wire_res_31_15 ? _a_aux_reg_w_16_T_2 : {{15'd0}, a_aux_reg_r_15}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [61:0] _T_2370 = {b_aux_reg_r_15, 14'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_16 = _GEN_64[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [61:0] _GEN_647 = {{14'd0}, a_aux_reg_w_16}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_32_14 = _GEN_647 >= _T_2370; // @[BinaryDesigns2.scala 224:35]
  wire [61:0] _a_aux_reg_r_16_T_2 = _GEN_647 - _T_2370; // @[BinaryDesigns2.scala 225:48]
  wire [61:0] _GEN_66 = wire_res_32_14 ? _a_aux_reg_r_16_T_2 : {{14'd0}, a_aux_reg_w_16}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_16_lo_lo_lo = {wire_res_32_5,wire_res_32_4,wire_res_32_3,wire_res_32_2,wire_res_32_1,
    wire_res_32_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_16_lo_lo = {wire_res_32_11,wire_res_32_10,wire_res_32_9,wire_res_32_8,wire_res_32_7,
    wire_res_32_6,result_reg_r_16_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_16_lo_hi_lo = {wire_res_32_17,wire_res_32_16,wire_res_32_15,wire_res_32_14,wire_res_32_13,
    wire_res_32_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_16_lo = {wire_res_32_23,wire_res_32_22,wire_res_32_21,wire_res_32_20,wire_res_32_19,
    wire_res_32_18,result_reg_r_16_lo_hi_lo,result_reg_r_16_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_16_hi_lo_lo = {wire_res_32_29,wire_res_32_28,wire_res_32_27,wire_res_32_26,wire_res_32_25,
    wire_res_32_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_16_hi_lo = {wire_res_32_35,wire_res_32_34,wire_res_32_33,wire_res_32_32,wire_res_32_31,
    wire_res_32_30,result_reg_r_16_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_16_hi_hi_lo = {wire_res_32_41,wire_res_32_40,wire_res_32_39,wire_res_32_38,wire_res_32_37,
    wire_res_32_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_16_T = {wire_res_32_47,wire_res_32_46,wire_res_32_45,wire_res_32_44,wire_res_32_43,
    wire_res_32_42,result_reg_r_16_hi_hi_lo,result_reg_r_16_hi_lo,result_reg_r_16_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [60:0] _a_aux_reg_w_17_T_2 = _GEN_592 - _T_2372; // @[BinaryDesigns2.scala 225:48]
  wire [60:0] _GEN_68 = wire_res_33_13 ? _a_aux_reg_w_17_T_2 : {{13'd0}, a_aux_reg_r_16}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [59:0] _T_2374 = {b_aux_reg_r_16, 12'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_17 = _GEN_68[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [59:0] _GEN_650 = {{12'd0}, a_aux_reg_w_17}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_34_12 = _GEN_650 >= _T_2374; // @[BinaryDesigns2.scala 224:35]
  wire [59:0] _a_aux_reg_r_17_T_2 = _GEN_650 - _T_2374; // @[BinaryDesigns2.scala 225:48]
  wire [59:0] _GEN_70 = wire_res_34_12 ? _a_aux_reg_r_17_T_2 : {{12'd0}, a_aux_reg_w_17}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_17_lo_lo_lo = {wire_res_34_5,wire_res_34_4,wire_res_34_3,wire_res_34_2,wire_res_34_1,
    wire_res_34_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_17_lo_lo = {wire_res_34_11,wire_res_34_10,wire_res_34_9,wire_res_34_8,wire_res_34_7,
    wire_res_34_6,result_reg_r_17_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_17_lo_hi_lo = {wire_res_34_17,wire_res_34_16,wire_res_34_15,wire_res_34_14,wire_res_34_13,
    wire_res_34_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_17_lo = {wire_res_34_23,wire_res_34_22,wire_res_34_21,wire_res_34_20,wire_res_34_19,
    wire_res_34_18,result_reg_r_17_lo_hi_lo,result_reg_r_17_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_17_hi_lo_lo = {wire_res_34_29,wire_res_34_28,wire_res_34_27,wire_res_34_26,wire_res_34_25,
    wire_res_34_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_17_hi_lo = {wire_res_34_35,wire_res_34_34,wire_res_34_33,wire_res_34_32,wire_res_34_31,
    wire_res_34_30,result_reg_r_17_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_17_hi_hi_lo = {wire_res_34_41,wire_res_34_40,wire_res_34_39,wire_res_34_38,wire_res_34_37,
    wire_res_34_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_17_T = {wire_res_34_47,wire_res_34_46,wire_res_34_45,wire_res_34_44,wire_res_34_43,
    wire_res_34_42,result_reg_r_17_hi_hi_lo,result_reg_r_17_hi_lo,result_reg_r_17_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [58:0] _a_aux_reg_w_18_T_2 = _GEN_593 - _T_2376; // @[BinaryDesigns2.scala 225:48]
  wire [58:0] _GEN_72 = wire_res_35_11 ? _a_aux_reg_w_18_T_2 : {{11'd0}, a_aux_reg_r_17}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [57:0] _T_2378 = {b_aux_reg_r_17, 10'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_18 = _GEN_72[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [57:0] _GEN_653 = {{10'd0}, a_aux_reg_w_18}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_36_10 = _GEN_653 >= _T_2378; // @[BinaryDesigns2.scala 224:35]
  wire [57:0] _a_aux_reg_r_18_T_2 = _GEN_653 - _T_2378; // @[BinaryDesigns2.scala 225:48]
  wire [57:0] _GEN_74 = wire_res_36_10 ? _a_aux_reg_r_18_T_2 : {{10'd0}, a_aux_reg_w_18}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_18_lo_lo_lo = {wire_res_36_5,wire_res_36_4,wire_res_36_3,wire_res_36_2,wire_res_36_1,
    wire_res_36_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_18_lo_lo = {wire_res_36_11,wire_res_36_10,wire_res_36_9,wire_res_36_8,wire_res_36_7,
    wire_res_36_6,result_reg_r_18_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_18_lo_hi_lo = {wire_res_36_17,wire_res_36_16,wire_res_36_15,wire_res_36_14,wire_res_36_13,
    wire_res_36_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_18_lo = {wire_res_36_23,wire_res_36_22,wire_res_36_21,wire_res_36_20,wire_res_36_19,
    wire_res_36_18,result_reg_r_18_lo_hi_lo,result_reg_r_18_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_18_hi_lo_lo = {wire_res_36_29,wire_res_36_28,wire_res_36_27,wire_res_36_26,wire_res_36_25,
    wire_res_36_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_18_hi_lo = {wire_res_36_35,wire_res_36_34,wire_res_36_33,wire_res_36_32,wire_res_36_31,
    wire_res_36_30,result_reg_r_18_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_18_hi_hi_lo = {wire_res_36_41,wire_res_36_40,wire_res_36_39,wire_res_36_38,wire_res_36_37,
    wire_res_36_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_18_T = {wire_res_36_47,wire_res_36_46,wire_res_36_45,wire_res_36_44,wire_res_36_43,
    wire_res_36_42,result_reg_r_18_hi_hi_lo,result_reg_r_18_hi_lo,result_reg_r_18_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [56:0] _a_aux_reg_w_19_T_2 = _GEN_594 - _T_2380; // @[BinaryDesigns2.scala 225:48]
  wire [56:0] _GEN_76 = wire_res_37_9 ? _a_aux_reg_w_19_T_2 : {{9'd0}, a_aux_reg_r_18}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [55:0] _T_2382 = {b_aux_reg_r_18, 8'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_19 = _GEN_76[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [55:0] _GEN_656 = {{8'd0}, a_aux_reg_w_19}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_38_8 = _GEN_656 >= _T_2382; // @[BinaryDesigns2.scala 224:35]
  wire [55:0] _a_aux_reg_r_19_T_2 = _GEN_656 - _T_2382; // @[BinaryDesigns2.scala 225:48]
  wire [55:0] _GEN_78 = wire_res_38_8 ? _a_aux_reg_r_19_T_2 : {{8'd0}, a_aux_reg_w_19}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_19_lo_lo_lo = {wire_res_38_5,wire_res_38_4,wire_res_38_3,wire_res_38_2,wire_res_38_1,
    wire_res_38_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_19_lo_lo = {wire_res_38_11,wire_res_38_10,wire_res_38_9,wire_res_38_8,wire_res_38_7,
    wire_res_38_6,result_reg_r_19_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_19_lo_hi_lo = {wire_res_38_17,wire_res_38_16,wire_res_38_15,wire_res_38_14,wire_res_38_13,
    wire_res_38_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_19_lo = {wire_res_38_23,wire_res_38_22,wire_res_38_21,wire_res_38_20,wire_res_38_19,
    wire_res_38_18,result_reg_r_19_lo_hi_lo,result_reg_r_19_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_19_hi_lo_lo = {wire_res_38_29,wire_res_38_28,wire_res_38_27,wire_res_38_26,wire_res_38_25,
    wire_res_38_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_19_hi_lo = {wire_res_38_35,wire_res_38_34,wire_res_38_33,wire_res_38_32,wire_res_38_31,
    wire_res_38_30,result_reg_r_19_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_19_hi_hi_lo = {wire_res_38_41,wire_res_38_40,wire_res_38_39,wire_res_38_38,wire_res_38_37,
    wire_res_38_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_19_T = {wire_res_38_47,wire_res_38_46,wire_res_38_45,wire_res_38_44,wire_res_38_43,
    wire_res_38_42,result_reg_r_19_hi_hi_lo,result_reg_r_19_hi_lo,result_reg_r_19_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [54:0] _a_aux_reg_w_20_T_2 = _GEN_595 - _T_2384; // @[BinaryDesigns2.scala 225:48]
  wire [54:0] _GEN_80 = wire_res_39_7 ? _a_aux_reg_w_20_T_2 : {{7'd0}, a_aux_reg_r_19}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [53:0] _T_2386 = {b_aux_reg_r_19, 6'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_20 = _GEN_80[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [53:0] _GEN_659 = {{6'd0}, a_aux_reg_w_20}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_40_6 = _GEN_659 >= _T_2386; // @[BinaryDesigns2.scala 224:35]
  wire [53:0] _a_aux_reg_r_20_T_2 = _GEN_659 - _T_2386; // @[BinaryDesigns2.scala 225:48]
  wire [53:0] _GEN_82 = wire_res_40_6 ? _a_aux_reg_r_20_T_2 : {{6'd0}, a_aux_reg_w_20}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_20_lo_lo_lo = {wire_res_40_5,wire_res_40_4,wire_res_40_3,wire_res_40_2,wire_res_40_1,
    wire_res_40_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_20_lo_lo = {wire_res_40_11,wire_res_40_10,wire_res_40_9,wire_res_40_8,wire_res_40_7,
    wire_res_40_6,result_reg_r_20_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_20_lo_hi_lo = {wire_res_40_17,wire_res_40_16,wire_res_40_15,wire_res_40_14,wire_res_40_13,
    wire_res_40_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_20_lo = {wire_res_40_23,wire_res_40_22,wire_res_40_21,wire_res_40_20,wire_res_40_19,
    wire_res_40_18,result_reg_r_20_lo_hi_lo,result_reg_r_20_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_20_hi_lo_lo = {wire_res_40_29,wire_res_40_28,wire_res_40_27,wire_res_40_26,wire_res_40_25,
    wire_res_40_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_20_hi_lo = {wire_res_40_35,wire_res_40_34,wire_res_40_33,wire_res_40_32,wire_res_40_31,
    wire_res_40_30,result_reg_r_20_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_20_hi_hi_lo = {wire_res_40_41,wire_res_40_40,wire_res_40_39,wire_res_40_38,wire_res_40_37,
    wire_res_40_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_20_T = {wire_res_40_47,wire_res_40_46,wire_res_40_45,wire_res_40_44,wire_res_40_43,
    wire_res_40_42,result_reg_r_20_hi_hi_lo,result_reg_r_20_hi_lo,result_reg_r_20_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [52:0] _a_aux_reg_w_21_T_2 = _GEN_596 - _T_2388; // @[BinaryDesigns2.scala 225:48]
  wire [52:0] _GEN_84 = wire_res_41_5 ? _a_aux_reg_w_21_T_2 : {{5'd0}, a_aux_reg_r_20}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [51:0] _T_2390 = {b_aux_reg_r_20, 4'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_21 = _GEN_84[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [51:0] _GEN_662 = {{4'd0}, a_aux_reg_w_21}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_42_4 = _GEN_662 >= _T_2390; // @[BinaryDesigns2.scala 224:35]
  wire [51:0] _a_aux_reg_r_21_T_2 = _GEN_662 - _T_2390; // @[BinaryDesigns2.scala 225:48]
  wire [51:0] _GEN_86 = wire_res_42_4 ? _a_aux_reg_r_21_T_2 : {{4'd0}, a_aux_reg_w_21}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_21_lo_lo_lo = {wire_res_42_5,wire_res_42_4,wire_res_42_3,wire_res_42_2,wire_res_42_1,
    wire_res_42_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_21_lo_lo = {wire_res_42_11,wire_res_42_10,wire_res_42_9,wire_res_42_8,wire_res_42_7,
    wire_res_42_6,result_reg_r_21_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_21_lo_hi_lo = {wire_res_42_17,wire_res_42_16,wire_res_42_15,wire_res_42_14,wire_res_42_13,
    wire_res_42_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_21_lo = {wire_res_42_23,wire_res_42_22,wire_res_42_21,wire_res_42_20,wire_res_42_19,
    wire_res_42_18,result_reg_r_21_lo_hi_lo,result_reg_r_21_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_21_hi_lo_lo = {wire_res_42_29,wire_res_42_28,wire_res_42_27,wire_res_42_26,wire_res_42_25,
    wire_res_42_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_21_hi_lo = {wire_res_42_35,wire_res_42_34,wire_res_42_33,wire_res_42_32,wire_res_42_31,
    wire_res_42_30,result_reg_r_21_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_21_hi_hi_lo = {wire_res_42_41,wire_res_42_40,wire_res_42_39,wire_res_42_38,wire_res_42_37,
    wire_res_42_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_21_T = {wire_res_42_47,wire_res_42_46,wire_res_42_45,wire_res_42_44,wire_res_42_43,
    wire_res_42_42,result_reg_r_21_hi_hi_lo,result_reg_r_21_hi_lo,result_reg_r_21_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [50:0] _a_aux_reg_w_22_T_2 = _GEN_597 - _T_2392; // @[BinaryDesigns2.scala 225:48]
  wire [50:0] _GEN_88 = wire_res_43_3 ? _a_aux_reg_w_22_T_2 : {{3'd0}, a_aux_reg_r_21}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [49:0] _T_2394 = {b_aux_reg_r_21, 2'h0}; // @[BinaryDesigns2.scala 224:56]
  wire [47:0] a_aux_reg_w_22 = _GEN_88[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire [49:0] _GEN_665 = {{2'd0}, a_aux_reg_w_22}; // @[BinaryDesigns2.scala 224:35]
  wire  wire_res_44_2 = _GEN_665 >= _T_2394; // @[BinaryDesigns2.scala 224:35]
  wire [49:0] _a_aux_reg_r_22_T_2 = _GEN_665 - _T_2394; // @[BinaryDesigns2.scala 225:48]
  wire [49:0] _GEN_90 = wire_res_44_2 ? _a_aux_reg_r_22_T_2 : {{2'd0}, a_aux_reg_w_22}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [5:0] result_reg_r_22_lo_lo_lo = {wire_res_44_5,wire_res_44_4,wire_res_44_3,wire_res_44_2,wire_res_44_1,
    wire_res_44_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_22_lo_lo = {wire_res_44_11,wire_res_44_10,wire_res_44_9,wire_res_44_8,wire_res_44_7,
    wire_res_44_6,result_reg_r_22_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_22_lo_hi_lo = {wire_res_44_17,wire_res_44_16,wire_res_44_15,wire_res_44_14,wire_res_44_13,
    wire_res_44_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_22_lo = {wire_res_44_23,wire_res_44_22,wire_res_44_21,wire_res_44_20,wire_res_44_19,
    wire_res_44_18,result_reg_r_22_lo_hi_lo,result_reg_r_22_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_22_hi_lo_lo = {wire_res_44_29,wire_res_44_28,wire_res_44_27,wire_res_44_26,wire_res_44_25,
    wire_res_44_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_22_hi_lo = {wire_res_44_35,wire_res_44_34,wire_res_44_33,wire_res_44_32,wire_res_44_31,
    wire_res_44_30,result_reg_r_22_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_22_hi_hi_lo = {wire_res_44_41,wire_res_44_40,wire_res_44_39,wire_res_44_38,wire_res_44_37,
    wire_res_44_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_22_T = {wire_res_44_47,wire_res_44_46,wire_res_44_45,wire_res_44_44,wire_res_44_43,
    wire_res_44_42,result_reg_r_22_hi_hi_lo,result_reg_r_22_hi_lo,result_reg_r_22_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [48:0] _a_aux_reg_w_23_T_2 = _GEN_598 - _T_2396; // @[BinaryDesigns2.scala 225:48]
  wire [48:0] _GEN_92 = wire_res_45_1 ? _a_aux_reg_w_23_T_2 : {{1'd0}, a_aux_reg_r_22}; // @[BinaryDesigns2.scala 224:81 225:28 228:28]
  wire [47:0] a_aux_reg_w_23 = _GEN_92[47:0]; // @[BinaryDesigns2.scala 169:27]
  wire  wire_res_46_0 = a_aux_reg_w_23 >= b_aux_reg_r_22; // @[BinaryDesigns2.scala 224:35]
  wire [5:0] result_reg_r_23_lo_lo_lo = {wire_res_46_5,wire_res_46_4,wire_res_46_3,wire_res_46_2,wire_res_46_1,
    wire_res_46_0}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_23_lo_lo = {wire_res_46_11,wire_res_46_10,wire_res_46_9,wire_res_46_8,wire_res_46_7,
    wire_res_46_6,result_reg_r_23_lo_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_23_lo_hi_lo = {wire_res_46_17,wire_res_46_16,wire_res_46_15,wire_res_46_14,wire_res_46_13,
    wire_res_46_12}; // @[BinaryDesigns2.scala 231:46]
  wire [23:0] result_reg_r_23_lo = {wire_res_46_23,wire_res_46_22,wire_res_46_21,wire_res_46_20,wire_res_46_19,
    wire_res_46_18,result_reg_r_23_lo_hi_lo,result_reg_r_23_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_23_hi_lo_lo = {wire_res_46_29,wire_res_46_28,wire_res_46_27,wire_res_46_26,wire_res_46_25,
    wire_res_46_24}; // @[BinaryDesigns2.scala 231:46]
  wire [11:0] result_reg_r_23_hi_lo = {wire_res_46_35,wire_res_46_34,wire_res_46_33,wire_res_46_32,wire_res_46_31,
    wire_res_46_30,result_reg_r_23_hi_lo_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [5:0] result_reg_r_23_hi_hi_lo = {wire_res_46_41,wire_res_46_40,wire_res_46_39,wire_res_46_38,wire_res_46_37,
    wire_res_46_36}; // @[BinaryDesigns2.scala 231:46]
  wire [47:0] _result_reg_r_23_T = {wire_res_46_47,wire_res_46_46,wire_res_46_45,wire_res_46_44,wire_res_46_43,
    wire_res_46_42,result_reg_r_23_hi_hi_lo,result_reg_r_23_hi_lo,result_reg_r_23_lo}; // @[BinaryDesigns2.scala 231:46]
  wire [93:0] _GEN_668 = reset ? 94'h0 : _GEN_600; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [91:0] _GEN_669 = reset ? 92'h0 : _GEN_6; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [89:0] _GEN_670 = reset ? 90'h0 : _GEN_10; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [87:0] _GEN_671 = reset ? 88'h0 : _GEN_14; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [85:0] _GEN_672 = reset ? 86'h0 : _GEN_18; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [83:0] _GEN_673 = reset ? 84'h0 : _GEN_22; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [81:0] _GEN_674 = reset ? 82'h0 : _GEN_26; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [79:0] _GEN_675 = reset ? 80'h0 : _GEN_30; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [77:0] _GEN_676 = reset ? 78'h0 : _GEN_34; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [75:0] _GEN_677 = reset ? 76'h0 : _GEN_38; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [73:0] _GEN_678 = reset ? 74'h0 : _GEN_42; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [71:0] _GEN_679 = reset ? 72'h0 : _GEN_46; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [69:0] _GEN_680 = reset ? 70'h0 : _GEN_50; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [67:0] _GEN_681 = reset ? 68'h0 : _GEN_54; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [65:0] _GEN_682 = reset ? 66'h0 : _GEN_58; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [63:0] _GEN_683 = reset ? 64'h0 : _GEN_62; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [61:0] _GEN_684 = reset ? 62'h0 : _GEN_66; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [59:0] _GEN_685 = reset ? 60'h0 : _GEN_70; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [57:0] _GEN_686 = reset ? 58'h0 : _GEN_74; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [55:0] _GEN_687 = reset ? 56'h0 : _GEN_78; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [53:0] _GEN_688 = reset ? 54'h0 : _GEN_82; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [51:0] _GEN_689 = reset ? 52'h0 : _GEN_86; // @[BinaryDesigns2.scala 171:{30,30}]
  wire [49:0] _GEN_690 = reset ? 50'h0 : _GEN_90; // @[BinaryDesigns2.scala 171:{30,30}]
  assign io_out_s = result_reg_r_23; // @[BinaryDesigns2.scala 195:14]
  always @(posedge clock) begin
    a_aux_reg_r_0 <= _GEN_668[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_1 <= _GEN_669[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_2 <= _GEN_670[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_3 <= _GEN_671[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_4 <= _GEN_672[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_5 <= _GEN_673[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_6 <= _GEN_674[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_7 <= _GEN_675[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_8 <= _GEN_676[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_9 <= _GEN_677[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_10 <= _GEN_678[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_11 <= _GEN_679[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_12 <= _GEN_680[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_13 <= _GEN_681[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_14 <= _GEN_682[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_15 <= _GEN_683[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_16 <= _GEN_684[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_17 <= _GEN_685[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_18 <= _GEN_686[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_19 <= _GEN_687[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_20 <= _GEN_688[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_21 <= _GEN_689[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    a_aux_reg_r_22 <= _GEN_690[47:0]; // @[BinaryDesigns2.scala 171:{30,30}]
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_0 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_0 <= 48'hc90fdb;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_1 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_1 <= b_aux_reg_r_0;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_2 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_2 <= b_aux_reg_r_1;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_3 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_3 <= b_aux_reg_r_2;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_4 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_4 <= b_aux_reg_r_3;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_5 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_5 <= b_aux_reg_r_4;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_6 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_6 <= b_aux_reg_r_5;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_7 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_7 <= b_aux_reg_r_6;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_8 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_8 <= b_aux_reg_r_7;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_9 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_9 <= b_aux_reg_r_8;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_10 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_10 <= b_aux_reg_r_9;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_11 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_11 <= b_aux_reg_r_10;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_12 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_12 <= b_aux_reg_r_11;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_13 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_13 <= b_aux_reg_r_12;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_14 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_14 <= b_aux_reg_r_13;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_15 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_15 <= b_aux_reg_r_14;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_16 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_16 <= b_aux_reg_r_15;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_17 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_17 <= b_aux_reg_r_16;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_18 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_18 <= b_aux_reg_r_17;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_19 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_19 <= b_aux_reg_r_18;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_20 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_20 <= b_aux_reg_r_19;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_21 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_21 <= b_aux_reg_r_20;
    end
    if (reset) begin // @[BinaryDesigns2.scala 176:30]
      b_aux_reg_r_22 <= 48'h0; // @[BinaryDesigns2.scala 176:30]
    end else begin
      b_aux_reg_r_22 <= b_aux_reg_r_21;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_1 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_1 <= _result_reg_r_1_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_2 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_2 <= _result_reg_r_2_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_3 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_3 <= _result_reg_r_3_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_4 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_4 <= _result_reg_r_4_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_5 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_5 <= _result_reg_r_5_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_6 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_6 <= _result_reg_r_6_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_7 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_7 <= _result_reg_r_7_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_8 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_8 <= _result_reg_r_8_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_9 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_9 <= _result_reg_r_9_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_10 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_10 <= _result_reg_r_10_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_11 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_11 <= _result_reg_r_11_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_12 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_12 <= _result_reg_r_12_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_13 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_13 <= _result_reg_r_13_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_14 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_14 <= _result_reg_r_14_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_15 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_15 <= _result_reg_r_15_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_16 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_16 <= _result_reg_r_16_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_17 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_17 <= _result_reg_r_17_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_18 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_18 <= _result_reg_r_18_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_19 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_19 <= _result_reg_r_19_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_20 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_20 <= _result_reg_r_20_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_21 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_21 <= _result_reg_r_21_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_22 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_22 <= _result_reg_r_22_T;
    end
    if (reset) begin // @[BinaryDesigns2.scala 181:31]
      result_reg_r_23 <= 48'h0; // @[BinaryDesigns2.scala 181:31]
    end else begin
      result_reg_r_23 <= _result_reg_r_23_T;
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
  a_aux_reg_r_0 = _RAND_0[47:0];
  _RAND_1 = {2{`RANDOM}};
  a_aux_reg_r_1 = _RAND_1[47:0];
  _RAND_2 = {2{`RANDOM}};
  a_aux_reg_r_2 = _RAND_2[47:0];
  _RAND_3 = {2{`RANDOM}};
  a_aux_reg_r_3 = _RAND_3[47:0];
  _RAND_4 = {2{`RANDOM}};
  a_aux_reg_r_4 = _RAND_4[47:0];
  _RAND_5 = {2{`RANDOM}};
  a_aux_reg_r_5 = _RAND_5[47:0];
  _RAND_6 = {2{`RANDOM}};
  a_aux_reg_r_6 = _RAND_6[47:0];
  _RAND_7 = {2{`RANDOM}};
  a_aux_reg_r_7 = _RAND_7[47:0];
  _RAND_8 = {2{`RANDOM}};
  a_aux_reg_r_8 = _RAND_8[47:0];
  _RAND_9 = {2{`RANDOM}};
  a_aux_reg_r_9 = _RAND_9[47:0];
  _RAND_10 = {2{`RANDOM}};
  a_aux_reg_r_10 = _RAND_10[47:0];
  _RAND_11 = {2{`RANDOM}};
  a_aux_reg_r_11 = _RAND_11[47:0];
  _RAND_12 = {2{`RANDOM}};
  a_aux_reg_r_12 = _RAND_12[47:0];
  _RAND_13 = {2{`RANDOM}};
  a_aux_reg_r_13 = _RAND_13[47:0];
  _RAND_14 = {2{`RANDOM}};
  a_aux_reg_r_14 = _RAND_14[47:0];
  _RAND_15 = {2{`RANDOM}};
  a_aux_reg_r_15 = _RAND_15[47:0];
  _RAND_16 = {2{`RANDOM}};
  a_aux_reg_r_16 = _RAND_16[47:0];
  _RAND_17 = {2{`RANDOM}};
  a_aux_reg_r_17 = _RAND_17[47:0];
  _RAND_18 = {2{`RANDOM}};
  a_aux_reg_r_18 = _RAND_18[47:0];
  _RAND_19 = {2{`RANDOM}};
  a_aux_reg_r_19 = _RAND_19[47:0];
  _RAND_20 = {2{`RANDOM}};
  a_aux_reg_r_20 = _RAND_20[47:0];
  _RAND_21 = {2{`RANDOM}};
  a_aux_reg_r_21 = _RAND_21[47:0];
  _RAND_22 = {2{`RANDOM}};
  a_aux_reg_r_22 = _RAND_22[47:0];
  _RAND_23 = {2{`RANDOM}};
  b_aux_reg_r_0 = _RAND_23[47:0];
  _RAND_24 = {2{`RANDOM}};
  b_aux_reg_r_1 = _RAND_24[47:0];
  _RAND_25 = {2{`RANDOM}};
  b_aux_reg_r_2 = _RAND_25[47:0];
  _RAND_26 = {2{`RANDOM}};
  b_aux_reg_r_3 = _RAND_26[47:0];
  _RAND_27 = {2{`RANDOM}};
  b_aux_reg_r_4 = _RAND_27[47:0];
  _RAND_28 = {2{`RANDOM}};
  b_aux_reg_r_5 = _RAND_28[47:0];
  _RAND_29 = {2{`RANDOM}};
  b_aux_reg_r_6 = _RAND_29[47:0];
  _RAND_30 = {2{`RANDOM}};
  b_aux_reg_r_7 = _RAND_30[47:0];
  _RAND_31 = {2{`RANDOM}};
  b_aux_reg_r_8 = _RAND_31[47:0];
  _RAND_32 = {2{`RANDOM}};
  b_aux_reg_r_9 = _RAND_32[47:0];
  _RAND_33 = {2{`RANDOM}};
  b_aux_reg_r_10 = _RAND_33[47:0];
  _RAND_34 = {2{`RANDOM}};
  b_aux_reg_r_11 = _RAND_34[47:0];
  _RAND_35 = {2{`RANDOM}};
  b_aux_reg_r_12 = _RAND_35[47:0];
  _RAND_36 = {2{`RANDOM}};
  b_aux_reg_r_13 = _RAND_36[47:0];
  _RAND_37 = {2{`RANDOM}};
  b_aux_reg_r_14 = _RAND_37[47:0];
  _RAND_38 = {2{`RANDOM}};
  b_aux_reg_r_15 = _RAND_38[47:0];
  _RAND_39 = {2{`RANDOM}};
  b_aux_reg_r_16 = _RAND_39[47:0];
  _RAND_40 = {2{`RANDOM}};
  b_aux_reg_r_17 = _RAND_40[47:0];
  _RAND_41 = {2{`RANDOM}};
  b_aux_reg_r_18 = _RAND_41[47:0];
  _RAND_42 = {2{`RANDOM}};
  b_aux_reg_r_19 = _RAND_42[47:0];
  _RAND_43 = {2{`RANDOM}};
  b_aux_reg_r_20 = _RAND_43[47:0];
  _RAND_44 = {2{`RANDOM}};
  b_aux_reg_r_21 = _RAND_44[47:0];
  _RAND_45 = {2{`RANDOM}};
  b_aux_reg_r_22 = _RAND_45[47:0];
  _RAND_46 = {2{`RANDOM}};
  result_reg_r_1 = _RAND_46[47:0];
  _RAND_47 = {2{`RANDOM}};
  result_reg_r_2 = _RAND_47[47:0];
  _RAND_48 = {2{`RANDOM}};
  result_reg_r_3 = _RAND_48[47:0];
  _RAND_49 = {2{`RANDOM}};
  result_reg_r_4 = _RAND_49[47:0];
  _RAND_50 = {2{`RANDOM}};
  result_reg_r_5 = _RAND_50[47:0];
  _RAND_51 = {2{`RANDOM}};
  result_reg_r_6 = _RAND_51[47:0];
  _RAND_52 = {2{`RANDOM}};
  result_reg_r_7 = _RAND_52[47:0];
  _RAND_53 = {2{`RANDOM}};
  result_reg_r_8 = _RAND_53[47:0];
  _RAND_54 = {2{`RANDOM}};
  result_reg_r_9 = _RAND_54[47:0];
  _RAND_55 = {2{`RANDOM}};
  result_reg_r_10 = _RAND_55[47:0];
  _RAND_56 = {2{`RANDOM}};
  result_reg_r_11 = _RAND_56[47:0];
  _RAND_57 = {2{`RANDOM}};
  result_reg_r_12 = _RAND_57[47:0];
  _RAND_58 = {2{`RANDOM}};
  result_reg_r_13 = _RAND_58[47:0];
  _RAND_59 = {2{`RANDOM}};
  result_reg_r_14 = _RAND_59[47:0];
  _RAND_60 = {2{`RANDOM}};
  result_reg_r_15 = _RAND_60[47:0];
  _RAND_61 = {2{`RANDOM}};
  result_reg_r_16 = _RAND_61[47:0];
  _RAND_62 = {2{`RANDOM}};
  result_reg_r_17 = _RAND_62[47:0];
  _RAND_63 = {2{`RANDOM}};
  result_reg_r_18 = _RAND_63[47:0];
  _RAND_64 = {2{`RANDOM}};
  result_reg_r_19 = _RAND_64[47:0];
  _RAND_65 = {2{`RANDOM}};
  result_reg_r_20 = _RAND_65[47:0];
  _RAND_66 = {2{`RANDOM}};
  result_reg_r_21 = _RAND_66[47:0];
  _RAND_67 = {2{`RANDOM}};
  result_reg_r_22 = _RAND_67[47:0];
  _RAND_68 = {2{`RANDOM}};
  result_reg_r_23 = _RAND_68[47:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
