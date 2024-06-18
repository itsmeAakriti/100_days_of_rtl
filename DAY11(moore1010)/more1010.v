`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 00:15:34
// Design Name: 
// Module Name: more1010
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


module more1010(
    input clk, reset, in,
    output reg out
);

parameter idle = 3'b000, s0 = 3'b001, s1 = 3'b010, s2 = 3'b011, s3 = 3'b100;
reg [2:0] pr_st, nxt_st;

// State transition on clock edge
always @(posedge clk or posedge reset) begin
    if (reset) begin
        pr_st <= idle;
        out <= 0;
    end else begin
        pr_st <= nxt_st;
    end
end

// Next state logic and output logic
always @(pr_st or in) begin
    case (pr_st)
        idle: begin
            if (in) nxt_st = s0;
            else nxt_st = idle;
            out = 0;
        end
        s0: begin
            if (in) nxt_st = s0;
            else nxt_st = s1;
            out = 0;
        end
        s1: begin
            if (in) nxt_st = s2;
            else nxt_st = idle;
            out = 0;
        end
        s2: begin
            if (in) nxt_st = s0;
            else nxt_st = s3;
            out = 0;
        end
        s3: begin
            if (in) nxt_st = idle;
            else nxt_st = idle;
            out = 1; // Output is set to 1 when in state s3
        end
        default: begin
            nxt_st = idle;
            out = 0;
        end
    endcase
end

endmodule
