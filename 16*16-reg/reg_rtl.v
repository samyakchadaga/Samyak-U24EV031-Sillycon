`timescale 1ns / 1ps

module reg_rtl(
input clk,
 input [15:0] wr_data,
 input [3:0]wr_addr,
 input [3:0]rd_addr1,
 input [3:0]rd_addr2,
 input en,
output reg [15:0]rd_data1,
output reg [15:0]rd_data2
    );
    
    reg [15:0]reg_file [15:0];
     
     initial begin
 rd_data1 = 0;
 rd_data2 = 0;
 end
     
     
  always @(posedge clk ) begin
  if(!en) begin
 
  rd_data1 = 0;
  rd_data2 = 0;
  end else begin
  
reg_file[wr_addr] <= wr_data;
rd_data1 <= reg_file[rd_addr1];
rd_data2 <= reg_file[rd_addr2];
end
end
endmodule
