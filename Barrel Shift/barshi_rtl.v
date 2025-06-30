`timescale 1ns / 1ps

module barrel_shifter_rtl (
    input [31:0] data_in,
    input [4:0] shift_amt,
    input dir,
    output reg [31:0] data_out
);

    always @(*) begin
        if (dir == 0)
            data_out = data_in << shift_amt;
        else
            data_out = data_in >> shift_amt;
    end

endmodule
