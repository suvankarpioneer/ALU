`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 04:16:52 PM
// Design Name: 
// Module Name: binary_to_grey
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


module gray_to_binary ( input enable, output reg [3:0] G, input [3:0] bin);
always@(enable, bin)
begin
G = 4'bxxxx;
if(enable) begin
 G[3] = bin[3];
 G[2] = bin[3]^bin[2];
 G[1] = bin[3]^bin[2]^bin[1];
 G[0] = bin[3]^bin[2]^bin[1]^bin[0];
end
end
endmodule