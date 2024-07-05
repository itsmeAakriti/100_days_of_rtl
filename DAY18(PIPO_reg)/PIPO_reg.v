`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2024 23:14:15
// Design Name: 
// Module Name: PIPO_reg
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


module PIPO_reg #(parameter n=8)(
input clk,reset,load,
input[n-1:0]pi,
output reg [n-1:0]po
    );
    always@(posedge clk)
    begin
    if(reset)
    po<=0;
    else if(load)
    po<=pi;
    end

endmodule
