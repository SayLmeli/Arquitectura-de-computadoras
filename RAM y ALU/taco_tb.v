`timescale 1ns / 1ns

module taco_tb();

    // Entradas (reg)
    reg [4:0] addr;
    reg [31:0] data_in;
    reg EN;
    reg [3:0] alu_op;
    reg sel;

    // Salidas (wire)
    wire [31:0] data_out;
    wire [31:0] alu_result;

    // Instancia de la UUT
    taco uut (
        .addr(addr),
        .data_in(data_in),
        .EN(EN),
        .alu_op(alu_op),
        .sel(sel),
        .data_out(data_out),
        .alu_result(alu_result)
    );

    initial begin
        addr = 0; 
		data_in = 0; 
		EN = 0; 
		alu_op = 4'd6; //Asignamos default para que no aparezca indefinido.
		sel = 0;
        #10;
		
		//Escribir y leer en memoria
        addr= 5'd5;
		#10;
		
		addr = 5'd10;
		data_in = 100;
		EN = 1;
		#10;
	
		addr = 5'd31;
		data_in = 50;
		#10;
		
		addr = 5'd20;
		data_in = 150;
		#10;
		
		addr = 5'd10;
		EN = 0;
		#10
		
		addr = 5'd30;
		#10;
		
		//Asignacion de valores a la ALU
		addr = 5'd20;
		sel = 0;
		#10
		
		addr = 5'd31;
		sel = 1;
		#10;
		
		//Operaciones con la ALU.
		// Operaci車n 0: AND
        alu_op = 4'd0; 
		#10;
        
        // Operaci車n 1: OR
        alu_op = 4'd1; 
		#10;
        
        // Operaci車n 2: SUMA
        alu_op = 4'd2; 
		#10;
        
        // Operaci車n 3: RESTA
        alu_op = 4'd3; 
		#10;
        
        // Operaci車n 4: Menor que (SLT)
        alu_op = 4'd4; 
		#10;
        
        // Operaci車n 5: NOR
        alu_op = 4'd5; 
		#10;
		
		//Mas Pruebas:
		alu_op = 4'd6; // Caso default, resultado = 0
		EN = 0;
		addr = 5'd10;
		sel = 0;
		#10;
		
		addr = 5'd11; //La memoria tiene el valor 11
		sel = 1;
		#10;
		
		alu_op = 4'd2;
		#10;
		alu_op = 4'd3;
		#10;
		
		alu_op = 4'd6; 
		addr = 5'd2; //addr en 2 = 2
		sel = 1;
		#10;
		
		alu_op = 4'd2;
		#10;
		alu_op = 4'd4;
		#10;
		
    end

endmodule