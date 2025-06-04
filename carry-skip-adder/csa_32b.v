module ripple8 (
  input [7:0] a,
  input [7:0] b,
  input cin,
  output [7:0] sum,
  output cout,
  output propagate
);
  wire [7:0] p, g, c;
  assign p = a ^ b;
  assign g = a & b;

  assign c[0] = cin;
  assign c[1] = g[0] | (p[0] & c[0]);
  assign c[2] = g[1] | (p[1] & c[1]);
  assign c[3] = g[2] | (p[2] & c[2]);
  assign c[4] = g[3] | (p[3] & c[3]);
  assign c[5] = g[4] | (p[4] & c[4]);
  assign c[6] = g[5] | (p[5] & c[5]);
  assign c[7] = g[6] | (p[6] & c[6]);

  assign sum = p ^ c;
  assign cout = g[7] | (p[7] & c[7]);
  assign propagate = &p;
endmodule

module csa32 (
  input [31:0] a,
  input [31:0] b,
  input cin,
  output [31:0] sum,
  output cout
);
  wire [3:0] skip;
  wire [2:0] carry;
  wire [3:0] p;

  ripple8 r0(a[7:0],   b[7:0],   cin,        sum[7:0],   carry[0], p[0]);
  ripple8 r1(a[15:8],  b[15:8],  carry[0],   sum[15:8],  carry[1], p[1]);
  ripple8 r2(a[23:16], b[23:16], carry[1],   sum[23:16], carry[2], p[2]);
  ripple8 r3(a[31:24], b[31:24], carry[2],   sum[31:24], cout,     p[3]);
endmodule
