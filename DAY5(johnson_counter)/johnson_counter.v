`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 23:58:43
// Design Name: 
// Module Name: johnson_counter
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


module johnson_counter(
input clk,reset,
output reg [3:0]out

    );
    integer i;
    always@(posedge clk)
    begin
    if(reset)
    out<=4'b0000;
    else begin
    out[3]<=~out[0];
    for( i=0;i<3;i=i+1)
    out[i]<=out[i+1];
    end
    end
endmodule
