`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 00:07:15
// Design Name: 
// Module Name: single_port_ram_tb
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


module single_port_ram_tb;

  parameter width = 8;
  parameter depth = 256;
  parameter addr = 8;

  reg clk;
  reg rst;
  reg rd_en;
  reg wr_en;
  reg [width-1:0] data_in;
  reg [addr-1:0] rd_addr;
  reg [addr-1:0] wr_addr;
  wire [width-1:0] data_out;

  // Assuming single_port_ram module is defined elsewhere and instantiated here
  single_port_ram #(
    .width(width),
    .depth(depth),
    .addr(addr)
  ) dut (
    .clk(clk),
    .rst(rst),
    .rd_en(rd_en),
    .wr_en(wr_en),
    .data_in(data_in),
    .rd_addr(rd_addr),
    .wr_addr(wr_addr),
    .data_out(data_out)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Test sequence
  initial begin
    rst = 1;
    rd_en = 0;
    wr_en = 0;
    data_in = 0;
    rd_addr = 0;
    wr_addr = 0;
    #10 rst = 0;

    // Write operation
    wr_en = 1;
    wr_addr = 8'hAC;
    data_in = 8'h21;
    #10 wr_en = 0;

    // Read operation
    #10 rd_en = 1;
    rd_addr = 8'hAC;
    #10 rd_en = 0;
  end

  // Monitor
  initial begin
    $monitor("time=%t, rd_en=%b, wr_en=%b, data_in=%h, data_out=%h", $time, rd_en, wr_en, data_in, data_out);
  end

  // End simulation
  initial begin
    #100 $finish;
  end

endmodule

