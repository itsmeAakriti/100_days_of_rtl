`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 21:41:49
// Design Name: 
// Module Name: master_slave_jk
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


module master_slave_jk(
    input clk,
    input reset,
    input j,
    input k,
    output out
);
    wire master_q, master_q_bar;
    assign master_q_bar = ~master_q;

    // Master JK Flip-Flop
    jk_ff master_ff (
        .clk(clk),           // Positive edge triggered
        .reset(reset),
        .j(j),
        .k(k),
        .q(master_q)
        
    );

    // Slave JK Flip-Flop
    jk_ff slave_ff (
        .clk(~clk),          // Negative edge triggered
        .reset(reset),
        .j(master_q),        // J input from master's output
        .k(master_q_bar), // K input from master's complement output
        .q(out)
    );

endmodule
