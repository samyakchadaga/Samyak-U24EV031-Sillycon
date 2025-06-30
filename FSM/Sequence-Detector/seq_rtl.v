`timescale 1ns / 1ps
module seq_rtl (
    input clk,
    input rst_n,
    input serial_in,
    output reg detected
);

    reg [1:0] state;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= 2'd0;
            detected <= 0;
        end else begin
            case (state)
                2'd0: begin
                    detected <= 0;
                    if (serial_in == 0)
                        state <= 2'd1;
                end
                2'd1: begin
                    if (serial_in == 1)
                        state <= 2'd2;
                    else
                        state <= 2'd1;
                end
                2'd2: begin
                    if (serial_in == 1) begin
                        detected <= 1;
                        state <= 2'd0;
                    end else begin
                        detected <= 0;
                        state <= 2'd1;
                    end
                end
            endcase
        end
    end

endmodule
