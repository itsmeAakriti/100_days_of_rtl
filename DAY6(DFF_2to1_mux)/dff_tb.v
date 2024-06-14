`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 01:06:55
// Design Name: 
// Module Name: dff_tb
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


module dff_tb(

    );
    reg clk,d;
    wire q;
    dff_mux_21 dut(clk,d,q);
    initial begin
    clk=0;
    d=0;
    end
    always #2 clk=~clk;
    initial begin 
    #5 d=1;
    #5 d=0;
    #5 d=1;
    #5 $finish;
    end
endmodule
