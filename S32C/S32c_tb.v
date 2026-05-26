`timescale 1ns/1ns
//1. Declara el modulo y sus I/O: NA

module S32c_tb ();
//cables: si registros: si
reg [31:0]A_tb;
reg [31:0]B_tb;
wire [31 :0]C_tb;

//3. Cuerpo del modulo, Assigns: NA, Instancias: SI
//Bloque secuencial: Initial

S32C DUV(.A(A_tb), .B(B_tb), .C(C_tb));

initial
begin
	A_tb = 4'd3;  
	B_tb = 4'd2;  
	#100;
    A_tb = 4'd7;  
	B_tb = 4'd8;  
	#100;
    A_tb = 4'd12; 
	B_tb = 4'd5;  
	#100;
    A_tb = 4'd0;  
	B_tb = 4'd7;  
	#100;
    A_tb = 4'd15; 
	B_tb = 4'd1;  
	#100;
    A_tb = 4'd6;  
	B_tb = 4'd6;  
	#10;
    A_tb = 4'd1;  
	B_tb = 4'd2;  
	#100;
    A_tb = 4'd14; 
	B_tb = 4'd10; 
	#100;
    A_tb = 4'd8;  
	B_tb = 4'd7;  
	#100;
    A_tb = 4'd15; 
	B_tb = 4'd0;  
	#100;
    A_tb = 4'd3;  
	B_tb = 4'd2;  
	#100;
    A_tb = 4'd5;  
	B_tb = -4'd3;  
	#100;
    A_tb = -4'd2; 
	B_tb = -4'd4;  
	#100;
    A_tb = 4'd0;  
	B_tb = 4'd7;  
	#100;
    A_tb = -4'd1; 
	B_tb = -4'd2;  
	#100;
    A_tb = -4'd7;  
	B_tb = -4'd1;  
	#100;
    A_tb = -4'd8; 
	B_tb = -4'd1;  
	#100;
    A_tb = -4'd6;  
	B_tb = -4'd3;  
	#100;
    A_tb = -4'd5; 
	B_tb = -4'd4;  
	#100;
    A_tb = 4'd4;  
	B_tb = -4'd4;  
	#100;
	$stop;
end
endmodule
	
