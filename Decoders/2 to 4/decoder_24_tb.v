`timescale 1ns/1ps
module decoder_tb;
   reg a;
   reg b;
   reg enb;
   wire i0;
   wire i1;
   wire i2;
   wire i3;
  
  
  decoder uut (
    .a(a),
    .b(b),
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
	.enb(enb)
  );
  
  initial begin
  $dumpfile("wave.vcd");  
  $dumpvars(0,decoder_tb); 
end

    integer i;

  initial begin
  enb=1;
    for (i = 0; i < 4; i = i + 1) begin
      {a, b} = i; 
      #10;
    end
  end

  
  endmodule