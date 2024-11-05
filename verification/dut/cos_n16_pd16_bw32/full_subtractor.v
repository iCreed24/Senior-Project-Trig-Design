module full_subtractor(
  input  [7:0] io_in_a,
  input  [7:0] io_in_b,
  output [7:0] io_out_s,
  output       io_out_c
);
  wire [8:0] _result_T = io_in_a - io_in_b; // @[BinaryDesigns2.scala 140:23]
  wire [9:0] _result_T_2 = _result_T - 9'h0; // @[BinaryDesigns2.scala 140:34]
  wire [8:0] result = _result_T_2[8:0]; // @[BinaryDesigns2.scala 139:22 140:12]
  assign io_out_s = result[7:0]; // @[BinaryDesigns2.scala 141:23]
  assign io_out_c = result[8]; // @[BinaryDesigns2.scala 142:23]
endmodule
