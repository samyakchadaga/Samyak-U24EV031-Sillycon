module mux (
  input a,
  input b,
  input s,
  output o
);

 assign o = (~s & a) | (s & b);

endmodule

module or_gate (
  input a,
  input b,
  output y
  );
 
  mux m1( .a(a), .b(1'b1), .s(b), .o(y));
  
endmodule 