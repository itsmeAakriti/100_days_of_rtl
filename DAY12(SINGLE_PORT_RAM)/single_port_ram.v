`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 00:04:45
// Design Name: 
// Module Name: single_port_ram
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

module single_port_ram
#(parameter width=8,depth=256,addr=8)
( input clk,rst,rd_en,wr_en, 
input [width-1:0]data_in, 
input [addr-1:0]rd_addr,wr_addr,
output reg[width-1:0]data_out     ); 
 reg [width-1:0]mem[depth-1:0];   
  integer i; 
  always@(posedge clk)    
   begin    
    if(rst)    
     begin     
     for(i=0;i<depth;i=i+1)     
     mem[i]<=0;     
     data_out<=0;   
   end     
   else    
    begin     
    if(rd_en)    
     data_out<=mem[rd_addr];     
     else if(wr_en)     
     mem[wr_addr]<=data_in; 
      end   
     end
endmodule
