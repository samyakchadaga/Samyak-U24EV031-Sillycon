module encoder (
  input enb, [3:0] i,
  output reg a,b
);
  
  integer l;
  always @(*) begin
    a=0;
    b=0;
    
    for (l=0;l<4;l=l+1) begin
      if (i[l]==1)
      {a,b}=l;
    end

  end 
endmodule