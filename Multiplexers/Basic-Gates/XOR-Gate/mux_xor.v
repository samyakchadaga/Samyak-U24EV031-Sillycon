module mux (
  input a,
  input b,
  input s,
  output o
);

 assign o = (~s & a) | (s & b);

endmodule

module xor_gate (
  input a,
  input b,
  output y
  );
 
  mux m1( .a(a), .b(~a), .s(b), .o(y));
  
endmodule 