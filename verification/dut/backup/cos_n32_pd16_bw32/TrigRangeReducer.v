module TrigRangeReducer(
  input         clock,
  input         reset,
  input  [31:0] io_in,
  output [31:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  divider_clock; // @[TrigRangeReducer.scala 23:23]
  wire  divider_reset; // @[TrigRangeReducer.scala 23:23]
  wire [31:0] divider_io_in_a; // @[TrigRangeReducer.scala 23:23]
  wire [31:0] divider_io_out_s; // @[TrigRangeReducer.scala 23:23]
  wire [31:0] extractor_io_in_a; // @[TrigRangeReducer.scala 24:25]
  wire [31:0] extractor_io_out_frac; // @[TrigRangeReducer.scala 24:25]
  wire  mul_clock; // @[TrigRangeReducer.scala 25:19]
  wire  mul_reset; // @[TrigRangeReducer.scala 25:19]
  wire [31:0] mul_io_in_a; // @[TrigRangeReducer.scala 25:19]
  wire [31:0] mul_io_out_s; // @[TrigRangeReducer.scala 25:19]
  reg [31:0] reg1; // @[TrigRangeReducer.scala 32:17]
  FP_divider_bw32 divider ( // @[TrigRangeReducer.scala 23:23]
    .clock(divider_clock),
    .reset(divider_reset),
    .io_in_a(divider_io_in_a),
    .io_out_s(divider_io_out_s)
  );
  FP_extract extractor ( // @[TrigRangeReducer.scala 24:25]
    .io_in_a(extractor_io_in_a),
    .io_out_frac(extractor_io_out_frac)
  );
  FP_multiplier_bw32 mul ( // @[TrigRangeReducer.scala 25:19]
    .clock(mul_clock),
    .reset(mul_reset),
    .io_in_a(mul_io_in_a),
    .io_out_s(mul_io_out_s)
  );
  assign io_out = mul_io_out_s; // @[TrigRangeReducer.scala 44:10]
  assign divider_clock = clock;
  assign divider_reset = reset;
  assign divider_io_in_a = io_in; // @[TrigRangeReducer.scala 29:19]
  assign extractor_io_in_a = reg1; // @[TrigRangeReducer.scala 36:21]
  assign mul_clock = clock;
  assign mul_reset = reset;
  assign mul_io_in_a = extractor_io_out_frac; // @[TrigRangeReducer.scala 42:15]
  always @(posedge clock) begin
    reg1 <= divider_io_out_s; // @[TrigRangeReducer.scala 34:8]
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
  _RAND_0 = {1{`RANDOM}};
  reg1 = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
