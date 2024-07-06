`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2024 00:11:10
// Design Name: 
// Module Name: BIN_TO_BCD_TB
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


module BIN_TO_BCD_TB(

    );
    wire [15:0]bcd;
    reg[13:0]bin;
    BIN_TO_BCD B1(bin,bcd);
    initial begin
    bin=13'd1345;
    #10
    bin=13'd2345;
    #10
    bin=13'd8191;
    end
endmodule

