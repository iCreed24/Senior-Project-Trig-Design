module Fixed64ToFloat32(
  input  [63:0] io_in,
  output [31:0] io_out
);
  wire [63:0] clz64_io_in; // @[FixedPoint.scala 144:21]
  wire [5:0] clz64_io_out; // @[FixedPoint.scala 144:21]
  wire [63:0] _data_T_2 = ~io_in; // @[FixedPoint.scala 141:35]
  wire [63:0] _data_T_4 = _data_T_2 + 64'h1; // @[FixedPoint.scala 141:50]
  wire [5:0] _leadingzeros_T = clz64_io_out; // @[FixedPoint.scala 147:47]
  wire [18:0] leadingzeros = {13'h0,_leadingzeros_T}; // @[FixedPoint.scala 147:32]
  wire [6:0] _exp_T_2 = 7'sh20 - 7'sh1; // @[FixedPoint.scala 149:17]
  wire [18:0] _exp_T_3 = {13'h0,_leadingzeros_T}; // @[FixedPoint.scala 149:39]
  wire [18:0] _GEN_0 = {{12{_exp_T_2[6]}},_exp_T_2}; // @[FixedPoint.scala 149:24]
  wire [18:0] _exp_T_6 = $signed(_GEN_0) - $signed(_exp_T_3); // @[FixedPoint.scala 149:24]
  wire [18:0] _exp_T_9 = $signed(_exp_T_6) + 19'sh7f; // @[FixedPoint.scala 149:47]
  wire [63:0] _frac_T = io_in[63] ? _data_T_4 : io_in; // @[FixedPoint.scala 150:19]
  wire [18:0] _frac_T_2 = leadingzeros + 19'h1; // @[FixedPoint.scala 150:43]
  wire [524350:0] _GEN_3 = {{524287{_frac_T[63]}},_frac_T}; // @[FixedPoint.scala 150:26]
  wire [524350:0] _frac_T_3 = $signed(_GEN_3) << _frac_T_2; // @[FixedPoint.scala 150:26]
  wire [6:0] _frac_T_5 = 7'h40 - 7'h17; // @[FixedPoint.scala 150:75]
  wire [524350:0] _frac_T_6 = $signed(_frac_T_3) >>> _frac_T_5; // @[FixedPoint.scala 150:66]
  wire [7:0] _io_out_T_1 = _exp_T_9[7:0]; // @[FixedPoint.scala 152:30]
  wire [8:0] _io_out_T_2 = {io_in[63],_io_out_T_1}; // @[FixedPoint.scala 152:23]
  wire [63:0] frac = _frac_T_6[63:0]; // @[FixedPoint.scala 138:18 150:8]
  CLZ64 clz64 ( // @[FixedPoint.scala 144:21]
    .io_in(clz64_io_in),
    .io_out(clz64_io_out)
  );
  assign io_out = {_io_out_T_2,frac[22:0]}; // @[FixedPoint.scala 152:37]
  assign clz64_io_in = io_in[63] ? _data_T_4 : io_in; // @[FixedPoint.scala 141:14]
endmodule
