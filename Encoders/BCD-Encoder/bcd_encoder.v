module bcd_encoder(
  input [9:0] D,
  output [3:0] A
);
  assign A[3] = D[8] | D[9];

  assign A[2] = D[4] | D[5] | D[6] | D[7];


  assign A[1] = D[2] | D[3] | D[6] | D[7];


  assign A[0] = D[1] | D[3] | D[5] | D[7] | D[9];

endmodule