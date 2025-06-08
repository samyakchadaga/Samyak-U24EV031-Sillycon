module mux (
  input a,
  input b,
  input s,
  output reg o
);

assign o = (~s & a) | (s & b);
  
endmodule

module mux_41 ( input w,x,y,z,s0,s1, output out);
  wire o1,o2;
  mux m1( .a(w), .b(x), .s(s0), .o(o1));
  mux m2(.a(y), .b(z), .s(s0), .o(o2));
  mux m3(.a(o1), .b(o2), .s(s1), .o(out));
  
endmodule