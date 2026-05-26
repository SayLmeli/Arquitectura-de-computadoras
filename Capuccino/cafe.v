`timescale 1ns/1ns
 //definicion del modulo
module expresso(
    input [3:0]a,
    input [3:0]b,
    output [3:0]c
);
 //definicion de cables o registros 

 //cuerpo del modulo assigns: SI instancias: NA always: NA
    assign c = a + b; 

 endmodule
