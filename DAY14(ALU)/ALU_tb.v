`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2024 19:50:41
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb(

    );
    reg [3:0]A,B;
    reg [2:0]op;
    wire [3:0] result;
    ALU DUT(A,B,op,result);
    initial begin
    A=4'b0010;
    B=4'b0011;
    op=3'b000;
    #10
    $display("result of %b + %b =%b",A,B,result);
     A=4'b0010;
     B=4'b0011;
     op=3'b010;
     #10
    $display("result of %b & %b =%b",A,B,result);
      A=4'b0010;
      B=4'b0011;
      op=3'b001;
      #10
      $display("result of %b - %b =%b",A,B,result);
     A=4'b0010;
         B=4'b0011;
         op=3'b011;
         #10
        $display("result of %b | %b =%b",A,B,result);
        A=4'b0010;
        B=4'b0011;
        op=3'b100;
         #10
        $display("result of %b ^ %b =%b",A,B,result);
      $finish;
    end

endmodule
