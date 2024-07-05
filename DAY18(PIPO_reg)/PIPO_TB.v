`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2024 23:21:04
// Design Name: 
// Module Name: PIPO_TB
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


    module PIPO_TB();
        parameter N = 8;
        reg clk, reset, load;
        reg [N-1:0] pi;
        wire [N-1:0] po;
    
        // Instantiate the PIPO register
        PIPO_reg #(.n(N)) P1 (
            .clk(clk),
            .reset(reset),
            .load(load),
            .pi(pi),
            .po(po)
        );
    
        // Generate clock signal
        initial begin
            clk = 0;
            forever #5 clk = ~clk;
        end
    
        // Test sequence
        initial begin
            // Initialize signals
            reset = 1;
            load = 0;
            pi = 0;
    
            // Reset the register
            #10 reset = 0;
    
            // Load data into the register
            #10 load = 1;
            pi = 8'hA5;  // Example data
    
            // Unload after some time
            #10 load = 0;
            
            // Load new data into the register
            #20 load = 1;
            pi = 8'h3C;  // Example data
    
            // Unload after some time
            #10 load = 0;
    
            // Finish simulation
            #20 $finish;
        end
    endmodule


