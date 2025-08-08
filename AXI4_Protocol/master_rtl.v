`timescale 1ns / 1ps

module master_rtl(
    input ACLK,
    input ARSTN,
    input TREADY,
    input [31:0]IN_DATA,
    output reg TVALID,
    output reg [31:0]M_TDATA
);

    always @(posedge ACLK) begin
        if (!ARSTN) begin
           
            TVALID <= 1'b0;
            M_TDATA <= 32'b0;
        end
      
        else begin
 
            if (TREADY && TVALID) begin
           
                TVALID <= 1'b0;
            end
            
       
            if (IN_DATA) begin 
                TVALID <= 1'b1;
                M_TDATA <= IN_DATA;
            end
        end
    end
endmodule