`timescale 1ns / 1ps

module tff ( 	input clk,
            	input t,
            output reg q);

initial q = 0;

  always @ (posedge clk) begin
   q <= q ^ t;
  end
endmodule

module Syncount_rtl(
    input  i_t,
    input  clk_i,
    output [2:0] i_q
);

    wire q0, q1, q2;
    wire temp;

    assign temp = q0 & q1;

    tff t1 (.t(i_t), .clk(clk_i), .q(q0));
    tff t2 (.t(q0),  .clk(clk_i), .q(q1));
    tff t3 (.t(temp),.clk(clk_i), .q(q2));

    assign i_q = {q2, q1, q0};

endmodule
