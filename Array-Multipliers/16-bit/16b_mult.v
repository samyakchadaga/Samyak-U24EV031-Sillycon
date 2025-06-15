module half_adder(input a, input b, output sum, output carry);
  assign sum = a ^ b;
  assign carry = a & b;
endmodule

module full_adder(input a, input b, input cin, output sum, output cout);
  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (b & cin) | (a & cin);
endmodule

module array_multiplier_16x16(
  input [15:0] a,
  input [15:0] b,
  output [31:0] product
);

  wire [15:0][15:0] pp;
  wire [31:0] sum [15:0];

  genvar i, j;
  generate
    for (i = 0; i < 16; i = i + 1) begin : row
      for (j = 0; j < 16; j = j + 1) begin : col
        assign pp[i][j] = a[j] & b[i];
      end
    end
  endgenerate

  assign sum[0] = {{16{1'b0}}, pp[0]};

  generate
    for (i = 1; i < 16; i = i + 1) begin : adder
      wire [31:0] shifted = {{(16 - i){1'b0}}, pp[i], {i{1'b0}}};
      assign sum[i] = sum[i-1] + shifted;
    end
  endgenerate

  assign product = sum[15];

endmodule
