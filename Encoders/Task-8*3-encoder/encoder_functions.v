module encoder(i,a,b,c);

input [7:0] i;
output a,b,c;
reg a,b,c;

function [2:0] encode;
input [7:0] x;
integer j;
begin
encode = 0;
for(j=0;j<8;j=j+1)
begin
if(x[j]==1)
encode = j;
end
end
endfunction

always @(*)
begin
{a,b,c} = encode(i);
end

endmodule