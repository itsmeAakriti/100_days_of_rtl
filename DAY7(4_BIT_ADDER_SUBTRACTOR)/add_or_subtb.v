`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 00:03:40
// Design Name: 
// Module Name: add_or_subtb
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
`timescale 1ns / 1ps

module add_or_subtb;
    reg [3:0] in1, in2;
    reg add_sub;
    wire [3:0] out;
    wire cout;

    add_or_sub dut(.add_sub(add_sub), .in1(in1), .in2(in2), .out(out), .cout(cout));

    initial begin
        // Initialize inputs
        add_sub = 0;
        in1 = 4'b1100;
        in2 = 4'b1111;
          // Perform addition

        // Wait for 5 time units
        #5;

        // Perform subtraction
        in1 = 4'b1111;
        in2 = 4'b1100;
        add_sub = 1;

        // Wait for another 5 time units
        #5;
          add_sub = 1;
          in1 = 4'b1100;
          in2 = 4'b1111;
                 // Perform addition
       
               // Wait for 5 time units
           #5;
        // Finish the simulation
        $finish;
    end

    // Monitor changes in signals
    initial begin
        $monitor("Time = %0d: in1 = %b, in2 = %b, add_sub = %b, out = %b, cout = %b",
                 $time, in1, in2, add_sub, out, cout);
    end
endmodule
