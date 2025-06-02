module half_adder_beh(input a, b, output reg sum, carry);
  always @(*) begin
    sum = a ^ b;
    carry = a & b;
  end
endmodule
