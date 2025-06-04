// Code your testbench here
// or browse Examples
`timescale 1ns/1ps
module csla32_tb;
  reg [31:0] a;
  reg [31:0] b;
  reg cin;
  wire [31:0] sum;
  wire cout;

  csla32 uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
  );

  initial begin
    // Test 1
    a = 32'b00000000000000000000000000000000;
    b = 32'b00000000000000000000000000000000;
    cin = 0;
    #10;
    $display("A = %bB = %bCin = %bSum = %bCout = %b\n", a, b, cin, sum, cout);

    // Test 2
    a = 32'b00000000000000001111111111111111;
    b = 32'b00000000000000000000000000000001;
    cin = 0;
    #10;
    $display("A = %b B = %b Cin = %b Sum = %b Cout = %b\n", a, b, cin, sum, cout);

    // Test 3
    a = 32'b11111111111111111111111111111111;
    b = 32'b00000000000000000000000000000001;
    cin = 1;
    #10;
    $display("A = %b B = %b Cin = %b Sum = %b Cout = %b\n", a, b, cin, sum, cout);

    // Test 4
    a = 32'b10101010101010101010101010101010;
    b = 32'b01010101010101010101010101010101;
    cin = 0;
    #10;
    $display("A = %b B = %bCin = %bSum = %bCout = %b\n", a, b, cin, sum, cout);

    // Test 5
    a = 32'b00010010001101000101011001111000;
    b = 32'b10000111011001000101001000000001;
    cin = 1;
    #10;
    $display("A = %b B = %b Cin = %bSum = %bCout = %b\n", a, b, cin, sum, cout);

    $finish;
  end
endmodule