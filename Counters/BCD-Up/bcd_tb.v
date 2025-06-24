`timescale 1ns / 1ps

module bcd_tb;
  reg i_t;
  reg i_clk;
  wire [3:0]i_q;
  
  bcd_rtl uut(
  .i_t(i_t),
  .i_clk(i_clk),
  .i_q(i_q)
  );
  
  always #5 i_clk = ~i_clk;
  
  initial begin
  
  i_clk = 0;
  i_t = 1;
  #100
  $finish;
  end 
endmodule
