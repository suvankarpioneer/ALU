`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 04:34:10 PM
// Design Name: 
// Module Name: complementer
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


module complementer (output reg [3:0] out, input [3:0] A, input enable);
always@(enable or A) 
begin
out = 4'bxxxx;
	if(enable)
		 out=~A;
end
endmodule
