`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 04:53:29 PM
// Design Name: 
// Module Name: incrementer
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


module incrementer (input enable, output reg C_out, output reg [3:0] S, input [3:0] A);
wire W0, W1;
always@ (enable, A)
begin
C_out = 1'bx;
S = 4'bxxxx;
if (enable) begin
 S[0]= ~A[0];
 S[1]= A[1]^A[0];
 S[2]= A[2]^(A[1]&&A[0]);
 S[3]= A[3]^(A[2]&&A[1]&&A[0]);
 C_out= A[3]&&A[2]&&A[1]&&A[0];
 end
 end
endmodule