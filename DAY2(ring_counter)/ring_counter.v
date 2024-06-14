`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 23:53:08
// Design Name: 
// Module Name: ring_counter
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


module ring_counter(
    input clock, 
    input reset,
    output reg [3:0] out
);
    integer i;

    always @(posedge clock) begin
        if (reset)
            out <= 4'b0001; // Initialize the counter on reset
        else begin
            out[3] <= out[0];
            for (i = 0; i < 3; i = i + 1) begin
                out[i] <= out[i+1];
            end
        end
    end
endmodule
   

