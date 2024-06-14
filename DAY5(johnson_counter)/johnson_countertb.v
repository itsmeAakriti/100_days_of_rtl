`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 00:10:37
// Design Name: 
// Module Name: johnson_countertb
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


module johnson_countertb();
reg clk,reset;
wire [3:0] out;
johnson_counter dut(clk,reset,out);
initial begin
clk=0;
reset=1;
end
 always #5 clk=~clk;
 initial begin
 #10 reset = 0;
 #100 $finish;
 end
endmodule
