`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.07.2024 00:08:22
// Design Name: 
// Module Name: edge_det_tb
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


module edge_det_tb(

    );
    wire edge_det;
    reg clk,signal;

   
edge_det e1(clk,signal,edge_det);
   
   initial begin
   clk=0;
   forever #5 clk=~clk;
   end
   initial begin
   signal=0;
   forever #12 signal=~signal;
   #100 $finish;
   end
  
endmodule
