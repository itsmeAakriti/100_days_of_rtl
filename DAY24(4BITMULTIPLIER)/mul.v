`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2024 23:34:25
// Design Name: 
// Module Name: mul
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



module mul(
    input [3:0] a, b,
    output [7:0] out
);
    wire [3:0] m0;
    wire [4:0] m1;
    wire [5:0] m2;
    wire [6:0] m3;
    wire [7:0] s1, s2, s3;

    // Perform partial product calculations
    assign m0 = a[0] ? b : 4'b0000;
    assign m1 = a[1] ? {b, 1'b0} : 5'b00000; // Left shift by 1
    assign m2 = a[2] ? {b, 2'b00} : 6'b000000; // Left shift by 2
    assign m3 = a[3] ? {b, 3'b000} : 7'b0000000; // Left shift by 3

    // Sum the partial products
    assign s1 = {3'b000, m0} + {2'b00, m1}; // Align m0 and m1
    assign s2 = s1 + {1'b0, m2}; // Align result with m2
    assign s3 = s2 + m3; // Align result with m3

    assign out = s3;

endmodule

//module mul(
//input [3:0]a,b,
//output [7:0]out
//    );
//    wire [3:0]m0;
//    wire [4:0]m1;
//    wire[5:0]m2;
//    wire[6:0]m3;
//    wire [7:0] s1,s2,s3;
    
//    assign m0={4{a[0]}}&b[3:0];
//    assign m1={4{a[1]}}&b[3:0]; 
//    assign m2={4{a[2]}}&b[3:0]; 
//    assign m3={4{a[3]}}&b[3:0];
    
//    assign s1=m0+(m1<<1);
//    assign s2=s1+(m2<<1);
//    assign s3=s2+(m3<<1);
//    assign out=s3;
//endmodule
