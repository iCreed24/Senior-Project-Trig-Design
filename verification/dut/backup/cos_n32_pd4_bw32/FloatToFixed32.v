module FloatToFixed32(
  input  [31:0] io_in,
  output [31:0] io_out
);
  wire [31:0] frac = {9'h0,io_in[22:0]}; // @[FixedPoint.scala 17:42]
  wire [7:0] exp = io_in[30:23]; // @[FixedPoint.scala 18:25]
  wire  sign = io_in[31]; // @[FixedPoint.scala 19:26]
  wire [7:0] shiftamt = exp - 8'h7f; // @[FixedPoint.scala 20:37]
  wire [31:0] _data_T_3 = frac | 32'h800000; // @[FixedPoint.scala 23:18]
  wire [36:0] _GEN_0 = {_data_T_3, 5'h0}; // @[FixedPoint.scala 23:40]
  wire [38:0] _data_T_4 = {{2'd0}, _GEN_0}; // @[FixedPoint.scala 23:40]
  wire [7:0] _data_T_8 = 8'sh0 - $signed(shiftamt); // @[FixedPoint.scala 23:63]
  wire [38:0] _data_T_9 = _data_T_4 >> _data_T_8; // @[FixedPoint.scala 23:48]
  wire [7:0] _data_T_13 = exp - 8'h7f; // @[FixedPoint.scala 24:62]
  wire [293:0] _GEN_1 = {{255'd0}, _data_T_4}; // @[FixedPoint.scala 24:48]
  wire [293:0] _data_T_14 = _GEN_1 << _data_T_13; // @[FixedPoint.scala 24:48]
  wire [293:0] data = shiftamt[7] ? {{255'd0}, _data_T_9} : _data_T_14; // @[FixedPoint.scala 22:17]
  wire [293:0] _io_out_T_3 = 294'h0 - data; // @[FixedPoint.scala 25:40]
  wire [293:0] _io_out_T_4 = sign ? _io_out_T_3 : data; // @[FixedPoint.scala 25:16]
  assign io_out = _io_out_T_4[31:0]; // @[FixedPoint.scala 25:10]
endmodule
