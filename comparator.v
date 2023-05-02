`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2022 06:19:32 PM
// Design Name: 
// Module Name: comparator
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


module comparator
(
output reg [1:0] Out,
input enable,
input [3:0] A,B
);
always @(enable, A,B)
begin
Out = 2'bxx;
if (enable)
    begin
    if (A>B)
        Out = 2'b10;
    else if (A<B)
        Out = 4'b01;
    else
        Out = 4'b00; 
    end
end


endmodule
