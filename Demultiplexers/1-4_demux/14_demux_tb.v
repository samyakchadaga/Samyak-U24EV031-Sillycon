`timescale 1ns/1ps
module demux_tb;

  reg din;
  reg [1:0] sel;
  wire d0, d1, d2, d3;

  demux uut (
    .din(din),
    .sel(sel),
    .d0(d0),
    .d1(d1),
    .d2(d2),
    .d3(d3)
  );

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, demux_tb);
  end

  integer i;

  initial begin
    for (i = 0; i < 8; i = i + 1) begin
      din = i[0];
      sel = i[2:1];
      #10;
    end
    $finish;
  end

endmodule