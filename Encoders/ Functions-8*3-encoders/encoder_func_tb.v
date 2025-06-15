`timescale 1ns/1ps
module encoder_tb;

reg [7:0] i;
wire a,b,c;

encoder uut(i,a,b,c);

initial begin
  $dumpfile("wave.vcd");
  $dumpvars(0, encoder_tb);
end

integer k;

initial begin
  i = 8'b00000000;
  for(k = 0; k < 8; k = k + 1) begin
    i = 8'b00000001 << k;
    #10;
  end
  $finish;
end

endmodule