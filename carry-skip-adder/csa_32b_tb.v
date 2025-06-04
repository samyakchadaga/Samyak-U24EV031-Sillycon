`timescale 1ns/1ps
module csa32_tb;
  reg [31:0] a;
  reg [31:0] b;
  reg cin;
  wire [31:0] sum;
  wire cout;

  csa32 uut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
  );

  initial begin
    
    a = 32'b00000000000000000000000000000000;
    b = 32'b00000000000000000000000000000000;
    cin = 0;
    #10; $display("a=%h b=%h cin=%b => sum=%h cout=%b", a, b, cin, sum, cout);


    a = 32'b00000000000000001111111111111111;
    b = 32'b00000000000000000000000000000001;
    cin = 0;
    #10; $display("a=%h b=%h cin=%b => sum=%h cout=%b", a, b, cin, sum, cout);


    a = 32'b11111111111111111111111111111111;
    b = 32'b00000000000000000000000000000001;
    cin = 1;
    #10; $display("a=%h b=%h cin=%b => sum=%h cout=%b", a, b, cin, sum, cout);


    a = 32'b10101010101010101010101010101010;
    b = 32'b01010101010101010101010101010101;
    cin = 0;
    #10; $display("a=%h b=%h cin=%b => sum=%h cout=%b", a, b, cin, sum, cout);


    a = 32'b00010010001101000101011001111000;
    b = 32'b10000111011001000101001000000001;
    cin = 1;
    #10; $display("a=%h b=%h cin=%b => sum=%h cout=%b", a, b, cin, sum, cout);


    $finish;
  end
endmodule
