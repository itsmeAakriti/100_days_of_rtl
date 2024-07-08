`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 23:49:58
// Design Name: 
// Module Name: Priority_en_tb
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


module Priority_en_tb(

    );
    reg [7:0]in;
    reg en;
    wire [2:0]out;
    integer i;
     Priority_en dut (
           .in(in),
           .en(en),
           .out(out)
       );
    
    task init();
    begin
    in=0;
    en=0;
    end
    endtask
    
    task val(input e);
    begin
    en=e;
    for(i=0;i<512;i=i+1)
    begin
    in=i;
    #5;
    end
    end
    endtask
    
    initial begin
     init();
     #10
     val(1);
    end
endmodule
