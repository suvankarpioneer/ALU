`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 05:17:50 PM
// Design Name: 
// Module Name: anding
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


module anding (input enable, output reg out, input [3:0] A, B);
always@(enable, A,B)
begin
    out = 1'bx;
    if (enable)
    out = A&&B;
end
endmodule