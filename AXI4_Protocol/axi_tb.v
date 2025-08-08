`timescale 1ns / 1ps

module axi_tb;
  reg [31:0]IN_DATA;
  reg ACLK;
  reg ARSTN;
  wire [31:0]OUT_DATA;
  
  axi_rtl uut(
   .IN_DATA(IN_DATA),
   .ACLK(ACLK),
   .ARSTN(ARSTN),
   .OUT_DATA(OUT_DATA)
   );
   initial begin 
   ACLK =0;
   end 
   
   always #5 ACLK = ~ACLK;
   
   initial begin
   
   ARSTN = 0;
   IN_DATA = 32'h0000000A;
   #10;
   
   ARSTN = 1;
   IN_DATA = 32'hDEADBEEF;
   #10;
   
    ARSTN = 1;
   IN_DATA = 32'h12345678;
   #10;
   
   #40;
   $finish;
   
   end 
endmodule
