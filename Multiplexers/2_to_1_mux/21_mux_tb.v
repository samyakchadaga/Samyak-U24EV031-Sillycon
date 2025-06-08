`timescale 1ns/1ps
module mux_tb;
  reg a,b,s,enb;
  wire o;
  
  mux uut(
    .a(a),
    .b(b),
    .s(s),
    .o(o),
	.enb(enb)
  );
  
  initial begin
      $dumpfile("wave.vcd");
    $dumpvars(0, mux_tb);
  end
    
       integer m,n;
  
  initial begin 
    enb=1;
    for(m=0;m<2;m=m+1)begin
      a=0;
      b=0;
      s = m;
      for(n=0;n<4;n=n+1) begin
        {a,b}= n;
          #10;
      end 
  end
  enb=0;
  #10;
  end 
  
endmodule