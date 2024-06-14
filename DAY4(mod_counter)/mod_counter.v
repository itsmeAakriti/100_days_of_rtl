`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 00:32:06
// Design Name: 
// Module Name: mod_counter
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


module mod_counter #(parameter N=12 , WIDTH=4)
(
input clk,reset,updown,
output reg [WIDTH-1:0]out
    );
  always @(posedge clk)
    begin
    if(reset)
    begin
    out<=0;
    end
    else begin
         if(updown==1)
           begin
              if(out==N-1)
                  out<=0;
              else
                  out<=out+1;
           end
         else
           begin
             if(out==0)
                  out<=N-1;
             else
                  out<=out-1;
            end  
    end
   end
endmodule
