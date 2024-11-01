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
  reg [63:0] _RAND_69;
  reg [63:0] _RAND_70;
  reg [63:0] _RAND_71;
  reg [63:0] _RAND_72;
  reg [63:0] _RAND_73;
  reg [63:0] _RAND_74;
  reg [63:0] _RAND_75;
  reg [63:0] _RAND_76;
  reg [63:0] _RAND_77;
  reg [63:0] _RAND_78;
  reg [63:0] _RAND_79;
  reg [63:0] _RAND_80;
  reg [63:0] _RAND_81;
  reg [63:0] _RAND_82;
  reg [63:0] _RAND_83;
  reg [63:0] _RAND_84;
  reg [63:0] _RAND_85;
  reg [63:0] _RAND_86;
  reg [63:0] _RAND_87;
  reg [63:0] _RAND_88;
  reg [63:0] _RAND_89;
  reg [63:0] _RAND_90;
  reg [63:0] _RAND_91;
  reg [63:0] _RAND_92;
  reg [63:0] _RAND_93;
  reg [63:0] _RAND_94;
  reg [63:0] _RAND_95;
  reg [63:0] _RAND_96;
  reg [63:0] _RAND_97;
  reg [63:0] _RAND_98;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] tofixedx0_io_in; // @[VCORDIC.scala 107:33]
  wire [63:0] tofixedx0_io_out; // @[VCORDIC.scala 107:33]
  wire [31:0] tofixedy0_io_in; // @[VCORDIC.scala 108:33]
  wire [63:0] tofixedy0_io_out; // @[VCORDIC.scala 108:33]
  wire [31:0] tofixedz0_io_in; // @[VCORDIC.scala 109:33]
  wire [63:0] tofixedz0_io_out; // @[VCORDIC.scala 109:33]
  wire [63:0] tofloatxout_io_in; // @[VCORDIC.scala 161:29]
  wire [31:0] tofloatxout_io_out; // @[VCORDIC.scala 161:29]
  wire [63:0] tofloatyout_io_in; // @[VCORDIC.scala 162:29]
  wire [31:0] tofloatyout_io_out; // @[VCORDIC.scala 162:29]
  wire [63:0] tofloatzout_io_in; // @[VCORDIC.scala 163:29]
  wire [31:0] tofloatzout_io_out; // @[VCORDIC.scala 163:29]
  reg [63:0] xr_0; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_1; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_2; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_3; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_4; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_5; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_6; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_7; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_8; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_9; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_10; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_11; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_12; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_13; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_14; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_15; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_16; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_17; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_18; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_19; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_20; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_21; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_22; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_23; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_24; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_25; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_26; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_27; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_28; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_29; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_30; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_31; // @[VCORDIC.scala 120:27]
  reg [63:0] xr_32; // @[VCORDIC.scala 120:27]
  reg [63:0] yr_0; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_1; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_2; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_3; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_4; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_5; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_6; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_7; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_8; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_9; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_10; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_11; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_12; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_13; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_14; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_15; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_16; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_17; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_18; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_19; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_20; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_21; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_22; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_23; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_24; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_25; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_26; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_27; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_28; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_29; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_30; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_31; // @[VCORDIC.scala 121:27]
  reg [63:0] yr_32; // @[VCORDIC.scala 121:27]
  reg [63:0] zr_0; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_1; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_2; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_3; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_4; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_5; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_6; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_7; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_8; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_9; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_10; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_11; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_12; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_13; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_14; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_15; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_16; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_17; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_18; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_19; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_20; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_21; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_22; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_23; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_24; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_25; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_26; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_27; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_28; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_29; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_30; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_31; // @[VCORDIC.scala 122:27]
  reg [63:0] zr_32; // @[VCORDIC.scala 122:27]
  wire  _fxxterm_T = $signed(yr_0) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_3 = 64'sh0 - $signed(xr_0); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm = $signed(yr_0) < 64'sh0 ? $signed(_fxxterm_T_3) : $signed(xr_0); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_3 = 64'sh0 - $signed(yr_0); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm = _fxxterm_T ? $signed(_fxyterm_T_3) : $signed(yr_0); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_2 = 64'h0 - 64'hc90fdb00; // @[VCORDIC.scala 146:48]
  wire [63:0] x_1 = $signed(xr_0) + $signed(fxyterm); // @[VCORDIC.scala 149:25]
  wire [63:0] y_1 = $signed(yr_0) - $signed(fxxterm); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_1_T = _fxxterm_T ? _fxthetaterm_T_2 : 64'hc90fdb00; // @[VCORDIC.scala 151:39]
  wire [63:0] z_1 = $signed(zr_0) + $signed(_z_1_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_4 = $signed(yr_1) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_7 = 64'sh0 - $signed(xr_1); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_1 = $signed(yr_1) < 64'sh0 ? $signed(_fxxterm_T_7) : $signed(xr_1); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_7 = 64'sh0 - $signed(yr_1); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_1 = _fxxterm_T_4 ? $signed(_fxyterm_T_7) : $signed(yr_1); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_5 = 64'h0 - 64'h76b19c00; // @[VCORDIC.scala 146:48]
  wire [62:0] _GEN_0 = fxyterm_1[63:1]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_2_T = {{1{_GEN_0[62]}},_GEN_0}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_2 = $signed(xr_1) + $signed(_x_2_T); // @[VCORDIC.scala 149:25]
  wire [62:0] _GEN_1 = fxxterm_1[63:1]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_2_T = {{1{_GEN_1[62]}},_GEN_1}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_2 = $signed(yr_1) - $signed(_y_2_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_2_T = _fxxterm_T_4 ? _fxthetaterm_T_5 : 64'h76b19c00; // @[VCORDIC.scala 151:39]
  wire [63:0] z_2 = $signed(zr_1) + $signed(_z_2_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_8 = $signed(yr_2) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_11 = 64'sh0 - $signed(xr_2); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_2 = $signed(yr_2) < 64'sh0 ? $signed(_fxxterm_T_11) : $signed(xr_2); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_11 = 64'sh0 - $signed(yr_2); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_2 = _fxxterm_T_8 ? $signed(_fxyterm_T_11) : $signed(yr_2); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_8 = 64'h0 - 64'h3eb6ec00; // @[VCORDIC.scala 146:48]
  wire [61:0] _GEN_2 = fxyterm_2[63:2]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_3_T = {{2{_GEN_2[61]}},_GEN_2}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_3 = $signed(xr_2) + $signed(_x_3_T); // @[VCORDIC.scala 149:25]
  wire [61:0] _GEN_3 = fxxterm_2[63:2]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_3_T = {{2{_GEN_3[61]}},_GEN_3}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_3 = $signed(yr_2) - $signed(_y_3_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_3_T = _fxxterm_T_8 ? _fxthetaterm_T_8 : 64'h3eb6ec00; // @[VCORDIC.scala 151:39]
  wire [63:0] z_3 = $signed(zr_2) + $signed(_z_3_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_12 = $signed(yr_3) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_15 = 64'sh0 - $signed(xr_3); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_3 = $signed(yr_3) < 64'sh0 ? $signed(_fxxterm_T_15) : $signed(xr_3); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_15 = 64'sh0 - $signed(yr_3); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_3 = _fxxterm_T_12 ? $signed(_fxyterm_T_15) : $signed(yr_3); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_11 = 64'h0 - 64'h1fd5baa0; // @[VCORDIC.scala 146:48]
  wire [60:0] _GEN_4 = fxyterm_3[63:3]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_4_T = {{3{_GEN_4[60]}},_GEN_4}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_4 = $signed(xr_3) + $signed(_x_4_T); // @[VCORDIC.scala 149:25]
  wire [60:0] _GEN_5 = fxxterm_3[63:3]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_4_T = {{3{_GEN_5[60]}},_GEN_5}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_4 = $signed(yr_3) - $signed(_y_4_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_4_T = _fxxterm_T_12 ? _fxthetaterm_T_11 : 64'h1fd5baa0; // @[VCORDIC.scala 151:39]
  wire [63:0] z_4 = $signed(zr_3) + $signed(_z_4_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_16 = $signed(yr_4) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_19 = 64'sh0 - $signed(xr_4); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_4 = $signed(yr_4) < 64'sh0 ? $signed(_fxxterm_T_19) : $signed(xr_4); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_19 = 64'sh0 - $signed(yr_4); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_4 = _fxxterm_T_16 ? $signed(_fxyterm_T_19) : $signed(yr_4); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_14 = 64'h0 - 64'hffaade0; // @[VCORDIC.scala 146:48]
  wire [59:0] _GEN_6 = fxyterm_4[63:4]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_5_T = {{4{_GEN_6[59]}},_GEN_6}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_5 = $signed(xr_4) + $signed(_x_5_T); // @[VCORDIC.scala 149:25]
  wire [59:0] _GEN_7 = fxxterm_4[63:4]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_5_T = {{4{_GEN_7[59]}},_GEN_7}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_5 = $signed(yr_4) - $signed(_y_5_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_5_T = _fxxterm_T_16 ? _fxthetaterm_T_14 : 64'hffaade0; // @[VCORDIC.scala 151:39]
  wire [63:0] z_5 = $signed(zr_4) + $signed(_z_5_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_20 = $signed(yr_5) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_23 = 64'sh0 - $signed(xr_5); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_5 = $signed(yr_5) < 64'sh0 ? $signed(_fxxterm_T_23) : $signed(xr_5); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_23 = 64'sh0 - $signed(yr_5); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_5 = _fxxterm_T_20 ? $signed(_fxyterm_T_23) : $signed(yr_5); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_17 = 64'h0 - 64'h7ff5570; // @[VCORDIC.scala 146:48]
  wire [58:0] _GEN_8 = fxyterm_5[63:5]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_6_T = {{5{_GEN_8[58]}},_GEN_8}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_6 = $signed(xr_5) + $signed(_x_6_T); // @[VCORDIC.scala 149:25]
  wire [58:0] _GEN_9 = fxxterm_5[63:5]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_6_T = {{5{_GEN_9[58]}},_GEN_9}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_6 = $signed(yr_5) - $signed(_y_6_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_6_T = _fxxterm_T_20 ? _fxthetaterm_T_17 : 64'h7ff5570; // @[VCORDIC.scala 151:39]
  wire [63:0] z_6 = $signed(zr_5) + $signed(_z_6_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_24 = $signed(yr_6) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_27 = 64'sh0 - $signed(xr_6); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_6 = $signed(yr_6) < 64'sh0 ? $signed(_fxxterm_T_27) : $signed(xr_6); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_27 = 64'sh0 - $signed(yr_6); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_6 = _fxxterm_T_24 ? $signed(_fxyterm_T_27) : $signed(yr_6); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_20 = 64'h0 - 64'h3ffeaac; // @[VCORDIC.scala 146:48]
  wire [57:0] _GEN_10 = fxyterm_6[63:6]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_7_T = {{6{_GEN_10[57]}},_GEN_10}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_7 = $signed(xr_6) + $signed(_x_7_T); // @[VCORDIC.scala 149:25]
  wire [57:0] _GEN_11 = fxxterm_6[63:6]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_7_T = {{6{_GEN_11[57]}},_GEN_11}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_7 = $signed(yr_6) - $signed(_y_7_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_7_T = _fxxterm_T_24 ? _fxthetaterm_T_20 : 64'h3ffeaac; // @[VCORDIC.scala 151:39]
  wire [63:0] z_7 = $signed(zr_6) + $signed(_z_7_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_28 = $signed(yr_7) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_31 = 64'sh0 - $signed(xr_7); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_7 = $signed(yr_7) < 64'sh0 ? $signed(_fxxterm_T_31) : $signed(xr_7); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_31 = 64'sh0 - $signed(yr_7); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_7 = _fxxterm_T_28 ? $signed(_fxyterm_T_31) : $signed(yr_7); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_23 = 64'h0 - 64'h1fffd56; // @[VCORDIC.scala 146:48]
  wire [56:0] _GEN_12 = fxyterm_7[63:7]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_8_T = {{7{_GEN_12[56]}},_GEN_12}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_8 = $signed(xr_7) + $signed(_x_8_T); // @[VCORDIC.scala 149:25]
  wire [56:0] _GEN_13 = fxxterm_7[63:7]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_8_T = {{7{_GEN_13[56]}},_GEN_13}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_8 = $signed(yr_7) - $signed(_y_8_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_8_T = _fxxterm_T_28 ? _fxthetaterm_T_23 : 64'h1fffd56; // @[VCORDIC.scala 151:39]
  wire [63:0] z_8 = $signed(zr_7) + $signed(_z_8_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_32 = $signed(yr_8) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_35 = 64'sh0 - $signed(xr_8); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_8 = $signed(yr_8) < 64'sh0 ? $signed(_fxxterm_T_35) : $signed(xr_8); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_35 = 64'sh0 - $signed(yr_8); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_8 = _fxxterm_T_32 ? $signed(_fxyterm_T_35) : $signed(yr_8); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_26 = 64'h0 - 64'hffffab; // @[VCORDIC.scala 146:48]
  wire [55:0] _GEN_14 = fxyterm_8[63:8]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_9_T = {{8{_GEN_14[55]}},_GEN_14}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_9 = $signed(xr_8) + $signed(_x_9_T); // @[VCORDIC.scala 149:25]
  wire [55:0] _GEN_15 = fxxterm_8[63:8]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_9_T = {{8{_GEN_15[55]}},_GEN_15}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_9 = $signed(yr_8) - $signed(_y_9_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_9_T = _fxxterm_T_32 ? _fxthetaterm_T_26 : 64'hffffab; // @[VCORDIC.scala 151:39]
  wire [63:0] z_9 = $signed(zr_8) + $signed(_z_9_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_36 = $signed(yr_9) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_39 = 64'sh0 - $signed(xr_9); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_9 = $signed(yr_9) < 64'sh0 ? $signed(_fxxterm_T_39) : $signed(xr_9); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_39 = 64'sh0 - $signed(yr_9); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_9 = _fxxterm_T_36 ? $signed(_fxyterm_T_39) : $signed(yr_9); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_29 = 64'h0 - 64'h7ffff5; // @[VCORDIC.scala 146:48]
  wire [54:0] _GEN_16 = fxyterm_9[63:9]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_10_T = {{9{_GEN_16[54]}},_GEN_16}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_10 = $signed(xr_9) + $signed(_x_10_T); // @[VCORDIC.scala 149:25]
  wire [54:0] _GEN_17 = fxxterm_9[63:9]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_10_T = {{9{_GEN_17[54]}},_GEN_17}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_10 = $signed(yr_9) - $signed(_y_10_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_10_T = _fxxterm_T_36 ? _fxthetaterm_T_29 : 64'h7ffff5; // @[VCORDIC.scala 151:39]
  wire [63:0] z_10 = $signed(zr_9) + $signed(_z_10_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_40 = $signed(yr_10) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_43 = 64'sh0 - $signed(xr_10); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_10 = $signed(yr_10) < 64'sh0 ? $signed(_fxxterm_T_43) : $signed(xr_10); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_43 = 64'sh0 - $signed(yr_10); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_10 = _fxxterm_T_40 ? $signed(_fxyterm_T_43) : $signed(yr_10); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_32 = 64'h0 - 64'h3ffffe; // @[VCORDIC.scala 146:48]
  wire [53:0] _GEN_18 = fxyterm_10[63:10]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_11_T = {{10{_GEN_18[53]}},_GEN_18}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_11 = $signed(xr_10) + $signed(_x_11_T); // @[VCORDIC.scala 149:25]
  wire [53:0] _GEN_19 = fxxterm_10[63:10]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_11_T = {{10{_GEN_19[53]}},_GEN_19}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_11 = $signed(yr_10) - $signed(_y_11_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_11_T = _fxxterm_T_40 ? _fxthetaterm_T_32 : 64'h3ffffe; // @[VCORDIC.scala 151:39]
  wire [63:0] z_11 = $signed(zr_10) + $signed(_z_11_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_44 = $signed(yr_11) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_47 = 64'sh0 - $signed(xr_11); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_11 = $signed(yr_11) < 64'sh0 ? $signed(_fxxterm_T_47) : $signed(xr_11); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_47 = 64'sh0 - $signed(yr_11); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_11 = _fxxterm_T_44 ? $signed(_fxyterm_T_47) : $signed(yr_11); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_35 = 64'h0 - 64'h1fffff; // @[VCORDIC.scala 146:48]
  wire [52:0] _GEN_20 = fxyterm_11[63:11]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_12_T = {{11{_GEN_20[52]}},_GEN_20}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_12 = $signed(xr_11) + $signed(_x_12_T); // @[VCORDIC.scala 149:25]
  wire [52:0] _GEN_21 = fxxterm_11[63:11]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_12_T = {{11{_GEN_21[52]}},_GEN_21}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_12 = $signed(yr_11) - $signed(_y_12_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_12_T = _fxxterm_T_44 ? _fxthetaterm_T_35 : 64'h1fffff; // @[VCORDIC.scala 151:39]
  wire [63:0] z_12 = $signed(zr_11) + $signed(_z_12_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_48 = $signed(yr_12) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_51 = 64'sh0 - $signed(xr_12); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_12 = $signed(yr_12) < 64'sh0 ? $signed(_fxxterm_T_51) : $signed(xr_12); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_51 = 64'sh0 - $signed(yr_12); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_12 = _fxxterm_T_48 ? $signed(_fxyterm_T_51) : $signed(yr_12); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_38 = 64'h0 - 64'h100000; // @[VCORDIC.scala 146:48]
  wire [51:0] _GEN_22 = fxyterm_12[63:12]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_13_T = {{12{_GEN_22[51]}},_GEN_22}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_13 = $signed(xr_12) + $signed(_x_13_T); // @[VCORDIC.scala 149:25]
  wire [51:0] _GEN_23 = fxxterm_12[63:12]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_13_T = {{12{_GEN_23[51]}},_GEN_23}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_13 = $signed(yr_12) - $signed(_y_13_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_13_T = _fxxterm_T_48 ? _fxthetaterm_T_38 : 64'h100000; // @[VCORDIC.scala 151:39]
  wire [63:0] z_13 = $signed(zr_12) + $signed(_z_13_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_52 = $signed(yr_13) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_55 = 64'sh0 - $signed(xr_13); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_13 = $signed(yr_13) < 64'sh0 ? $signed(_fxxterm_T_55) : $signed(xr_13); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_55 = 64'sh0 - $signed(yr_13); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_13 = _fxxterm_T_52 ? $signed(_fxyterm_T_55) : $signed(yr_13); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_41 = 64'h0 - 64'h80000; // @[VCORDIC.scala 146:48]
  wire [50:0] _GEN_24 = fxyterm_13[63:13]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_14_T = {{13{_GEN_24[50]}},_GEN_24}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_14 = $signed(xr_13) + $signed(_x_14_T); // @[VCORDIC.scala 149:25]
  wire [50:0] _GEN_25 = fxxterm_13[63:13]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_14_T = {{13{_GEN_25[50]}},_GEN_25}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_14 = $signed(yr_13) - $signed(_y_14_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_14_T = _fxxterm_T_52 ? _fxthetaterm_T_41 : 64'h80000; // @[VCORDIC.scala 151:39]
  wire [63:0] z_14 = $signed(zr_13) + $signed(_z_14_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_56 = $signed(yr_14) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_59 = 64'sh0 - $signed(xr_14); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_14 = $signed(yr_14) < 64'sh0 ? $signed(_fxxterm_T_59) : $signed(xr_14); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_59 = 64'sh0 - $signed(yr_14); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_14 = _fxxterm_T_56 ? $signed(_fxyterm_T_59) : $signed(yr_14); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_44 = 64'h0 - 64'h40000; // @[VCORDIC.scala 146:48]
  wire [49:0] _GEN_26 = fxyterm_14[63:14]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_15_T = {{14{_GEN_26[49]}},_GEN_26}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_15 = $signed(xr_14) + $signed(_x_15_T); // @[VCORDIC.scala 149:25]
  wire [49:0] _GEN_27 = fxxterm_14[63:14]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_15_T = {{14{_GEN_27[49]}},_GEN_27}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_15 = $signed(yr_14) - $signed(_y_15_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_15_T = _fxxterm_T_56 ? _fxthetaterm_T_44 : 64'h40000; // @[VCORDIC.scala 151:39]
  wire [63:0] z_15 = $signed(zr_14) + $signed(_z_15_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_60 = $signed(yr_15) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_63 = 64'sh0 - $signed(xr_15); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_15 = $signed(yr_15) < 64'sh0 ? $signed(_fxxterm_T_63) : $signed(xr_15); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_63 = 64'sh0 - $signed(yr_15); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_15 = _fxxterm_T_60 ? $signed(_fxyterm_T_63) : $signed(yr_15); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_47 = 64'h0 - 64'h20000; // @[VCORDIC.scala 146:48]
  wire [48:0] _GEN_28 = fxyterm_15[63:15]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_16_T = {{15{_GEN_28[48]}},_GEN_28}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_16 = $signed(xr_15) + $signed(_x_16_T); // @[VCORDIC.scala 149:25]
  wire [48:0] _GEN_29 = fxxterm_15[63:15]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_16_T = {{15{_GEN_29[48]}},_GEN_29}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_16 = $signed(yr_15) - $signed(_y_16_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_16_T = _fxxterm_T_60 ? _fxthetaterm_T_47 : 64'h20000; // @[VCORDIC.scala 151:39]
  wire [63:0] z_16 = $signed(zr_15) + $signed(_z_16_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_64 = $signed(yr_16) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_67 = 64'sh0 - $signed(xr_16); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_16 = $signed(yr_16) < 64'sh0 ? $signed(_fxxterm_T_67) : $signed(xr_16); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_67 = 64'sh0 - $signed(yr_16); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_16 = _fxxterm_T_64 ? $signed(_fxyterm_T_67) : $signed(yr_16); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_50 = 64'h0 - 64'h10000; // @[VCORDIC.scala 146:48]
  wire [47:0] _GEN_30 = fxyterm_16[63:16]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_17_T = {{16{_GEN_30[47]}},_GEN_30}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_17 = $signed(xr_16) + $signed(_x_17_T); // @[VCORDIC.scala 149:25]
  wire [47:0] _GEN_31 = fxxterm_16[63:16]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_17_T = {{16{_GEN_31[47]}},_GEN_31}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_17 = $signed(yr_16) - $signed(_y_17_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_17_T = _fxxterm_T_64 ? _fxthetaterm_T_50 : 64'h10000; // @[VCORDIC.scala 151:39]
  wire [63:0] z_17 = $signed(zr_16) + $signed(_z_17_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_68 = $signed(yr_17) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_71 = 64'sh0 - $signed(xr_17); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_17 = $signed(yr_17) < 64'sh0 ? $signed(_fxxterm_T_71) : $signed(xr_17); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_71 = 64'sh0 - $signed(yr_17); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_17 = _fxxterm_T_68 ? $signed(_fxyterm_T_71) : $signed(yr_17); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_53 = 64'h0 - 64'h8000; // @[VCORDIC.scala 146:48]
  wire [46:0] _GEN_32 = fxyterm_17[63:17]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_18_T = {{17{_GEN_32[46]}},_GEN_32}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_18 = $signed(xr_17) + $signed(_x_18_T); // @[VCORDIC.scala 149:25]
  wire [46:0] _GEN_33 = fxxterm_17[63:17]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_18_T = {{17{_GEN_33[46]}},_GEN_33}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_18 = $signed(yr_17) - $signed(_y_18_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_18_T = _fxxterm_T_68 ? _fxthetaterm_T_53 : 64'h8000; // @[VCORDIC.scala 151:39]
  wire [63:0] z_18 = $signed(zr_17) + $signed(_z_18_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_72 = $signed(yr_18) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_75 = 64'sh0 - $signed(xr_18); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_18 = $signed(yr_18) < 64'sh0 ? $signed(_fxxterm_T_75) : $signed(xr_18); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_75 = 64'sh0 - $signed(yr_18); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_18 = _fxxterm_T_72 ? $signed(_fxyterm_T_75) : $signed(yr_18); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_56 = 64'h0 - 64'h4000; // @[VCORDIC.scala 146:48]
  wire [45:0] _GEN_34 = fxyterm_18[63:18]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_19_T = {{18{_GEN_34[45]}},_GEN_34}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_19 = $signed(xr_18) + $signed(_x_19_T); // @[VCORDIC.scala 149:25]
  wire [45:0] _GEN_35 = fxxterm_18[63:18]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_19_T = {{18{_GEN_35[45]}},_GEN_35}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_19 = $signed(yr_18) - $signed(_y_19_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_19_T = _fxxterm_T_72 ? _fxthetaterm_T_56 : 64'h4000; // @[VCORDIC.scala 151:39]
  wire [63:0] z_19 = $signed(zr_18) + $signed(_z_19_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_76 = $signed(yr_19) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_79 = 64'sh0 - $signed(xr_19); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_19 = $signed(yr_19) < 64'sh0 ? $signed(_fxxterm_T_79) : $signed(xr_19); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_79 = 64'sh0 - $signed(yr_19); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_19 = _fxxterm_T_76 ? $signed(_fxyterm_T_79) : $signed(yr_19); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_59 = 64'h0 - 64'h2000; // @[VCORDIC.scala 146:48]
  wire [44:0] _GEN_36 = fxyterm_19[63:19]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_20_T = {{19{_GEN_36[44]}},_GEN_36}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_20 = $signed(xr_19) + $signed(_x_20_T); // @[VCORDIC.scala 149:25]
  wire [44:0] _GEN_37 = fxxterm_19[63:19]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_20_T = {{19{_GEN_37[44]}},_GEN_37}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_20 = $signed(yr_19) - $signed(_y_20_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_20_T = _fxxterm_T_76 ? _fxthetaterm_T_59 : 64'h2000; // @[VCORDIC.scala 151:39]
  wire [63:0] z_20 = $signed(zr_19) + $signed(_z_20_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_80 = $signed(yr_20) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_83 = 64'sh0 - $signed(xr_20); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_20 = $signed(yr_20) < 64'sh0 ? $signed(_fxxterm_T_83) : $signed(xr_20); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_83 = 64'sh0 - $signed(yr_20); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_20 = _fxxterm_T_80 ? $signed(_fxyterm_T_83) : $signed(yr_20); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_62 = 64'h0 - 64'h1000; // @[VCORDIC.scala 146:48]
  wire [43:0] _GEN_38 = fxyterm_20[63:20]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_21_T = {{20{_GEN_38[43]}},_GEN_38}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_21 = $signed(xr_20) + $signed(_x_21_T); // @[VCORDIC.scala 149:25]
  wire [43:0] _GEN_39 = fxxterm_20[63:20]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_21_T = {{20{_GEN_39[43]}},_GEN_39}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_21 = $signed(yr_20) - $signed(_y_21_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_21_T = _fxxterm_T_80 ? _fxthetaterm_T_62 : 64'h1000; // @[VCORDIC.scala 151:39]
  wire [63:0] z_21 = $signed(zr_20) + $signed(_z_21_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_84 = $signed(yr_21) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_87 = 64'sh0 - $signed(xr_21); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_21 = $signed(yr_21) < 64'sh0 ? $signed(_fxxterm_T_87) : $signed(xr_21); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_87 = 64'sh0 - $signed(yr_21); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_21 = _fxxterm_T_84 ? $signed(_fxyterm_T_87) : $signed(yr_21); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_65 = 64'h0 - 64'h800; // @[VCORDIC.scala 146:48]
  wire [42:0] _GEN_40 = fxyterm_21[63:21]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_22_T = {{21{_GEN_40[42]}},_GEN_40}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_22 = $signed(xr_21) + $signed(_x_22_T); // @[VCORDIC.scala 149:25]
  wire [42:0] _GEN_41 = fxxterm_21[63:21]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_22_T = {{21{_GEN_41[42]}},_GEN_41}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_22 = $signed(yr_21) - $signed(_y_22_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_22_T = _fxxterm_T_84 ? _fxthetaterm_T_65 : 64'h800; // @[VCORDIC.scala 151:39]
  wire [63:0] z_22 = $signed(zr_21) + $signed(_z_22_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_88 = $signed(yr_22) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_91 = 64'sh0 - $signed(xr_22); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_22 = $signed(yr_22) < 64'sh0 ? $signed(_fxxterm_T_91) : $signed(xr_22); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_91 = 64'sh0 - $signed(yr_22); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_22 = _fxxterm_T_88 ? $signed(_fxyterm_T_91) : $signed(yr_22); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_68 = 64'h0 - 64'h400; // @[VCORDIC.scala 146:48]
  wire [41:0] _GEN_42 = fxyterm_22[63:22]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_23_T = {{22{_GEN_42[41]}},_GEN_42}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_23 = $signed(xr_22) + $signed(_x_23_T); // @[VCORDIC.scala 149:25]
  wire [41:0] _GEN_43 = fxxterm_22[63:22]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_23_T = {{22{_GEN_43[41]}},_GEN_43}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_23 = $signed(yr_22) - $signed(_y_23_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_23_T = _fxxterm_T_88 ? _fxthetaterm_T_68 : 64'h400; // @[VCORDIC.scala 151:39]
  wire [63:0] z_23 = $signed(zr_22) + $signed(_z_23_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_92 = $signed(yr_23) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_95 = 64'sh0 - $signed(xr_23); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_23 = $signed(yr_23) < 64'sh0 ? $signed(_fxxterm_T_95) : $signed(xr_23); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_95 = 64'sh0 - $signed(yr_23); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_23 = _fxxterm_T_92 ? $signed(_fxyterm_T_95) : $signed(yr_23); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_71 = 64'h0 - 64'h200; // @[VCORDIC.scala 146:48]
  wire [40:0] _GEN_44 = fxyterm_23[63:23]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_24_T = {{23{_GEN_44[40]}},_GEN_44}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_24 = $signed(xr_23) + $signed(_x_24_T); // @[VCORDIC.scala 149:25]
  wire [40:0] _GEN_45 = fxxterm_23[63:23]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_24_T = {{23{_GEN_45[40]}},_GEN_45}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_24 = $signed(yr_23) - $signed(_y_24_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_24_T = _fxxterm_T_92 ? _fxthetaterm_T_71 : 64'h200; // @[VCORDIC.scala 151:39]
  wire [63:0] z_24 = $signed(zr_23) + $signed(_z_24_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_96 = $signed(yr_24) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_99 = 64'sh0 - $signed(xr_24); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_24 = $signed(yr_24) < 64'sh0 ? $signed(_fxxterm_T_99) : $signed(xr_24); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_99 = 64'sh0 - $signed(yr_24); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_24 = _fxxterm_T_96 ? $signed(_fxyterm_T_99) : $signed(yr_24); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_74 = 64'h0 - 64'h100; // @[VCORDIC.scala 146:48]
  wire [39:0] _GEN_46 = fxyterm_24[63:24]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_25_T = {{24{_GEN_46[39]}},_GEN_46}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_25 = $signed(xr_24) + $signed(_x_25_T); // @[VCORDIC.scala 149:25]
  wire [39:0] _GEN_47 = fxxterm_24[63:24]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_25_T = {{24{_GEN_47[39]}},_GEN_47}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_25 = $signed(yr_24) - $signed(_y_25_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_25_T = _fxxterm_T_96 ? _fxthetaterm_T_74 : 64'h100; // @[VCORDIC.scala 151:39]
  wire [63:0] z_25 = $signed(zr_24) + $signed(_z_25_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_100 = $signed(yr_25) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_103 = 64'sh0 - $signed(xr_25); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_25 = $signed(yr_25) < 64'sh0 ? $signed(_fxxterm_T_103) : $signed(xr_25); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_103 = 64'sh0 - $signed(yr_25); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_25 = _fxxterm_T_100 ? $signed(_fxyterm_T_103) : $signed(yr_25); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_77 = 64'h0 - 64'h80; // @[VCORDIC.scala 146:48]
  wire [38:0] _GEN_48 = fxyterm_25[63:25]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_26_T = {{25{_GEN_48[38]}},_GEN_48}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_26 = $signed(xr_25) + $signed(_x_26_T); // @[VCORDIC.scala 149:25]
  wire [38:0] _GEN_49 = fxxterm_25[63:25]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_26_T = {{25{_GEN_49[38]}},_GEN_49}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_26 = $signed(yr_25) - $signed(_y_26_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_26_T = _fxxterm_T_100 ? _fxthetaterm_T_77 : 64'h80; // @[VCORDIC.scala 151:39]
  wire [63:0] z_26 = $signed(zr_25) + $signed(_z_26_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_104 = $signed(yr_26) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_107 = 64'sh0 - $signed(xr_26); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_26 = $signed(yr_26) < 64'sh0 ? $signed(_fxxterm_T_107) : $signed(xr_26); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_107 = 64'sh0 - $signed(yr_26); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_26 = _fxxterm_T_104 ? $signed(_fxyterm_T_107) : $signed(yr_26); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_80 = 64'h0 - 64'h40; // @[VCORDIC.scala 146:48]
  wire [37:0] _GEN_50 = fxyterm_26[63:26]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_27_T = {{26{_GEN_50[37]}},_GEN_50}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_27 = $signed(xr_26) + $signed(_x_27_T); // @[VCORDIC.scala 149:25]
  wire [37:0] _GEN_51 = fxxterm_26[63:26]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_27_T = {{26{_GEN_51[37]}},_GEN_51}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_27 = $signed(yr_26) - $signed(_y_27_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_27_T = _fxxterm_T_104 ? _fxthetaterm_T_80 : 64'h40; // @[VCORDIC.scala 151:39]
  wire [63:0] z_27 = $signed(zr_26) + $signed(_z_27_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_108 = $signed(yr_27) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_111 = 64'sh0 - $signed(xr_27); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_27 = $signed(yr_27) < 64'sh0 ? $signed(_fxxterm_T_111) : $signed(xr_27); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_111 = 64'sh0 - $signed(yr_27); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_27 = _fxxterm_T_108 ? $signed(_fxyterm_T_111) : $signed(yr_27); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_83 = 64'h0 - 64'h20; // @[VCORDIC.scala 146:48]
  wire [36:0] _GEN_52 = fxyterm_27[63:27]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_28_T = {{27{_GEN_52[36]}},_GEN_52}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_28 = $signed(xr_27) + $signed(_x_28_T); // @[VCORDIC.scala 149:25]
  wire [36:0] _GEN_53 = fxxterm_27[63:27]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_28_T = {{27{_GEN_53[36]}},_GEN_53}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_28 = $signed(yr_27) - $signed(_y_28_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_28_T = _fxxterm_T_108 ? _fxthetaterm_T_83 : 64'h20; // @[VCORDIC.scala 151:39]
  wire [63:0] z_28 = $signed(zr_27) + $signed(_z_28_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_112 = $signed(yr_28) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_115 = 64'sh0 - $signed(xr_28); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_28 = $signed(yr_28) < 64'sh0 ? $signed(_fxxterm_T_115) : $signed(xr_28); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_115 = 64'sh0 - $signed(yr_28); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_28 = _fxxterm_T_112 ? $signed(_fxyterm_T_115) : $signed(yr_28); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_86 = 64'h0 - 64'h10; // @[VCORDIC.scala 146:48]
  wire [35:0] _GEN_54 = fxyterm_28[63:28]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_29_T = {{28{_GEN_54[35]}},_GEN_54}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_29 = $signed(xr_28) + $signed(_x_29_T); // @[VCORDIC.scala 149:25]
  wire [35:0] _GEN_55 = fxxterm_28[63:28]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_29_T = {{28{_GEN_55[35]}},_GEN_55}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_29 = $signed(yr_28) - $signed(_y_29_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_29_T = _fxxterm_T_112 ? _fxthetaterm_T_86 : 64'h10; // @[VCORDIC.scala 151:39]
  wire [63:0] z_29 = $signed(zr_28) + $signed(_z_29_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_116 = $signed(yr_29) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_119 = 64'sh0 - $signed(xr_29); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_29 = $signed(yr_29) < 64'sh0 ? $signed(_fxxterm_T_119) : $signed(xr_29); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_119 = 64'sh0 - $signed(yr_29); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_29 = _fxxterm_T_116 ? $signed(_fxyterm_T_119) : $signed(yr_29); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_89 = 64'h0 - 64'h8; // @[VCORDIC.scala 146:48]
  wire [34:0] _GEN_56 = fxyterm_29[63:29]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_30_T = {{29{_GEN_56[34]}},_GEN_56}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_30 = $signed(xr_29) + $signed(_x_30_T); // @[VCORDIC.scala 149:25]
  wire [34:0] _GEN_57 = fxxterm_29[63:29]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_30_T = {{29{_GEN_57[34]}},_GEN_57}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_30 = $signed(yr_29) - $signed(_y_30_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_30_T = _fxxterm_T_116 ? _fxthetaterm_T_89 : 64'h8; // @[VCORDIC.scala 151:39]
  wire [63:0] z_30 = $signed(zr_29) + $signed(_z_30_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_120 = $signed(yr_30) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_123 = 64'sh0 - $signed(xr_30); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_30 = $signed(yr_30) < 64'sh0 ? $signed(_fxxterm_T_123) : $signed(xr_30); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_123 = 64'sh0 - $signed(yr_30); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_30 = _fxxterm_T_120 ? $signed(_fxyterm_T_123) : $signed(yr_30); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_92 = 64'h0 - 64'h4; // @[VCORDIC.scala 146:48]
  wire [33:0] _GEN_58 = fxyterm_30[63:30]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_31_T = {{30{_GEN_58[33]}},_GEN_58}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_31 = $signed(xr_30) + $signed(_x_31_T); // @[VCORDIC.scala 149:25]
  wire [33:0] _GEN_59 = fxxterm_30[63:30]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_31_T = {{30{_GEN_59[33]}},_GEN_59}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_31 = $signed(yr_30) - $signed(_y_31_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_31_T = _fxxterm_T_120 ? _fxthetaterm_T_92 : 64'h4; // @[VCORDIC.scala 151:39]
  wire [63:0] z_31 = $signed(zr_30) + $signed(_z_31_T); // @[VCORDIC.scala 151:25]
  wire  _fxxterm_T_124 = $signed(yr_31) < 64'sh0; // @[VCORDIC.scala 144:31]
  wire [63:0] _fxxterm_T_127 = 64'sh0 - $signed(xr_31); // @[VCORDIC.scala 144:44]
  wire [63:0] fxxterm_31 = $signed(yr_31) < 64'sh0 ? $signed(_fxxterm_T_127) : $signed(xr_31); // @[VCORDIC.scala 144:24]
  wire [63:0] _fxyterm_T_127 = 64'sh0 - $signed(yr_31); // @[VCORDIC.scala 145:44]
  wire [63:0] fxyterm_31 = _fxxterm_T_124 ? $signed(_fxyterm_T_127) : $signed(yr_31); // @[VCORDIC.scala 145:24]
  wire [63:0] _fxthetaterm_T_95 = 64'h0 - 64'h3243f6c00; // @[VCORDIC.scala 146:48]
  wire [32:0] _GEN_60 = fxyterm_31[63:31]; // @[VCORDIC.scala 149:36]
  wire [63:0] _x_32_T = {{31{_GEN_60[32]}},_GEN_60}; // @[VCORDIC.scala 149:36]
  wire [63:0] x_32 = $signed(xr_31) + $signed(_x_32_T); // @[VCORDIC.scala 149:25]
  wire [32:0] _GEN_61 = fxxterm_31[63:31]; // @[VCORDIC.scala 150:36]
  wire [63:0] _y_32_T = {{31{_GEN_61[32]}},_GEN_61}; // @[VCORDIC.scala 150:36]
  wire [63:0] y_32 = $signed(yr_31) - $signed(_y_32_T); // @[VCORDIC.scala 150:25]
  wire [63:0] _z_32_T = _fxxterm_T_124 ? _fxthetaterm_T_95 : 64'h3243f6c00; // @[VCORDIC.scala 151:39]
  wire [63:0] z_32 = $signed(zr_31) + $signed(_z_32_T); // @[VCORDIC.scala 151:25]
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
  Fixed64ToFloat32 tofloatxout ( // @[VCORDIC.scala 161:29]
    .io_in(tofloatxout_io_in),
    .io_out(tofloatxout_io_out)
  );
  Fixed64ToFloat32 tofloatyout ( // @[VCORDIC.scala 162:29]
    .io_in(tofloatyout_io_in),
    .io_out(tofloatyout_io_out)
  );
  Fixed64ToFloat32 tofloatzout ( // @[VCORDIC.scala 163:29]
    .io_in(tofloatzout_io_in),
    .io_out(tofloatzout_io_out)
  );
  assign io_out_z = tofloatzout_io_out; // @[VCORDIC.scala 172:14]
  assign tofixedx0_io_in = 32'h3f800000; // @[VCORDIC.scala 111:19]
  assign tofixedy0_io_in = io_in_y0; // @[VCORDIC.scala 112:19]
  assign tofixedz0_io_in = 32'h0; // @[VCORDIC.scala 113:19]
  assign tofloatxout_io_in = xr_32; // @[VCORDIC.scala 166:35]
  assign tofloatyout_io_in = yr_32; // @[VCORDIC.scala 167:35]
  assign tofloatzout_io_in = zr_32; // @[VCORDIC.scala 168:35]
  always @(posedge clock) begin
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_0 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_0 <= tofixedx0_io_out; // @[VCORDIC.scala 134:9]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_1 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_1 <= x_1; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_2 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_2 <= x_2; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_3 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_3 <= x_3; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_4 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_4 <= x_4; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_5 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_5 <= x_5; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_6 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_6 <= x_6; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_7 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_7 <= x_7; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_8 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_8 <= x_8; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_9 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_9 <= x_9; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_10 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_10 <= x_10; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_11 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_11 <= x_11; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_12 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_12 <= x_12; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_13 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_13 <= x_13; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_14 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_14 <= x_14; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_15 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_15 <= x_15; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_16 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_16 <= x_16; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_17 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_17 <= x_17; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_18 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_18 <= x_18; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_19 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_19 <= x_19; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_20 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_20 <= x_20; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_21 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_21 <= x_21; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_22 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_22 <= x_22; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_23 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_23 <= x_23; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_24 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_24 <= x_24; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_25 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_25 <= x_25; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_26 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_26 <= x_26; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_27 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_27 <= x_27; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_28 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_28 <= x_28; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_29 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_29 <= x_29; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_30 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_30 <= x_30; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_31 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_31 <= x_31; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 120:27]
      xr_32 <= 64'sh0; // @[VCORDIC.scala 120:27]
    end else begin
      xr_32 <= x_32; // @[VCORDIC.scala 153:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_0 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_0 <= tofixedy0_io_out; // @[VCORDIC.scala 135:9]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_1 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_1 <= y_1; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_2 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_2 <= y_2; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_3 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_3 <= y_3; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_4 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_4 <= y_4; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_5 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_5 <= y_5; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_6 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_6 <= y_6; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_7 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_7 <= y_7; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_8 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_8 <= y_8; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_9 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_9 <= y_9; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_10 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_10 <= y_10; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_11 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_11 <= y_11; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_12 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_12 <= y_12; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_13 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_13 <= y_13; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_14 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_14 <= y_14; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_15 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_15 <= y_15; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_16 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_16 <= y_16; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_17 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_17 <= y_17; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_18 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_18 <= y_18; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_19 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_19 <= y_19; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_20 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_20 <= y_20; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_21 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_21 <= y_21; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_22 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_22 <= y_22; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_23 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_23 <= y_23; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_24 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_24 <= y_24; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_25 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_25 <= y_25; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_26 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_26 <= y_26; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_27 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_27 <= y_27; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_28 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_28 <= y_28; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_29 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_29 <= y_29; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_30 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_30 <= y_30; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_31 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_31 <= y_31; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 121:27]
      yr_32 <= 64'sh0; // @[VCORDIC.scala 121:27]
    end else begin
      yr_32 <= y_32; // @[VCORDIC.scala 154:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_0 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_0 <= tofixedz0_io_out; // @[VCORDIC.scala 133:9]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_1 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_1 <= z_1; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_2 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_2 <= z_2; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_3 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_3 <= z_3; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_4 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_4 <= z_4; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_5 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_5 <= z_5; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_6 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_6 <= z_6; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_7 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_7 <= z_7; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_8 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_8 <= z_8; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_9 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_9 <= z_9; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_10 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_10 <= z_10; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_11 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_11 <= z_11; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_12 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_12 <= z_12; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_13 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_13 <= z_13; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_14 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_14 <= z_14; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_15 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_15 <= z_15; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_16 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_16 <= z_16; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_17 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_17 <= z_17; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_18 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_18 <= z_18; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_19 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_19 <= z_19; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_20 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_20 <= z_20; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_21 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_21 <= z_21; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_22 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_22 <= z_22; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_23 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_23 <= z_23; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_24 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_24 <= z_24; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_25 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_25 <= z_25; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_26 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_26 <= z_26; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_27 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_27 <= z_27; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_28 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_28 <= z_28; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_29 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_29 <= z_29; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_30 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_30 <= z_30; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_31 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_31 <= z_31; // @[VCORDIC.scala 155:17]
    end
    if (reset) begin // @[VCORDIC.scala 122:27]
      zr_32 <= 64'sh0; // @[VCORDIC.scala 122:27]
    end else begin
      zr_32 <= z_32; // @[VCORDIC.scala 155:17]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,"round = 32"); // @[VCORDIC.scala 169:11]
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
  xr_9 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  xr_10 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  xr_11 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  xr_12 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  xr_13 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  xr_14 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  xr_15 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  xr_16 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  xr_17 = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  xr_18 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  xr_19 = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  xr_20 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  xr_21 = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  xr_22 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  xr_23 = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  xr_24 = _RAND_24[63:0];
  _RAND_25 = {2{`RANDOM}};
  xr_25 = _RAND_25[63:0];
  _RAND_26 = {2{`RANDOM}};
  xr_26 = _RAND_26[63:0];
  _RAND_27 = {2{`RANDOM}};
  xr_27 = _RAND_27[63:0];
  _RAND_28 = {2{`RANDOM}};
  xr_28 = _RAND_28[63:0];
  _RAND_29 = {2{`RANDOM}};
  xr_29 = _RAND_29[63:0];
  _RAND_30 = {2{`RANDOM}};
  xr_30 = _RAND_30[63:0];
  _RAND_31 = {2{`RANDOM}};
  xr_31 = _RAND_31[63:0];
  _RAND_32 = {2{`RANDOM}};
  xr_32 = _RAND_32[63:0];
  _RAND_33 = {2{`RANDOM}};
  yr_0 = _RAND_33[63:0];
  _RAND_34 = {2{`RANDOM}};
  yr_1 = _RAND_34[63:0];
  _RAND_35 = {2{`RANDOM}};
  yr_2 = _RAND_35[63:0];
  _RAND_36 = {2{`RANDOM}};
  yr_3 = _RAND_36[63:0];
  _RAND_37 = {2{`RANDOM}};
  yr_4 = _RAND_37[63:0];
  _RAND_38 = {2{`RANDOM}};
  yr_5 = _RAND_38[63:0];
  _RAND_39 = {2{`RANDOM}};
  yr_6 = _RAND_39[63:0];
  _RAND_40 = {2{`RANDOM}};
  yr_7 = _RAND_40[63:0];
  _RAND_41 = {2{`RANDOM}};
  yr_8 = _RAND_41[63:0];
  _RAND_42 = {2{`RANDOM}};
  yr_9 = _RAND_42[63:0];
  _RAND_43 = {2{`RANDOM}};
  yr_10 = _RAND_43[63:0];
  _RAND_44 = {2{`RANDOM}};
  yr_11 = _RAND_44[63:0];
  _RAND_45 = {2{`RANDOM}};
  yr_12 = _RAND_45[63:0];
  _RAND_46 = {2{`RANDOM}};
  yr_13 = _RAND_46[63:0];
  _RAND_47 = {2{`RANDOM}};
  yr_14 = _RAND_47[63:0];
  _RAND_48 = {2{`RANDOM}};
  yr_15 = _RAND_48[63:0];
  _RAND_49 = {2{`RANDOM}};
  yr_16 = _RAND_49[63:0];
  _RAND_50 = {2{`RANDOM}};
  yr_17 = _RAND_50[63:0];
  _RAND_51 = {2{`RANDOM}};
  yr_18 = _RAND_51[63:0];
  _RAND_52 = {2{`RANDOM}};
  yr_19 = _RAND_52[63:0];
  _RAND_53 = {2{`RANDOM}};
  yr_20 = _RAND_53[63:0];
  _RAND_54 = {2{`RANDOM}};
  yr_21 = _RAND_54[63:0];
  _RAND_55 = {2{`RANDOM}};
  yr_22 = _RAND_55[63:0];
  _RAND_56 = {2{`RANDOM}};
  yr_23 = _RAND_56[63:0];
  _RAND_57 = {2{`RANDOM}};
  yr_24 = _RAND_57[63:0];
  _RAND_58 = {2{`RANDOM}};
  yr_25 = _RAND_58[63:0];
  _RAND_59 = {2{`RANDOM}};
  yr_26 = _RAND_59[63:0];
  _RAND_60 = {2{`RANDOM}};
  yr_27 = _RAND_60[63:0];
  _RAND_61 = {2{`RANDOM}};
  yr_28 = _RAND_61[63:0];
  _RAND_62 = {2{`RANDOM}};
  yr_29 = _RAND_62[63:0];
  _RAND_63 = {2{`RANDOM}};
  yr_30 = _RAND_63[63:0];
  _RAND_64 = {2{`RANDOM}};
  yr_31 = _RAND_64[63:0];
  _RAND_65 = {2{`RANDOM}};
  yr_32 = _RAND_65[63:0];
  _RAND_66 = {2{`RANDOM}};
  zr_0 = _RAND_66[63:0];
  _RAND_67 = {2{`RANDOM}};
  zr_1 = _RAND_67[63:0];
  _RAND_68 = {2{`RANDOM}};
  zr_2 = _RAND_68[63:0];
  _RAND_69 = {2{`RANDOM}};
  zr_3 = _RAND_69[63:0];
  _RAND_70 = {2{`RANDOM}};
  zr_4 = _RAND_70[63:0];
  _RAND_71 = {2{`RANDOM}};
  zr_5 = _RAND_71[63:0];
  _RAND_72 = {2{`RANDOM}};
  zr_6 = _RAND_72[63:0];
  _RAND_73 = {2{`RANDOM}};
  zr_7 = _RAND_73[63:0];
  _RAND_74 = {2{`RANDOM}};
  zr_8 = _RAND_74[63:0];
  _RAND_75 = {2{`RANDOM}};
  zr_9 = _RAND_75[63:0];
  _RAND_76 = {2{`RANDOM}};
  zr_10 = _RAND_76[63:0];
  _RAND_77 = {2{`RANDOM}};
  zr_11 = _RAND_77[63:0];
  _RAND_78 = {2{`RANDOM}};
  zr_12 = _RAND_78[63:0];
  _RAND_79 = {2{`RANDOM}};
  zr_13 = _RAND_79[63:0];
  _RAND_80 = {2{`RANDOM}};
  zr_14 = _RAND_80[63:0];
  _RAND_81 = {2{`RANDOM}};
  zr_15 = _RAND_81[63:0];
  _RAND_82 = {2{`RANDOM}};
  zr_16 = _RAND_82[63:0];
  _RAND_83 = {2{`RANDOM}};
  zr_17 = _RAND_83[63:0];
  _RAND_84 = {2{`RANDOM}};
  zr_18 = _RAND_84[63:0];
  _RAND_85 = {2{`RANDOM}};
  zr_19 = _RAND_85[63:0];
  _RAND_86 = {2{`RANDOM}};
  zr_20 = _RAND_86[63:0];
  _RAND_87 = {2{`RANDOM}};
  zr_21 = _RAND_87[63:0];
  _RAND_88 = {2{`RANDOM}};
  zr_22 = _RAND_88[63:0];
  _RAND_89 = {2{`RANDOM}};
  zr_23 = _RAND_89[63:0];
  _RAND_90 = {2{`RANDOM}};
  zr_24 = _RAND_90[63:0];
  _RAND_91 = {2{`RANDOM}};
  zr_25 = _RAND_91[63:0];
  _RAND_92 = {2{`RANDOM}};
  zr_26 = _RAND_92[63:0];
  _RAND_93 = {2{`RANDOM}};
  zr_27 = _RAND_93[63:0];
  _RAND_94 = {2{`RANDOM}};
  zr_28 = _RAND_94[63:0];
  _RAND_95 = {2{`RANDOM}};
  zr_29 = _RAND_95[63:0];
  _RAND_96 = {2{`RANDOM}};
  zr_30 = _RAND_96[63:0];
  _RAND_97 = {2{`RANDOM}};
  zr_31 = _RAND_97[63:0];
  _RAND_98 = {2{`RANDOM}};
  zr_32 = _RAND_98[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
