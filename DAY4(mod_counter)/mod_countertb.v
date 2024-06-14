`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 00:49:22
// Design Name: 
// Module Name: mod_countertb
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


module mod_countertb#(parameter N=12 , WIDTH=4)();
wire [WIDTH-1:0]out;
reg  clk,reset,updown;
mod_counter dut(clk,reset,updown,out);
initial begin
    clk=0;
    reset=1;
    updown=1;
end
always #5 clk=~clk;
initial begin
    #10 reset=0;
    #130 updown=0;
    #300 $finish;
end
endmodule
