module encoder (
  input [7:0] i,
  output reg a,b,c
);
  
  integer l;
  always @(*) begin
    a=0;
    b=0;
    c=0;
  
    for (l=0;l<8;l=l+1) begin
      if (i[l]==1)
      {a,b,c}=l;

	end
  end 
endmodule
