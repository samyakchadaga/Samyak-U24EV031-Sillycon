`timescale 1ns / 1ps
module tff ( input clk,
            input t,
            output reg q);

initial q = 0;

  always @ (posedge clk) begin
   q <= q ^ t;
  end
endmodule


module bcd_rtl(
input i_t,
input i_clk,
output [3:0]i_q
    );
    
    wire q0,q1,q2,q3;
    wire t1,t2,t3;
    
    assign t1 = q0 & ~q3;
    assign t2 = q0 & q1;
    assign t3 = q0 & q3 | t2 & q2;
    
    tff tf1(.t(i_t), .clk(i_clk), .q(q0));
    tff tf2(.t(t1), .clk(i_clk), .q(q1));
    tff tf3(.t(t2), .clk(i_clk), .q(q2));
    tff tf4(.t(t3), .clk(i_clk), .q(q3));
    
    assign i_q = {q3, q2, q1, q0};
    
endmodule
