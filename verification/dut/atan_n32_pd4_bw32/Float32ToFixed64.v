module Float32ToFixed64(
  input  [31:0] io_in,
  output [63:0] io_out
);
  wire [31:0] frac = {9'h0,io_in[22:0]}; // @[FixedPoint.scala 34:42]
  wire [7:0] exp = io_in[30:23]; // @[FixedPoint.scala 35:25]
  wire  sign = io_in[31]; // @[FixedPoint.scala 36:26]
  wire [7:0] shiftamt = exp - 8'h7f; // @[FixedPoint.scala 37:37]
  wire [63:0] _GEN_0 = {{32'd0}, frac}; // @[FixedPoint.scala 40:18]
  wire [63:0] _data_T_3 = _GEN_0 | 64'h800000; // @[FixedPoint.scala 40:18]
  wire [72:0] _GEN_1 = {_data_T_3, 9'h0}; // @[FixedPoint.scala 40:49]
  wire [78:0] _data_T_4 = {{6'd0}, _GEN_1}; // @[FixedPoint.scala 40:49]
  wire [7:0] _data_T_8 = 8'sh0 - $signed(shiftamt); // @[FixedPoint.scala 40:72]
  wire [78:0] _data_T_9 = _data_T_4 >> _data_T_8; // @[FixedPoint.scala 40:57]
  wire [7:0] _data_T_13 = exp - 8'h7f; // @[FixedPoint.scala 41:71]
  wire [333:0] _GEN_2 = {{255'd0}, _data_T_4}; // @[FixedPoint.scala 41:57]
  wire [333:0] _data_T_14 = _GEN_2 << _data_T_13; // @[FixedPoint.scala 41:57]
  wire [333:0] data = shiftamt[7] ? {{255'd0}, _data_T_9} : _data_T_14; // @[FixedPoint.scala 39:17]
  wire [333:0] _io_out_T_3 = 334'h0 - data; // @[FixedPoint.scala 42:40]
  wire [333:0] _io_out_T_4 = sign ? _io_out_T_3 : data; // @[FixedPoint.scala 42:16]
  assign io_out = _io_out_T_4[63:0]; // @[FixedPoint.scala 42:10]
endmodule
