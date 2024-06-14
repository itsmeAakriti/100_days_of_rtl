`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 00:11:05
// Design Name: 
// Module Name: ring_countertb
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


module ring_countertb();
    reg clock, reset;
    wire [3:0] out;

    ring_counter dut (
        .clock(clock),
        .reset(reset),
        .out(out)
    );

    initial begin
        clock = 0;
        reset = 0;
    end

    always #2 clock = ~clock; // Generate clock signal with period of 4 units

    initial begin
        reset = 1;      // Assert reset
        #5 reset = 0; 
        end
        initial begin  // Deassert reset after 5 time units
        #50 $finish;    // Run simulation for a sufficient time to observe the counter
    end
endmodule