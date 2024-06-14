`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2024 01:14:45
// Design Name: 
// Module Name: clock_divider
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


module clock_divider(
input clk,
input reset,
output reg divideby2,
output reg divideby4,
output reg divideby8
    );
    reg [3:0]count;
    always@(posedge clk or posedge reset)
    begin
        if(reset)
            count <= 4'b0000;
        else
            count <= count + 1;

        divideby2 <= count[0];
        divideby4 <= count[1];
        divideby8 <= count[2];
    end
endmodule