//1. Declaracion de modulo RAM
//y sus I/O
module ram (
    input [4:0] dir,
    input sel,
    input [31:0] Dentrada,
    output reg [31:0] DSalida
);

//2.declaracion de comp.
//internos Wires:NA, Reg:si,
//arreglo bidimencional
    reg [31:0] MEM [0:31];
    integer i;

//3. Cuerpo del modulo Bloques Initial y always	
    initial begin 
        for (i = 0; i < 32; i = i + 1) begin  
            MEM[i] = i;
        end
    end

    always @(*) 
		begin
			if (sel) 
				begin
					MEM[dir] = Dentrada;

				end
			else
				begin
					DSalida = MEM[dir];
				end

		end

endmodule
