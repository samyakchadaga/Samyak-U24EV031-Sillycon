`timescale 1ns / 1ps

module tb_rca_8bit;

    reg [7:0] a, b;
    reg       cin;

    wire [7:0] sum;
    wire       cout;

    
    rca_8bit uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $monitor("Time=%0t | a=%b, b=%b, cin=%b => sum=%b, cout=%b", 
                  $time, a, b, cin, sum, cout);

        a = 8'b00000101; // 5
        b = 8'b00000011; // 3
        cin = 0;
        #10;

        a = 8'b11111111; // 255
        b = 8'b00000001; // 1
        cin = 0;
        #10;

        a = 8'b10000000; // 128
        b = 8'b10000000; // 128
        cin = 0;
        #10;

        a = 8'b01101100; // 108
        b = 8'b00110110; // 54
        cin = 1;
        #10;

        $finish;
    end

endmodule
