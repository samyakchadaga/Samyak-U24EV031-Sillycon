`timescale 1ns / 1ps

module tb_seq_rtl;

    reg clk;
    reg rst_n;
    reg serial_in;
    wire detected;

    seq_rtl uut (
        .clk(clk),
        .rst_n(rst_n),
        .serial_in(serial_in),
        .detected(detected)
    );

    initial clk = 0;
    always #5 clk = ~clk; 

  
    reg [31:0] input_data = 32'b10011011001001100000011010010110;
    integer i;

    initial begin
        rst_n = 0;
        serial_in = 0;

        #15;
        rst_n = 1;

        for (i = 31; i >= 0; i = i - 1) begin
            serial_in = input_data[i];
            #10; 
        end

        #20;
        $finish;
    end

endmodule
