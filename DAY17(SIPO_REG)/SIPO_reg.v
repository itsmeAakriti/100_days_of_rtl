`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2024 22:49:12
// Design Name: 
// Module Name: SIPO_reg
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


module SIPO_reg #(parameter n=8)(
input clk,reset,si,
output reg[n-1:0]po
    );
    always@(posedge clk)
    begin
    if(reset)
    po<=0;
    else
    po<={po[n-2:0],si};
    end
    
endmodule
