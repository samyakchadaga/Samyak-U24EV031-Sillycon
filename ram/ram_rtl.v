`timescale 1ns / 1ps

module ram_rtl(
input clk,
input we, //write enable//
input [7:0]in_data,
input [15:0]in_wradd,
input [15:0]in_rdadd,
output reg [7:0]out_read
    );
    
    reg [7:0] loctn[0:65535];
   
  
    always @(posedge clk) begin
    if(!we) begin
    out_read <= loctn[in_rdadd];
    
    end 
    if (we)
            loctn[in_wradd] <= in_data;

        if (we && in_wradd == in_rdadd)
            out_read <= in_data;
        else
            out_read <= loctn[in_rdadd];
  end  
endmodule
