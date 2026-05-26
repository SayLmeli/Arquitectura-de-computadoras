// 1.- Definir módulo
module control_unit(
    input [5:0] opcode,
    output RegDst,
    output [2:0] ALUOp,
    output RegWrite,
    output ALUSrc,
    output MemRead,
    output MemWrite,
    output memtoReg,
    output Branch,

    output Jump 
);

// 2.- Definir Cables o registros
wire r_type = (opcode == 6'b000000); // add
//tipo i 
wire addi   = (opcode == 6'b001000); // addi
wire lw     = (opcode == 6'b100011); // lw
wire sw     = (opcode == 6'b101011); // sw
wire beq    = (opcode == 6'b000100); // beq
wire bne    = (opcode == 6'b000101); // Branch if Not Equal
wire bgtz   = (opcode == 6'b000111); // Branch if Greater Than Zero
wire slti = (opcode == 6'b001010); // slti
wire andi = (opcode == 6'b001100); // andi
wire ori  = (opcode == 6'b001101); // ori

//tipo j
wire j      = (opcode == 6'b000010); // j
wire jal    = (opcode == 6'b000011); // jump and link

// 3.- Cuerpo del modulo
    assign RegDst   = r_type ? 1'b1 : 1'b0;

    assign ALUSrc   = (addi || lw || sw || slti || andi || ori) ? 1'b1 : 1'b0;

    assign RegWrite = (r_type || addi || lw || slti || andi || ori || jal) ? 1'b1 : 1'b0;

    assign MemRead  = lw ? 1'b1 : 1'b0;

    assign MemWrite = sw ? 1'b1 : 1'b0;

    assign memtoReg = lw ? 1'b1 : 1'b0;

    assign Branch   = beq ? 1'b1 : 1'b0;

    assign BranchNE = bne  ? 1'b1 : 1'b0;

    assign Jump     = j ? 1'b1 : 1'b0;

    assign JumpLink = jal ? 1'b1 : 1'b0; 

    // 3'b010 -> depende del funct
    // 3'b000 -> Suma
    // 3'b001 -> Resta
	
   assign ALUOp = r_type ? 3'b010 :
                   (beq | bne) ? 3'b001 :
                   slti   ? 3'b101 :
                   andi   ? 3'b011 :
                   ori    ? 3'b100 :
                   bgtz   ? 3'b001 : 
                            3'b000; // addi, lw, sw

endmodule