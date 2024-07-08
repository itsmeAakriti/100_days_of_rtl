`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 23:05:43
// Design Name: 
// Module Name: Parity_gen_tb
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


module Parity_gen_tb(

    );
    reg [7:0]data_in;
    reg even_odd;
    wire parity;
    Parity_gen p1(data_in,even_odd,parity);
    initial begin
    even_odd=1;
    data_in=8'd3;
    #10
    even_odd=0;
    #10 
    $finish;
    end
endmodule
