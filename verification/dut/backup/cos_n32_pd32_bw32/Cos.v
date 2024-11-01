module Cos(
  input         clock,
  input         reset,
  input  [31:0] io_in,
  output [31:0] io_out
);
  wire  reducer_clock; // @[Cos.scala 22:31]
  wire  reducer_reset; // @[Cos.scala 22:31]
  wire [31:0] reducer_io_in; // @[Cos.scala 22:31]
  wire [31:0] reducer_io_out; // @[Cos.scala 22:31]
  wire [31:0] tofixedz0_io_in; // @[Cos.scala 30:33]
  wire [31:0] tofixedz0_io_out; // @[Cos.scala 30:33]
  wire  cordic_clock; // @[Cos.scala 35:30]
  wire  cordic_reset; // @[Cos.scala 35:30]
  wire [31:0] cordic_io_in_z0; // @[Cos.scala 35:30]
  wire [31:0] cordic_io_in_mode; // @[Cos.scala 35:30]
  wire [31:0] cordic_io_out_x; // @[Cos.scala 35:30]
  wire [1:0] cordic_io_out_mode; // @[Cos.scala 35:30]
  wire [31:0] _theta_T_5 = $signed(tofixedz0_io_out) + 32'sh6487ed80; // @[Cos.scala 39:82]
  wire [31:0] theta = $signed(tofixedz0_io_out) < 32'sh0 ? $signed(_theta_T_5) : $signed(tofixedz0_io_out); // @[Cos.scala 39:26]
  wire [31:0] _cordic_io_in_z0_T_3 = $signed(theta) - 32'sh6487ed80; // @[Cos.scala 44:41]
  wire  _T_3 = $signed(theta) >= 32'sh1921fb60 & $signed(theta) < 32'sh4b65f200; // @[Cos.scala 45:34]
  wire [31:0] _cordic_io_in_z0_T_7 = 32'sh3243f6c0 - $signed(theta); // @[Cos.scala 47:37]
  wire [31:0] _cordic_io_in_z0_T_8 = $signed(tofixedz0_io_out) < 32'sh0 ? $signed(_theta_T_5) : $signed(tofixedz0_io_out
    ); // @[Cos.scala 49:30]
  wire [31:0] _GEN_1 = $signed(theta) >= 32'sh1921fb60 & $signed(theta) < 32'sh4b65f200 ? _cordic_io_in_z0_T_7 :
    _cordic_io_in_z0_T_8; // @[Cos.scala 45:63 47:21 49:21]
  wire [1:0] _GEN_2 = $signed(theta) >= 32'sh4b65f200 ? 2'h2 : {{1'd0}, _T_3}; // @[Cos.scala 42:35 43:23]
  wire  _io_out_T_1 = ~cordic_io_out_x[31]; // @[Cos.scala 56:15]
  wire [31:0] _io_out_T_3 = {_io_out_T_1,cordic_io_out_x[30:0]}; // @[Cos.scala 56:36]
  wire [31:0] _GEN_4 = cordic_io_out_mode == 2'h1 ? _io_out_T_3 : cordic_io_out_x; // @[Cos.scala 55:31 56:12 58:12]
  TrigRangeReducer reducer ( // @[Cos.scala 22:31]
    .clock(reducer_clock),
    .reset(reducer_reset),
    .io_in(reducer_io_in),
    .io_out(reducer_io_out)
  );
  FloatToFixed32 tofixedz0 ( // @[Cos.scala 30:33]
    .io_in(tofixedz0_io_in),
    .io_out(tofixedz0_io_out)
  );
  CORDIC cordic ( // @[Cos.scala 35:30]
    .clock(cordic_clock),
    .reset(cordic_reset),
    .io_in_z0(cordic_io_in_z0),
    .io_in_mode(cordic_io_in_mode),
    .io_out_x(cordic_io_out_x),
    .io_out_mode(cordic_io_out_mode)
  );
  assign io_out = cordic_io_out_mode == 2'h2 ? cordic_io_out_x : _GEN_4; // @[Cos.scala 53:25 54:12]
  assign reducer_clock = clock;
  assign reducer_reset = reset;
  assign reducer_io_in = io_in; // @[Cos.scala 31:17]
  assign tofixedz0_io_in = reducer_io_out; // @[Cos.scala 32:19]
  assign cordic_clock = clock;
  assign cordic_reset = reset;
  assign cordic_io_in_z0 = $signed(theta) >= 32'sh4b65f200 ? _cordic_io_in_z0_T_3 : _GEN_1; // @[Cos.scala 42:35 44:21]
  assign cordic_io_in_mode = {{30'd0}, _GEN_2};
endmodule
