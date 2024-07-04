`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2024 23:08:58
// Design Name: 
// Module Name: PISO_TB
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


module PISO_TB();
    parameter N=8;
    reg clk,reset,load;
    reg [N-1:0]in;
    wire out;
    PISO_reg #(.n(N)) p1(clk,reset,load,in,out);
    initial begin
    clk=0;
    forever #5 clk=~clk;
    end
    initial begin
    reset=1;
     load = 0;
     in = 0;
    #10
    reset=0;
    #10
    load=1;
    in=8'd171;
    #10
    load=0;
   #200 $finish;
    end
endmodule
