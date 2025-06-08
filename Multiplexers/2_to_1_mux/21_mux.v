module mux (
  input a,
  input b,
  input s,
  input enb,
  output reg o
);

  always @(*) begin
    if (enb == 0)
      o = 0;
    else
      o = (~s & a) | (s & b);
  end

endmodule
