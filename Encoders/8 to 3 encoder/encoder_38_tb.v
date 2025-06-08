`timescale 1ns/1ps
module encoder_tb;
  reg [7:0] i;
  wire a,b,c;
  
  encoder uut(
    .i(i),
    .a(a),
    .b(b),
    .c(c)
  );
  
    initial begin
  $dumpfile("wave.vcd");  
  $dumpvars(0, encoder_tb); 
end

  integer m,n;
  
  initial begin 
   
    for(m=0;m<8;m=m+1) begin
      for(n=0;n<8;n=n+1) //loop to make all i as 0
          i[n]=0;
      
      i[m]=1;
      #10;
    
    end 
    
  end 
endmodule