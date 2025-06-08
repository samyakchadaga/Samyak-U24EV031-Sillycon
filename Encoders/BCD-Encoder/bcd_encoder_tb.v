`timescale 1ns/1ps
module bcd_encoder_tb;
  reg [9:0] D;
  wire [3:0] A;
  
  bcd_encoder uut(
    .A(A),
    .D(D)
  );
  
  initial begin
      $dumpfile("wave.vcd");
    $dumpvars(0, bcd_encoder_tb);
  end
    
integer m,n;
  
  initial begin
    for(m=0;m<10;m=m+1) begin
      for(n=0;n<10;n=n+1) begin //loop to make all i as 0
          D[n]=0;
      end 
      D[m]=1; 
      #10;
    end 
  end 
endmodule 