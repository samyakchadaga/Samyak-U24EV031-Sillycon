`timescale 1ns/1ps
module decoder_tb;
  reg a;
  reg b;
  reg c;
  reg enb;
  wire [7:0] i;
  
  decoder uut(
    .a(a),
    .b(b),
    .c(c),
    .i(i),
	.enb(enb)
  );
  
    initial begin
  $dumpfile("wave.vcd");  
  $dumpvars(0, decoder_tb); 
end

  integer k;
  initial begin 
  enb=1;
    for (k = 0; k < 8; k = k + 1) begin
      {a, b,c} = k; 
      #10;
    end
    
  end 
endmodule