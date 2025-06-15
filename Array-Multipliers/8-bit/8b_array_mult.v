module half_adder(input a, input b, output sum, output carry);
  assign sum = a ^ b;
  assign carry = a & b;
endmodule

module full_adder(input a, input b, input cin, output sum, output cout);
  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (b & cin) | (a & cin);
endmodule

module array_multiplier_8x8 (
  input [7:0] a,
  input [7:0] b,
  output [15:0] product
);

  wire [7:0][7:0] pp;
  wire [15:0] c;
  wire [15:0] sum;
  wire [15:0] carry;

  genvar i, j;
  generate
    for (i = 0; i < 8; i = i + 1) begin : gen_pp
      for (j = 0; j < 8; j = j + 1) begin : gen_bit
        assign pp[i][j] = a[j] & b[i];
      end
    end
  endgenerate

  assign product[0] = pp[0][0];

  half_adder ha1(pp[0][1], pp[1][0], product[1], c[0]);
  full_adder fa1(pp[0][2], pp[1][1], pp[2][0], sum[0], carry[0]);
  full_adder fa2(pp[0][3], pp[1][2], pp[2][1], sum[1], carry[1]);
  full_adder fa3(pp[0][4], pp[1][3], pp[2][2], sum[2], carry[2]);
  full_adder fa4(pp[0][5], pp[1][4], pp[2][3], sum[3], carry[3]);
  full_adder fa5(pp[0][6], pp[1][5], pp[2][4], sum[4], carry[4]);
  full_adder fa6(pp[0][7], pp[1][6], pp[2][5], sum[5], carry[5]);
  full_adder fa7(1'b0,     pp[1][7], pp[2][6], sum[6], carry[6]);
  full_adder fa8(1'b0,     1'b0,     pp[2][7], sum[7], carry[7]);

  assign product[2] = sum[0];
  assign product[3] = sum[1];
  assign product[4] = sum[2];
  assign product[5] = sum[3];
  assign product[6] = sum[4];
  assign product[7] = sum[5];
  assign product[8] = sum[6];
  assign product[9] = sum[7];
  assign product[10] = 0;
  assign product[11] = 0;
  assign product[12] = 0;
  assign product[13] = 0;
  assign product[14] = 0;
  assign product[15] = 0;

endmodule
