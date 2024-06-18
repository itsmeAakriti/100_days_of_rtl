`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 00:01:40
// Design Name: 
// Module Name: mealy1010tb
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


module mealy1010tb(

    );
    
   wire out;
   reg clk,reset,in;
   mealy1010 dut(clk,reset,in,out);
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
   
  
   #200 $finish; 
end     
endmodule
