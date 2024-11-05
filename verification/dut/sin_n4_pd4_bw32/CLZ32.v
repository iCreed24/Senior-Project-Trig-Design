module CLZ32(
  input  [31:0] io_in,
  output [4:0]  io_out
);
  wire [31:0] _bx_T = io_in & 32'hffff0000; // @[FixedPoint.scala 59:21]
  wire  _bx_T_1 = _bx_T == 32'h0; // @[FixedPoint.scala 59:38]
  wire [47:0] _bx_T_2 = {io_in, 16'h0}; // @[FixedPoint.scala 59:50]
  wire [47:0] bx = _bx_T == 32'h0 ? _bx_T_2 : {{16'd0}, io_in}; // @[FixedPoint.scala 59:16]
  wire [47:0] _cx_T = bx & 48'hff000000; // @[FixedPoint.scala 60:21]
  wire  _cx_T_1 = _cx_T == 48'h0; // @[FixedPoint.scala 60:38]
  wire [55:0] _cx_T_2 = {bx, 8'h0}; // @[FixedPoint.scala 60:50]
  wire [55:0] cx = _cx_T == 48'h0 ? _cx_T_2 : {{8'd0}, bx}; // @[FixedPoint.scala 60:16]
  wire [55:0] _dx_T = cx & 56'hf0000000; // @[FixedPoint.scala 61:21]
  wire  _dx_T_1 = _dx_T == 56'h0; // @[FixedPoint.scala 61:38]
  wire [59:0] _dx_T_2 = {cx, 4'h0}; // @[FixedPoint.scala 61:50]
  wire [59:0] dx = _dx_T == 56'h0 ? _dx_T_2 : {{4'd0}, cx}; // @[FixedPoint.scala 61:16]
  wire [59:0] _ex_T = dx & 60'hc0000000; // @[FixedPoint.scala 62:21]
  wire  _ex_T_1 = _ex_T == 60'h0; // @[FixedPoint.scala 62:38]
  wire [61:0] _ex_T_2 = {dx, 2'h0}; // @[FixedPoint.scala 62:50]
  wire [61:0] ex = _ex_T == 60'h0 ? _ex_T_2 : {{2'd0}, dx}; // @[FixedPoint.scala 62:16]
  wire [3:0] _io_out_T_10 = {_bx_T_1,_cx_T_1,_dx_T_1,_ex_T_1}; // @[FixedPoint.scala 64:112]
  wire [61:0] _io_out_T_11 = ex & 62'h80000000; // @[FixedPoint.scala 65:44]
  assign io_out = {_io_out_T_10,_io_out_T_11 == 62'h0}; // @[FixedPoint.scala 65:36]
endmodule
