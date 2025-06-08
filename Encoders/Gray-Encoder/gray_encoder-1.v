
module gray_encoder (
  input  [3:0] bin,
  output [3:0] g
);
  assign g[3] = bin[3];                  
  assign g[2] = bin[3] ^ bin[2];
  assign g[1] = bin[2] ^ bin[1];
  assign g[0] = bin[1] ^ bin[0];
endmodule