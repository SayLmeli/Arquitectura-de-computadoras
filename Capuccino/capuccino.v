`timescale 1ns/1ns
 //definicion del modulo y I/O
module capuccino(
    input [7:0]lala,
    input [7:0]planchuela,
    output [7:0]bebida
);
 //definicion de cables: SI o registros 
 wire [3:0]espumar;
 wire [3:0]extraer;
 
 //cuerpo del modulo assigns: SI instancias: SI always: NA
 //IMPORTANTE: bits significativos a la izquierda, los menos significativos a la derecha

 assign bebida = {espumar,extraer};

 //instancias
 leche venti(
    .h(lala[3:0]),
    .i(lala[7:4]),
    .j(espumar)
 );

 expresso carga1(
    .a(planchuela[3:0]),
    .b(planchuela[7:4]),
    .c(extraer)
 );


 endmodule
