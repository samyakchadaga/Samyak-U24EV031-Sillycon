`timescale 1ns/1ps
module array_multiplier_16x16_tb;

reg [15:0] a, b;
wire [31:0] product;

array_multiplier_16x16 uut (
  .a(a),
  .b(b),
  .product(product)
);

initial begin
  $dumpfile("wave.vcd");
  $dumpvars(0, array_multiplier_16x16_tb);

  a = 16'd1;     b = 16'd2;      #10;
  a = 16'd12;    b = 16'd10;     #10;
  a = 16'd255;   b = 16'd255;    #10;
  a = 16'd5000;  b = 16'd4;      #10;
  a = 16'd65535; b = 16'd1;      #10;

  $finish;
end

endmodule
