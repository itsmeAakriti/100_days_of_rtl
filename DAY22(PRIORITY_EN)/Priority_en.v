`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 23:23:09
// Design Name: 
// Module Name: Priority_en
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


module Priority_en(
input [7:0]in,
input en,
output reg [2:0]out
    );
    
    always@(in,en)
    begin
    if(en)
    begin
    casex(in)
    8'b00000001:out=3'b000;
    8'b0000001x:out=3'b001;
    8'b000001xx:out=3'b010;
    8'b00001xxx:out=3'b011;
    8'b0001xxxx:out=3'b100;
    8'b001xxxxx:out=3'b101; 
    8'b01xxxxxx:out=3'b110;
    8'b1xxxxxxx:out=3'b111;
    default:out=3'bxxx;
    endcase
    end
    else
    out=3'bxxx;
    end
endmodule
