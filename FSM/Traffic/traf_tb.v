`timescale 1ns / 1ps

module tb_traf_rtl;

    reg clk;
    reg rst_n;
    wire [1:0] highway;
    wire [1:0] side;

    traf_rtl uut (
        .clk(clk),
        .rst_n(rst_n),
        .highway(highway),
        .side(side)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("traf_rtl.vcd");
        $dumpvars(0, tb_traf_rtl);

        rst_n = 0;
        #20;
        rst_n = 1;

        #500;
        $finish;
    end

endmodule

