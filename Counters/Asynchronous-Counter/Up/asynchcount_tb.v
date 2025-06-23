`timescale 1ns/1ps

module asynccount_tb;

    reg i_clk;
    reg i_t;
    wire [2:0] o_q;

    asynccount uut (
        .i_t(i_t),
        .i_clk(i_clk),
        .o_q(o_q)
    );

    always #5 i_clk = ~i_clk;

    initial begin
        i_clk = 0;
        i_t = 1;
        #90;
        $finish;
    end

endmodule


