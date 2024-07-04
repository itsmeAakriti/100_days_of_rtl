`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2024 17:45:37
// Design Name: 
// Module Name: PISO_reg
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


module PISO_reg #(parameter n=4)(
input clk,reset,load,
input [n-1:0]in,
output out
    );
    reg [n-1:0] shift_reg;
    always@(posedge clk)
    begin
    if(reset)
    shift_reg<=0;
    else if(load)
    shift_reg<=in;
    else
    shift_reg<=shift_reg>>1;
    end
    assign out=shift_reg[0];
endmodule
