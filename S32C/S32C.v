`timescale 1ns/1ns

//1. Declara el modulo y sus I/O
module S32C (
	input [31:0]A,
	input [31:0]B,
	output [31:0]C
);

assign C = A + B;

endmodule
