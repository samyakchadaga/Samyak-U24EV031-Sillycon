module encoder(i,a,b,c);

input [7:0] i;
output reg a,b,c;

reg [2:0] temp;

task encode_task;
input [7:0] x;
output [2:0] y;
integer j;
begin
y = 0;
for(j=0;j<8;j=j+1)
begin
if(x[j]==1)
y = j;
end
end
endtask

always @(*) begin
  encode_task(i, temp);
  {a,b,c} = temp;
end

endmodule