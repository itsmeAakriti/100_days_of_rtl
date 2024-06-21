`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2024 19:47:36
// Design Name: 
// Module Name: ALU
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


module ALU(
input [3:0]A,B,
input [2:0]op,
output reg [3:0] result
    );
    always@(*)
    begin
    case(op)
    3'b000 : result = A+B;
    3'b001 : result = A-B;
    3'b010 : result = A&B;
    3'b011 : result = A|B;
    3'b100 : result = A^B;
    3'b101 : result = ~(A^B);
    endcase
 end
endmodule
