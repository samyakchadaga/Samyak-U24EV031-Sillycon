`timescale 1ns/1ps
module xor_tb;
  reg a;
  reg b;
  wire y;
  
  xor_gate uut(
    .a(a),
    .b(b),
    .y(y)
  );
  
  initial begin
      $dumpfile("wave.vcd");
    $dumpvars(0, xor_tb);
  end
  
  integer i;
  
  initial begin
    for(i=0;i<4;i=i+1) begin
    {a,b} = i;
      #10;
  end 
    
  end 
  endmodule 