`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 23:31:51
// Design Name: 
// Module Name: add_or_sub
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


module add_or_sub(
    input add_sub,
    input [3:0] in1,
    input [3:0] in2,
    output [3:0] out,cout
);
    
    wire [3:0]b;
    genvar g;
    assign b[0]=add_sub ^ in2[0];
    full_adder f0(.a(in1[0]), .b(b[0]), .cin(add_sub), .sum(out[0]), .cout(cout[0]));
    generate
     for(g=1;g<4;g=g+1)
     begin
     assign b[g]=in2[g]^add_sub;
      full_adder f(.a(in1[g]), .b(b[g]), .cin(cout[g-1]), .sum(out[g]), .cout(cout[g]));
     end
    endgenerate
//    assign b[1]=add_sub ^ in2[1];
//    assign b[2]=add_sub ^ in2[2];
//    assign b[3]=add_sub ^ in2[3];
     
    
   

    
//    full_adder f1(.a(in1[1]), .b(b[1]), .cin(w[0]), .sum(out[1]), .cout(w[1]));
//    full_adder f2(.a(in1[2]), .b(b[2]), .cin(w[1]), .sum(out[2]), .cout(w[2]));
//    full_adder f3(.a(in1[3]), .b(b[3]), .cin(w[2]), .sum(out[3]), .cout(cout));
endmodule