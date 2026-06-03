`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2026 08:54:29 PM
// Design Name: 
// Module Name: alu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu16 (
    input  [31:0] A,
    input  [31:0] B,
    input  [1:0] SEL,

    output reg [31:0] RESULT
);

always @(*) begin
    case (SEL)

        2'b00: RESULT = A & B;

        2'b01: RESULT = A | B;

        2'b10: RESULT = A ^ B;

        2'b11: RESULT = A + B;

    endcase
end

endmodule
