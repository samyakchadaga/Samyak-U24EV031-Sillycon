`timescale 1ns / 1ps

module d_ff(
 input d,
 input clk,
 input clr,
 output reg q
    );
    
    
    always @(posedge clk)
    begin
    if (clr == 1'b1)
    q <= 1'b0;
    else
    q <= d;
   end 
endmodule


module rincount_rtl(
    input clk,
    input clr,
    input load,
    output wire q0, q1, q2, q3
);

    wire d0, d1, d2, d3;

    assign d0 = load ? 1'b1 : q3;
    assign d1 = load ? 1'b0 : q0;
    assign d2 = load ? 1'b0 : q1;
    assign d3 = load ? 1'b0 : q2;

    d_ff ff0 (.d(d0), .clk(clk), .clr(clr), .q(q0));
    d_ff ff1 (.d(d1), .clk(clk), .clr(clr), .q(q1));
    d_ff ff2 (.d(d2), .clk(clk), .clr(clr), .q(q2));
    d_ff ff3 (.d(d3), .clk(clk), .clr(clr), .q(q3));

endmodule