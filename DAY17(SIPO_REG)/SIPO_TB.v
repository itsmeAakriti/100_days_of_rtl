`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2024 23:01:30
// Design Name: 
// Module Name: SIPO_TB
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


module SIPO_TB(

    );
    parameter n=8;
    reg clk,reset,si;
    wire [n-1:0]po;
    SIPO_reg#(.n(n))s1 (clk,reset,si,po);
    initial begin
    clk=0;
    forever #5 clk=~clk;
    end
    initial begin
    reset=1;
    #10
    reset=0;
    si=0;
    #5
    si=1;
    #5
    si=1;
    #5
    si=0;
    #5
    si=1;
    #5
    si=1;
    #5
    si=1;
    #5  
    si=1;
    #5
    $finish;
    end
endmodule
