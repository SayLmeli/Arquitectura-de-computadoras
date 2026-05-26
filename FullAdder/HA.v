//1. Creacion del modulo y sus I/S
module HA (
	input a,
	input b,
	output s,
	output as
);

//2. Declaracion de componentes

//3. Cuerpo del modulo
assign s = a^b;
assign as = a&b;

endmodule
