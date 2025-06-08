
`timescale 1ns/1ps
module gray_encoder_tb;
  reg [3:0] bin;
  wire [3:0] g;
  
  gray_encoder uut(
    .bin(bin),
    .g(g)
  );
  
    initial begin
      $dumpfile("wave.vcd");
      $dumpvars(0, gray_encoder_tb);
  end
  
  integer m,n;
  
    initial begin
      for(m=0;m<16;m=m+1) begin

        bin = m; 
      #10;
    end 
  end 
endmodule 