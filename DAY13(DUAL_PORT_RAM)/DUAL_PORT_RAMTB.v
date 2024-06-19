`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 23:56:17
// Design Name: 
// Module Name: DUAL_PORT_RAMTB
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



module DUAL_PORT_RAMTB;

    // Parameters
    parameter width = 8;
    parameter depth = 256;
    parameter addr = 8;

    // Inputs
    reg clk;
    reg rst;
    reg rd_en0;
    reg rd_en1;
    reg wr_en0;
    reg wr_en1;
    reg [width-1:0] data_in0;
    reg [width-1:0] data_in1;
    reg [addr-1:0] rd_addr0;
    reg [addr-1:0] wr_addr0;
    reg [addr-1:0] rd_addr1;
    reg [addr-1:0] wr_addr1;

    // Outputs
    wire [width-1:0] data_out0;
    wire [width-1:0] data_out1;

    // Instantiate the DUT (Device Under Test)
    DUAL_PORT_RAM #(
        .width(width),
        .depth(depth),
        .addr(addr)
    ) dut (
        .clk(clk),
        .rst(rst),
        .rd_en0(rd_en0),
        .rd_en1(rd_en1),
        .wr_en0(wr_en0),
        .wr_en1(wr_en1),
        .data_in0(data_in0),
        .data_in1(data_in1),
        .rd_addr0(rd_addr0),
        .wr_addr0(wr_addr0),
        .rd_addr1(rd_addr1),
        .wr_addr1(wr_addr1),
        .data_out0(data_out0),
        .data_out1(data_out1)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10 ns period (100 MHz)
    end

    // Test sequence
    initial begin
        // Initialize inputs
        rst = 1;
        rd_en0 = 0;
        rd_en1 = 0;
        wr_en0 = 0;
        wr_en1 = 0;
        data_in0 = 0;
        data_in1 = 0;
        rd_addr0 = 0;
        wr_addr0 = 0;
        rd_addr1 = 0;
        wr_addr1 = 0;

        // Reset the DUT
        #10;
        rst = 0;
        #10;
        rst = 1;
        #10;
        rst = 0;
        #10;

        // Write to port 0
        wr_en0 = 1;
        wr_addr0 = 8'hA;
        data_in0 = 8'h55;
        #10;
        wr_en0 = 0;

        // Write to port 1
        wr_en1 = 1;
        wr_addr1 = 8'hB;
        data_in1 = 8'hAA;
        #10;
        wr_en1 = 0;

        // Read from port 0
        rd_en0 = 1;
        rd_addr0 = 8'hA;
        #10;
        rd_en0 = 0;

        // Read from port 1
        rd_en1 = 1;
        rd_addr1 = 8'hB;
        #10;
        rd_en1 = 0;

        // Check results
        $display("Read data from port 0: %h (Expected: 55)", data_out0);
        $display("Read data from port 1: %h (Expected: AA)", data_out1);

        // More tests can be added here

        // End of test
        $stop;
    end
endmodule

