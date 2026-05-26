module Sign_Extend(
	input  [15:0]inmediate,
	output [31:0]extend
);
	assign extend = {{16 {inmediate[15]}},inmediate[15:0]};
endmodule
