`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 22:04:39
// Design Name: 
// Module Name: master_slave_tb
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

module master_slave_tb;
    reg clk, reset, j, k;
    wire q;

    // Instantiate the DUT (Device Under Test)
    master_slave_jk dut(clk, reset, j, k, q);

    // Task to initialize inputs
    task initialize;
        begin
            clk = 0;
            reset = 0;
            j = 1;
            k = 0;
        end
    endtask

    // Task to simulate inputs
    task simulate;
        integer m; 
        begin
            for(m = 0; m < 4; m = m + 1) begin
                {j, k} = m;
                #10;  // Wait for 10 time units to observe the change
            end
        end
    endtask

    // Task to generate clock signal
    task clk_gen;
        input integer cycles;
        integer i;
        begin
            for(i = 0; i < cycles; i = i + 1) begin
                #5 clk = ~clk;
            end
        end
    endtask

    // Initial block to run the test
    initial begin
        initialize;
         // Deassert reset after some time
        fork 
            simulate;
            clk_gen(10);
        join
        $finish;  // Finish the simulation
    end

    // Monitor the outputs
    initial begin
        $monitor("Time=%0t : clk=%b reset=%b j=%b k=%b q=%b", $time, clk, reset, j, k, q);
    end

endmodule
