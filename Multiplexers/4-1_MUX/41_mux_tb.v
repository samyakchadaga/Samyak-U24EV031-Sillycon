`timescale 1ns/1ps
module mux_41_tb;

  reg w, x, y, z;
  reg s0, s1;
  wire out;

 
  mux_41 uut (
    .w(w),
    .x(x),
    .y(y),
    .z(z),
    .s0(s0),
    .s1(s1),
    .out(out)
  );

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, mux_41_tb);
  end

  integer i;
  initial begin
    for (i = 0; i < 64; i = i + 1) begin
      {s1, s0, w, x, y, z} = i[5:0];
      #10;
    end
    
  end

endmodule