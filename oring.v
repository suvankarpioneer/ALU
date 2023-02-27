`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 05:04:15 PM
// Design Name: 
// Module Name: oring
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


module oring(output reg out, input [3:0] A,B, input enable);
always@(enable,A,B)
    begin
        out = 1'bx;
        if (enable)
            out = A||B;
    end
endmodule
