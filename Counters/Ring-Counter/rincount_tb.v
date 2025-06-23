`timescale 1ns / 1ps
module rincount_tb;

    reg clk;
    reg clr;
    reg load;
    wire q0, q1, q2, q3;

    rincount_rtl uut (
        .clk(clk),
        .clr(clr),
        .load(load),
        .q0(q0), .q1(q1), .q2(q2), .q3(q3)
    );

    always #5 clk = ~clk;

    initial begin
        
        clk = 0;
        clr = 1; load = 0;
        #10;

        clr = 0;
        load = 1;   
        #10;

        load = 0;   
        #100;

        $finish;
    end

endmodule
