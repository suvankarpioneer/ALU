`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 04:46:39 PM
// Design Name: 
// Module Name: decrementer
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


module decrementer(input enable, output reg [3:0] S, input [3:0] A);
always@ (enable, A) begin
S = 4'bxxxx;
if (enable) begin
 S[0]= ~A[0];
 S[1]= ~(A[0]^A[1]);
 S[2]= ~(A[2]^(A[0]||A[1]));
 S[3]= ~(A[3]^(A[2]||A[1]||A[0])); 
 end
end
endmodule

