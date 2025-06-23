`timescale 1ns / 1ps

module Syncount_tb;

    reg clk_i;
    reg i_t;
    wire [2:0] i_q;

    Syncount_rtl uut (
        .i_t(i_t),
        .clk_i(clk_i),
        .i_q(i_q)
    );

    always #5 clk_i = ~clk_i;

    initial begin
        clk_i = 0;
        i_t = 1;       // Drive T input high
        #86;
        $finish;
    end

endmodule
