`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2024 01:48:29
// Design Name: 
// Module Name: one_hot_encoder
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
module one_hot_encoder(
    input [insize-1:0] ip,
    output reg [outsize-1:0] op
);
    parameter insize = 4;
    parameter outsize = 16;

    always @(*) begin
        op = 1'b1 << ip;
    end
endmodule