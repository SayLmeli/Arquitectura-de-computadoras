//creacion del modulo y definicion de I/S
module Actividad2 (input a, input b, output c, output d, output e, output f, output g, output h, output i);
//2. Definicion de componentes internos (reg, cables-wires)
    
//3. Cuerpo del modulo, asignaciones, instancias.
	assign c = a & b;
	assign d = a | b;
	assign e = ~ a;
	assign f = a ^ b;
	assign g = ~(a & b);
	assign h = ~(a | b);
	assign i = ~(a ^ b);
endmodule
