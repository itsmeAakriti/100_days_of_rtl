`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2024 17:34:25
// Design Name: 
// Module Name: SISO_TB
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


module SISO_TB(

    );
    reg clk,clear,si;
    wire so;
    SISO_reg S1(clk,clear,si,so);
    initial begin
    clk=0;
    forever #5 clk=~clk;
    end
    initial begin
    clear=1;
    #10;
    clear=0;
    si=1;
    #10
    si=0;
    #10
    si=1;
    #10
    si=0;
    end
endmodule
