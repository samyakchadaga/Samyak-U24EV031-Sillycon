`timescale 1ns / 1ps

module axi_rtl(
input [31:0]IN_DATA,
input ACLK,
input ARSTN,
output [31:0]OUT_DATA  
);

    wire ready;
    wire valid;
    wire [31:0]sdata;
    
    
    master_rtl m1(.ACLK(ACLK), .ARSTN(ARSTN), .TREADY(ready), .IN_DATA(IN_DATA), .TVALID(valid), .M_TDATA(sdata));
    
    slave_rtl s1(.ACLK(ACLK), .ARSTN(ARSTN), .TVALID(valid), .S_TDATA(sdata), .TREADY(ready), .OUTDATA(OUT_DATA));

endmodule