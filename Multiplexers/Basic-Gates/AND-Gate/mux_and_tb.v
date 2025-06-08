`timescale 1ns/1ps
module and_tb;
  reg a;
  reg b;
  wire y;
  
  and_gate uut(
    .a(a),
    .b(b),
    .y(y)
  );
  
  initial begin
      $dumpfile("wave.vcd");
    $dumpvars(0, and_tb);
  end
  
  integer i;
  
  initial begin
    for(i=0;i<4;i=i+1) begin
    {a,b} = i;
      #10;
  end 
    
  end 
  endmodule 