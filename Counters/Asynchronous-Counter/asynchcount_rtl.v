`timescale 1ns/1ps

module tff ( 	input clk,
            	input t,
            output reg q);

initial q = 0;

  always @ (posedge clk) begin
   q <= q ^ t;
  end
endmodule

module asynccount (
input i_t,
input i_clk,
output wire [2:0]o_q
);

 tff t1(.t(i_t), .clk(i_clk), .q(o_q[0]));
 tff t2(.t(i_t), .clk(o_q[0]), .q(o_q[1]));
 tff t3(.t(i_t), .clk(o_q[1]), .q(o_q[2]));
 
 endmodule