module decoder (input a,b,c,enb,
                output reg [7:0] i
  );
  
integer l;

  always @(*) begin
    i = 8'b00000000; 

    for (l = 0; l < 8; l = l + 1) begin
      if ({a, b, c} == l[2:0])
        i[l] = 1'b1;
		end

  end

  endmodule