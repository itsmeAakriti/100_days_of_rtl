`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2024 23:26:44
// Design Name: 
// Module Name: BCD_TO_7TB
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


module BCD_TO_7TB(

    );
    reg [3:0]in;
    wire [6:0]Segment;
    BCD_TO_7SEG S1(in, Segment);
    initial begin
    in=4'd5;
    #5
    in=4'd2;
    #5
    in=4'd9;
     #5
    $finish;
    end
endmodule
