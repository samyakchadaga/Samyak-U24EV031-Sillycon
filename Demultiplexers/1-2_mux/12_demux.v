module demux (
  input a,
  input sel,
  output reg d0,
  output reg d1
);

  always @(*) begin
    d0 = 0;
    d1 = 0;
    if (sel == 0)
      d0 = a;
    else
      d1 = a;
  end

endmodule
