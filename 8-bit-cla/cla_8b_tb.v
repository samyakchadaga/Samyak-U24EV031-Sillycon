`timescale 1ns/1ps
module cla8_tb;
  reg [7:0] a;
  reg [7:0] b;
  reg cin;
  wire [7:0] sum;
  wire cout;

  cla8 uut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
  );

  initial begin
    $dumpfile("cla8.vcd");
    $dumpvars(0, cla8_tb);

    a = 8'b00000000; b = 8'b00000000; cin = 0;
    #10;
    a = 8'b00001111; b = 8'b00000001; cin = 0;
    #10;
    a = 8'b11110000; b = 8'b00001111; cin = 1;
    #10;
    a = 8'b10101010; b = 8'b01010101; cin = 0;
    #10;
    a = 8'b11111111; b = 8'b00000001; cin = 1;
    #10;

    $finish;
  end
endmodule
