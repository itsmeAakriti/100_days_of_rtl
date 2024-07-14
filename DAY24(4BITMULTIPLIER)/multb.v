`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2024 23:46:54
// Design Name: 
// Module Name: multb
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


module multb(

    );
    
    reg [3:0]a,b;
    wire [7:0]out;
    mul m1(a,b,out);
    initial begin
    a=4'd2;
    b=4'd3;
    #10
     a=4'd4;
       b=4'd5;
       #10
        a=4'd6;
          b=4'd7;
          #10
          $finish;
    end
endmodule
