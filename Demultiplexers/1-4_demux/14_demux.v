module demux (
  input din,
  input [1:0] sel,
  output reg d0,
  output reg d1,
  output reg d2,
  output reg d3
);

  always @(*) begin
    d0 = 0;
    d1 = 0;
    d2 = 0;
    d3 = 0;
       if (sel == 2'b00)
      d0 = din;
    else if (sel == 2'b01)
      d1 = din;
    else if (sel == 2'b10)
      d2 = din;
    else if (sel == 2'b11)
      d3 = din;
  end

endmodule
