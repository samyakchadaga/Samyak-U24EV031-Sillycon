module xor_gate(input a, b, output y);
  assign y = a ^ b;
endmodule

module and_gate(input a, b, output y);
  assign y = a & b;
endmodule

module half_adder_struct(input a, b, output sum, carry);
  xor_gate x1 (.a(a), .b(b), .y(sum));
  and_gate a1 (.a(a), .b(b), .y(carry));
endmodule
