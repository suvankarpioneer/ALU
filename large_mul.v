`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 21:53:59
// Design Name: 
// Module Name: large_mul
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


module large_mul(
 output reg [15:0] Out,
 input [7:0] A,B,
 input enable
    );
    always @(enable, A,B)
    begin
   
    Out = 16'bxxxxxxxxxxxxxxxx;
    if(enable)
    Out = A*B;
    end
endmodule
