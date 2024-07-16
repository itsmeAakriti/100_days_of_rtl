`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.07.2024 00:04:20
// Design Name: 
// Module Name: edge_det
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


module edge_det(
input clk,
input signal,
output reg edge_det
    );
    reg sgprev;
    always@(posedge clk)
    begin
    sgprev<=signal;
    edge_det <=signal^sgprev;
    end
endmodule
