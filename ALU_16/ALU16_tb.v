`timescale 1ns/1ns

module ALU16_tb;

    reg [3:0] ALUctl;
    reg [15:0] A;
    reg [15:0] B;

    wire [15:0] outSum;
    wire [15:0] outRes;
    wire [15:0] outMul;
    wire [15:0] outDiv;
    wire [15:0] outAnd;
    wire [15:0] outOr;
    wire [15:0] outCor;
    wire [15:0] outXor;
    wire Zero;

    ALU16 uut(
        .ALUctl(ALUctl),
        .A(A),
        .B(B),
        .outSum(outSum),
        .outRes(outRes),
        .outMul(outMul),
        .outDiv(outDiv),
        .outAnd(outAnd),
        .outOr(outOr),
        .outCor(outCor),
        .outXor(outXor),
        .Zero(Zero)
    );

    initial begin
	
        ALUctl=0; 
		A=10; 
		B=5;  
		#10;
		
        ALUctl=0; 
		A=100; 
		B=20; 
		#10;
		
        ALUctl=0; 
		A=0; 
		B=15; 
		#10;
		
        ALUctl=0; 
		A=255; 
		B=1; 
		#10;

        ALUctl=1; 
		A=10; 
		B=5; 
		#10;
		
        ALUctl=1; 
		A=20; 
		B=30; 
		#10;
		
        ALUctl=1; 
		A=50; 
		B=10; 
		#10;
		
        ALUctl=1; 
		A=100; 
		B=100; 
		#10;
		
        ALUctl=2; 
		A=4; 
		B=3; 
		#10;
		
        ALUctl=2; 
		A=7; 
		B=6; 
		#10;
		
        ALUctl=2; 
		A=10; 
		B=10; 
		#10;
		
        ALUctl=2; 
		A=15; 
		B=2; 
		#10;
		
        ALUctl=3; 
		A=20; 
		B=4; 
		#10;
		
        ALUctl=3; 
		A=30; 
		B=5; 
		#10;
		
        ALUctl=3; 
		A=100; 
		B=10; 
		#10;
		
        ALUctl=3; 
		A=50; 
		B=0; 
		#10;

        ALUctl=4; 
		A=16'b10101010; 
		B=16'b11110000; 
		#10;
		
        ALUctl=4; 
		A=16'b11111111; 
		B=16'b00001111; 
		#10;
		
        ALUctl=4; 
		A=16'b10101010; 
		B=16'b01010101; 
		#10;
		
        ALUctl=4; 
		A=16'b11001100; 
		B=16'b10101010; 
		#10;

        ALUctl=5; 
		A=16'b10101010; 
		B=16'b11110000; 
		#10;
		
        ALUctl=5; 
		A=16'b11110000; 
		B=16'b00001111; 
		#10;
		
        ALUctl=5; 
		A=16'b10101010; 
		B=16'b01010101; 
		#10;
		
        ALUctl=5; 
		A=16'b11001100; 
		B=16'b00110011; 
		#10;

        ALUctl=6; 
		A=1; 
		B=0; 
		#10;
		
        ALUctl=6; 
		A=2; 
		B=0; 
		#10;
		
        ALUctl=6; 
		A=8; 
		B=0; 
		#10;
		
        ALUctl=6; 
		A=16; 
		B=0; 
		#10;

        ALUctl=7; 
		A=16'b10101010; 
		B=16'b11110000; 
		#10;
		
        ALUctl=7; 
		A=16'b11111111; 
		B=16'b00001111; 
		#10;
		
        ALUctl=7; 
		A=16'b10101010; 
		B=16'b01010101; 
		#10;
 
       ALUctl=7; 
	   A=16'b11001100; 
	   B=16'b10101010; 
	   #10;
	   $finish;

    end

endmodule