`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2024 01:22:41
// Design Name: 
// Module Name: clock_dividertb
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


module clock_dividertb(

    );
    wire divideby2,divideby4,divideby8;
    reg clk,reset;
    
    clock_divider dut(clk,reset,divideby2,divideby4,divideby8);
    initial begin
    clk=0;
    reset=1;
    end
    always #2 clk=~clk;
    initial begin
    #2 reset =0;
    end
    
    
endmodule
