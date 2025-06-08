`timescale 1ns/1ps
module demux_tb;

  reg a;
  reg sel;
  wire d0;
  wire d1;

  demux uut (
    .a(a),
    .sel(sel),
    .d0(d0),
    .d1(d1)
  );

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, demux_tb);
  end

  integer i;

  initial begin
    for (i = 0; i < 4; i = i + 1) begin
      {sel, a} = i;
      #10;
    end
    $finish;
  end

endmodule