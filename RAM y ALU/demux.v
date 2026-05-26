//1. Declaracion de I/O
module demux(
	input [31:0] entrada,
	input sel,
	output reg [31:0] salida1,
	output reg [31:0] salida2
);
//2. declaracion de comp. wires o reg: No hay

//3. Cuerpo del modulo: Bloque always 
always @(*)
	begin
		if (sel)
			begin
				salida2 = entrada;
			end
		else
			begin
				salida1 = entrada;
			end
	end

endmodule

