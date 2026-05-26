//1. Declaracion de I/O
module alu (
  input [3:0] ALUctl,
  input [31:0] A, 
  input [31:0] B,
  output reg [31:0] ALUOut,
  output Zero
  );

//2. Declaracion de reg o wires: No hay

//3. Cuerpo del modulo, Asignaciones: si, Instancias:NA, bloques:si
  assign Zero = (ALUOut == 0);

  always @(*) 
	begin
		case (ALUctl)
		  4'd0: ALUOut = A & B;
		  4'd1: ALUOut = A | B;
		  4'd2: ALUOut = A + B;
		  4'd3: ALUOut = A - B;
		  4'd4: ALUOut = A < B ? 32'd1 : 32'd0;
		  4'd5: ALUOut = ~(A | B);
		  default: ALUOut = 32'd0;
		endcase
	end
endmodule
