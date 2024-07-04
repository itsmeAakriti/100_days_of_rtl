`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2024 17:28:32
// Design Name: 
// Module Name: SISO_reg
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


module SISO_reg#(parameter n=4)(
input clk,clear,si,
output so
    );
    reg [n-1:0]shift_reg;
    always@(posedge clk)
    begin
    if(clear)
    shift_reg<=0;
    else
    shift_reg<={shift_reg[n-2:0],si};
    end
    assign so=shift_reg[n-1];
endmodule
