//16/03/2026
// Sagrario Lomeli
module ALU16(
    input [3:0] ALUctl,
    input [15:0] A,
    input [15:0] B,
    
    output reg [15:0] outSum,
    output reg [15:0] outRes, 
    output reg [15:0] outMul, 
    output reg [15:0] outDiv, 
    output reg [15:0] outAnd, 
    output reg [15:0] outOr, 
    output reg [15:0] outCor, 
    output reg [15:0] outXor, 
    output Zero
);


    wire [15:0] currentOut;

    assign currentOut = (ALUctl == 0) ? outSum :
                        (ALUctl == 1) ? outRes :
                        (ALUctl == 2) ? outMul :
                        (ALUctl == 3) ? outDiv :
                        (ALUctl == 4) ? outAnd :
                        (ALUctl == 5) ? outOr  :
                        (ALUctl == 6) ? outCor :
                        (ALUctl == 7) ? outXor : 16'd0;

    assign Zero = (currentOut == 16'b0);

    always @(*) begin

        case (ALUctl)
            0: outSum = A + B;
            1: outRes = A - B;
            2: outMul = A * B;
            3: outDiv = (B != 0) ? A / B : 0;
            4: outAnd = A & B;
            5: outOr  = A | B;
            6: outCor = A << 1;
            7: outXor = A ^ B;
            default: ;
        endcase
    end

endmodule
