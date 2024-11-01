module Atan(
  input         clock,
  input         reset,
  input  [31:0] io_in,
  output [31:0] io_out
);
  wire  vcordic_clock; // @[Atan.scala 28:31]
  wire  vcordic_reset; // @[Atan.scala 28:31]
  wire [31:0] vcordic_io_in_y0; // @[Atan.scala 28:31]
  wire [31:0] vcordic_io_out_z; // @[Atan.scala 28:31]
  wire  inputsign = io_in[31]; // @[Atan.scala 26:32]
  wire [31:0] _vcordic_io_in_y0_T = {1'h0,io_in[30:0]}; // @[Atan.scala 31:36]
  wire [31:0] _vcordic_io_in_y0_T_2 = {inputsign,31'h4b189680}; // @[Atan.scala 31:71]
  wire [31:0] _vcordic_io_in_y0_T_5 = {inputsign,31'h322bcc77}; // @[Atan.scala 32:54]
  wire [31:0] _vcordic_io_in_y0_T_6 = $signed(_vcordic_io_in_y0_T) <= 32'sh322bcc77 ? _vcordic_io_in_y0_T_5 : io_in; // @[Atan.scala 32:8]
  VCORDIC vcordic ( // @[Atan.scala 28:31]
    .clock(vcordic_clock),
    .reset(vcordic_reset),
    .io_in_y0(vcordic_io_in_y0),
    .io_out_z(vcordic_io_out_z)
  );
  assign io_out = vcordic_io_out_z; // @[Atan.scala 36:10]
  assign vcordic_clock = clock;
  assign vcordic_reset = reset;
  assign vcordic_io_in_y0 = $signed(_vcordic_io_in_y0_T) > 32'sh4b189680 ? _vcordic_io_in_y0_T_2 : _vcordic_io_in_y0_T_6
    ; // @[Atan.scala 31:26]
endmodule
