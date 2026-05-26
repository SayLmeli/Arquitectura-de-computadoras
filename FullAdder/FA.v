//1. Creacion del modulo y sus I/O
module FA(
	input A,
	input B,
	input AE,
	output SUMA,
	output AS);
//2. Declaracion de componentes, wires:si, reg:NA
wire c1, c2, c3;
//3. Cuerpo del modulo, assign: si, instancias: si, bloques secuenciales: NA

//instancia de HA x2
HA taco (.a(A), .b(B), .s(c1), .as(c2));
HA torta(.a(c1), .b(AE), .s(SUMA), .as(c3));

assign AS = c2 | c3;

endmodule