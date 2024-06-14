`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 01:03:43
// Design Name: 
// Module Name: dff_mux_21
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


module dff_mux_21(
input clk,d,
inout q
    );
    dff_mux d1(.s(clk),.in0(q),.in1(d),.out(q));
endmodule
