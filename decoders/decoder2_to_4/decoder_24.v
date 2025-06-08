module decoder (input a,b,enb,
   output reg i0,i1,i2,i3
  );
  
    always @(*) begin
    i0 = 0;
    i1 = 0;
    i2 = 0;
    i3 = 0;
 
  
      if(a==0 && b==0) 
    i0=1;
  
      else if (a==0 && b==1)
    i1 =1;
  
      else if (a==1 && b==0)
    i2 =1;
  
  else  i3=1;
  
  end 
  endmodule