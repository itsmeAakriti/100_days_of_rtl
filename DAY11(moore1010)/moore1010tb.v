`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 00:28:27
// Design Name: 
// Module Name: moore1010tb
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


module moore1010tb(

    );
    wire out;
    reg clk,reset,in;
      more1010 dut(clk,reset,in,out);
      initial begin
      clk=0;
      forever #5 clk=~clk;
      end
      
      initial begin
      reset=1;
      in=0;
      #10 reset=0;
      #10 in=1;
      #10 in=0;
      #10 in=1;
      #10 in=0;
      #10 in=1;
      #10 in=1;
      #10 in=0;
      #10 in=1;
      #10 in=0;
      
     
      #20 $finish; 
   end     

endmodule
