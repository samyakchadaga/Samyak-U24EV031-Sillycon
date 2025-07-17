`timescale 1ns / 1ps

module ram_tb;
reg clk;
reg we;
reg [7:0]in_data;
reg [15:0]in_wradd;
reg [15:0]in_rdadd;
wire [7:0]out_read;

ram_rtl uut(
.clk(clk),
.we(we),
.in_data(in_data),
.in_wradd(in_wradd),
.in_rdadd(in_rdadd),
.out_read(out_read)
);

always #5 clk = ~clk;

initial begin
clk = 0;

we = 0;
in_data = 8'b10001111;
in_wradd = 16'd1;
in_rdadd = 16'd1;
#10;

we = 1;
in_data = 8'b10100011;
in_wradd = 16'd1;
in_rdadd = 16'd0;
#10;

we = 1;
in_data = 8'b10001111;
in_wradd = 16'd2;
in_rdadd = 16'd1;
#10;

we = 1;
in_data = 8'b10111101;
in_wradd = 16'd0;
in_rdadd = 16'd2;
#10;

we = 1;
in_data = 8'b11101111;
in_wradd = 16'd2;
in_rdadd = 16'd0;
#10;

we = 1;
in_data = 8'b10000001;
in_wradd = 16'd3;
in_rdadd = 16'd2;
#10;


we = 1;
in_data = 8'b10011001;
in_wradd = 16'd60456;
in_rdadd = 16'd3;
#10;

we = 1;
in_data = 8'b11111111;
in_wradd = 16'd65535;
in_rdadd = 16'd60456;
#10;

we = 1;
in_data = 8'b11111101;
in_wradd = 16'd55365;
in_rdadd = 16'd65535;
#10;

we = 1;
in_data = 8'b11011011;
in_wradd = 16'd1780;
in_rdadd = 16'd55365;
#10;

we = 0;
in_data = 8'b11101111;
in_wradd = 16'd1;
in_rdadd = 16'd1;
#10;

we = 1;
in_data = 8'b11101111;
in_wradd = 16'd1;
in_rdadd = 16'd1;
#10;
$stop;
 end    
endmodule
