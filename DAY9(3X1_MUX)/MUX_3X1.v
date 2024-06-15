`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 22:45:54
// Design Name: 
// Module Name: MUX_3X1
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


module MUX_3X1(
input [2:0]in,
input [1:0]sel,
output out
    );
    wire w;
    mux_2x1 m1(.in0(in[0]),.in1(in[1]),.sel(sel[0]),.out(w));
    mux_2x1 m2(.in0(w),.in1(in[1]),.sel(sel[1]),.out(out));
    
endmodule
