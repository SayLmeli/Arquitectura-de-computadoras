//Declaracion del modulo e I/O

module taco (
    input [4:0] addr,
    input [31:0] data_in,
    input EN,
    input [3:0] alu_op,
    input sel,
    output [31:0] data_out,
    output [31:0] alu_result
);
// 2. Declaracion de componentes internos: Wire
    wire [31:0] mem_to_demux;
    wire [31:0] w_datoa;
    wire [31:0] w_datob;

//3. Cuerpo del Modulo: instancias
    ram memoria(
        .dir(addr),
        .sel(EN),
        .Dentrada(data_in),
        .DSalida(mem_to_demux)
    );

    demux seleccion(
        .entrada(mem_to_demux),
        .sel(sel),
        .salida1(w_datoa),
        .salida2(w_datob)
    );

    alu operaciones(
        .A(w_datoa),
        .B(w_datob),
        .ALUctl(alu_op),
        .ALUOut(alu_result),
		.Zero ()
    );

    assign data_out = mem_to_demux;

endmodule