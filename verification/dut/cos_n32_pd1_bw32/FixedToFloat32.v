module FixedToFloat32(
  input  [31:0] io_in,
  output [31:0] io_out
);
  wire [31:0] clz32_io_in; // @[FixedPoint.scala 117:21]
  wire [4:0] clz32_io_out; // @[FixedPoint.scala 117:21]
  wire [31:0] _data_T_2 = ~io_in; // @[FixedPoint.scala 114:35]
  wire [31:0] _data_T_4 = _data_T_2 + 32'h1; // @[FixedPoint.scala 114:50]
  wire [4:0] _leadingzeros_T = clz32_io_out; // @[FixedPoint.scala 120:47]
  wire [18:0] leadingzeros = {14'h0,_leadingzeros_T}; // @[FixedPoint.scala 120:32]
  wire [3:0] _exp_T_2 = 4'sh4 - 4'sh1; // @[FixedPoint.scala 122:16]
  wire [18:0] _exp_T_3 = {14'h0,_leadingzeros_T}; // @[FixedPoint.scala 122:38]
  wire [18:0] _GEN_0 = {{15{_exp_T_2[3]}},_exp_T_2}; // @[FixedPoint.scala 122:23]
  wire [18:0] _exp_T_6 = $signed(_GEN_0) - $signed(_exp_T_3); // @[FixedPoint.scala 122:23]
  wire [18:0] _exp_T_9 = $signed(_exp_T_6) + 19'sh7f; // @[FixedPoint.scala 122:46]
  wire [31:0] _frac_T = io_in[31] ? _data_T_4 : io_in; // @[FixedPoint.scala 123:19]
  wire [18:0] _frac_T_2 = leadingzeros + 19'h1; // @[FixedPoint.scala 123:43]
  wire [524318:0] _GEN_3 = {{524287{_frac_T[31]}},_frac_T}; // @[FixedPoint.scala 123:26]
  wire [524318:0] _frac_T_3 = $signed(_GEN_3) << _frac_T_2; // @[FixedPoint.scala 123:26]
  wire [5:0] _frac_T_5 = 6'h20 - 6'h17; // @[FixedPoint.scala 123:75]
  wire [524318:0] _frac_T_6 = $signed(_frac_T_3) >>> _frac_T_5; // @[FixedPoint.scala 123:66]
  wire [7:0] _io_out_T_1 = _exp_T_9[7:0]; // @[FixedPoint.scala 125:30]
  wire [8:0] _io_out_T_2 = {io_in[31],_io_out_T_1}; // @[FixedPoint.scala 125:23]
  wire [22:0] _io_out_T_3 = _frac_T_6[22:0]; // @[FixedPoint.scala 125:44]
  CLZ32 clz32 ( // @[FixedPoint.scala 117:21]
    .io_in(clz32_io_in),
    .io_out(clz32_io_out)
  );
  assign io_out = {_io_out_T_2,_io_out_T_3}; // @[FixedPoint.scala 125:37]
  assign clz32_io_in = io_in[31] ? _data_T_4 : io_in; // @[FixedPoint.scala 114:14]
endmodule
