`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 23:01:17
// Design Name: 
// Module Name: Parity_gen
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


module Parity_gen(
input [7:0]data_in,
input even_odd,
output parity
    );
    assign parity=even_odd?(^data_in):(~(^data_in));
endmodule
