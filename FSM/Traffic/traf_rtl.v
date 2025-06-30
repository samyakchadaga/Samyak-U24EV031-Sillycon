module traf_rtl (
    input clk,
    input rst_n,
    output reg [1:0] highway,
    output reg [1:0] side
);

    reg [1:0] state;
    reg [31:0] count;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= 2'b00;
            count <= 0;
        end else begin
            if (count == 0) begin
                case (state)
                    2'b00: begin state <= 2'b01; count <= 3; end
                    2'b01: begin state <= 2'b10; count <= 10; end
                    2'b10: begin state <= 2'b11; count <= 3; end
                    2'b11: begin state <= 2'b00; count <= 10; end
                endcase
            end else begin
                count <= count - 1;
            end
        end
    end

    always @(*) begin
        case (state)
            2'b00: begin highway = 2'b10; side = 2'b00; end
            2'b01: begin highway = 2'b01; side = 2'b00; end
            2'b10: begin highway = 2'b00; side = 2'b10; end
            2'b11: begin highway = 2'b00; side = 2'b01; end
            default: begin highway = 2'b00; side = 2'b00; end
        endcase
    end

endmodule

