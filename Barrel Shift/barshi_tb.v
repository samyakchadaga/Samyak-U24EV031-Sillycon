`timescale 1ns / 1ps

module barrel_shifter_tb;

    reg [31:0] data_in;
    reg [4:0] shift_amt;
    reg dir;
    wire [31:0] data_out;

    barrel_shifter_rtl uut (
        .data_in(data_in),
        .shift_amt(shift_amt),
        .dir(dir),
        .data_out(data_out)
    );

    initial begin
        $display("Time\tDir\tAmt\tInput\t\t\tOutput");

        // Test 1: Left shift by 1
        dir = 0;
        shift_amt = 5'd1;
        data_in = 32'h0000_000F;
        #10 $display("%0t\tLEFT\t%0d\t%h\t%h", $time, shift_amt, data_in, data_out);

        // Test 2: Left shift by 4
        shift_amt = 5'd4;
        #10 $display("%0t\tLEFT\t%0d\t%h\t%h", $time, shift_amt, data_in, data_out);

        // Test 3: Right shift by 1
        dir = 1;
        shift_amt = 5'd1;
        #10 $display("%0t\tRIGHT\t%0d\t%h\t%h", $time, shift_amt, data_in, data_out);

        // Test 4: Right shift by 8
        shift_amt = 5'd8;
        #10 $display("%0t\tRIGHT\t%0d\t%h\t%h", $time, shift_amt, data_in, data_out);

        // Test 5: Shift by 0 (no change)
        shift_amt = 5'd0;
        #10 $display("%0t\tRIGHT\t%0d\t%h\t%h", $time, shift_amt, data_in, data_out);

        // Test 6: Left shift with another input
        dir = 0;
        data_in = 32'hF000_0001;
        shift_amt = 5'd3;
        #10 $display("%0t\tLEFT\t%0d\t%h\t%h", $time, shift_amt, data_in, data_out);

        $finish;
    end

endmodule
