`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2024 23:26:19
// Design Name: 
// Module Name: BCD_TO_7SEG
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


module BCD_TO_7SEG(
input [3:0] in,
output reg [6:0]Segment
    );
    
    always@(in)
    begin
    case(in)
                0 : Segment = 7'b1111110;
                1 : Segment = 7'b0110000;
                2 : Segment = 7'b1101101;
                3 : Segment = 7'b1111001;
                4 : Segment = 7'b0110011;
                5 : Segment = 7'b1011011;
                6 : Segment = 7'b1011111;
                7 : Segment = 7'b1110000;
                8 : Segment = 7'b1111111;
                9 : Segment = 7'b1111011;
   endcase
    end
endmodule
