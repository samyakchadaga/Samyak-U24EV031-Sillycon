`timescale 1ns/1ps
module encoder_tb;
  reg enb,[3:0] i;
  wire a,b;
  
  encoder uut(
    .i(i),
    .a(a),
    .b(b),
	.enb(enb)
  );
  
    initial begin
  $dumpfile("wave.vcd");  
  $dumpvars(0, encoder_tb); 
end

  integer m,n;
  
  initial begin 
  enb=1;
   
    for(m=0;m<4;m=m+1) begin
        for(n=0;n<4;n=n+1) //loop to make all i 0
          i[n]=0;
      
      i[m]=1;
      #10;
    
    end 
    
  end 
endmodule