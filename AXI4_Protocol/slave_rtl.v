`timescale 1ns / 1ps

module slave_rtl(
    input ACLK,
    input ARSTN,
    input TVALID,
    input [31:0]S_TDATA,
    output reg TREADY,
    output reg [31:0]OUTDATA
);
    
  
    always @(posedge ACLK) begin
        if (!ARSTN) begin
     
            TREADY <= 1'b1;
            OUTDATA <= 32'b0;
        end
        else begin
          
            if (TVALID && TREADY) begin
               
                OUTDATA <= S_TDATA;
                
               
                TREADY <= 1'b0;
            end
            
            
            else begin
                TREADY <= 1'b1;
            end
        end
    end
endmodule