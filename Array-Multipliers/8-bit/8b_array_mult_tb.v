`timescale 1ns/1ps
module array_multiplier_8x8_tb;

reg [7:0] a, b;
wire [15:0] product;

array_multiplier_8x8 uut (
  .a(a),
  .b(b),
  .product(product)
);

initial begin
  $dumpfile("wave.vcd");
  $dumpvars(0, array_multiplier_8x8_tb);

  a = 8'd3;    b = 8'd2;     #10;
  a = 8'd15;   b = 8'd15;    #10;
  a = 8'd128;  b = 8'd2;     #10;
  a = 8'd0;    b = 8'd100;   #10;
  a = 8'd255;  b = 8'd1;     #10;

  $finish;
end

endmodule