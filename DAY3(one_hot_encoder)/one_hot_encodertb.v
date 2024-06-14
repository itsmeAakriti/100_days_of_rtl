`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2024 01:57:23
// Design Name: 
// Module Name: one_hot_encodertb
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


module one_hot_encodertb;
    reg [3:0] ip;
    wire [15:0] op;
    integer i;

    one_hot_encoder dut (
        .ip(ip),
        .op(op)
    );

    initial begin
        ip = 0;  // Initialize input
        for (i = 0; i < 16; i = i + 1) begin
            ip = i;
            #10;
        end
        $stop;  // Stop the simulation
    end
endmodule
