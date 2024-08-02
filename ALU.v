//SIMPLE VERILOG CODE FOR 4-BIT ALU 

module alu(
    input [15:0] operand1,
    input [15:0] operand2,
    input [3:0] alu_control,
    output reg [15:0] result
);

always @(*) begin
    case (alu_control)
        4'b0000: result = operand1 + operand2;  // ADD
        4'b0001: result = operand1 - operand2;  // SUB
        4'b0010: result = operand1 & operand2;  // AND
        4'b0011: result = operand1 ^ operand2;  // XOR
        4'b0100: result = operand1 << operand2; // SHIFT LEFT
        4'b0101: result = operand1 >> operand2; // SHIFT RIGHT
       
        default: result = 16'b0;
    endcase
end

endmodule
