`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 23:24:44
// Design Name: 
// Module Name: DUAL_PORT_RAM
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
module DUAL_PORT_RAM #(parameter width=8, depth=256, addr=8)(
    input clk, rst, rd_en0, rd_en1, wr_en0, wr_en1,
    input [width-1:0] data_in0, data_in1,
    input [addr-1:0] rd_addr0, wr_addr0, rd_addr1, wr_addr1,
    output reg [width-1:0] data_out0, data_out1
);
    reg [width-1:0] mem[depth-1:0];
    integer i;

    always @(posedge clk) begin
        if (rst) begin
            for (i = 0; i < depth; i = i + 1)
                mem[i] <= 0;
            data_out0 <= 0;
            data_out1 <= 0;
        end else begin
            // Write Operations
            if (wr_en0)
                mem[wr_addr0] <= data_in0;
            if (wr_en1)
                mem[wr_addr1] <= data_in1;
            
            // Read Operations
            if (rd_en0)
                data_out0 <= mem[rd_addr0];
            if (rd_en1)
                data_out1 <= mem[rd_addr1];
        end
    end
endmodule
module DUAL_PORT_RAM #(parameter width=8, depth=256, addr=8)(
    input clk, rst, rd_en0, rd_en1, wr_en0, wr_en1,
    input [width-1:0] data_in0, data_in1,
    input [addr-1:0] rd_addr0, wr_addr0, rd_addr1, wr_addr1,
    output reg [width-1:0] data_out0, data_out1
);
    reg [width-1:0] mem[depth-1:0];
    integer i;

    always @(posedge clk) begin
        if (rst) begin
            for (i = 0; i < depth; i = i + 1)
                mem[i] <= 0;
            data_out0 <= 0;
            data_out1 <= 0;
        end else begin
            // Write Operations
            if (wr_en0)
                mem[wr_addr0] <= data_in0;
            if (wr_en1)
                mem[wr_addr1] <= data_in1;
            
            // Read Operations
            if (rd_en0)
                data_out0 <= mem[rd_addr0];
            if (rd_en1)
                data_out1 <= mem[rd_addr1];
        end
    end
endmodule

