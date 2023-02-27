`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2022 05:01:25 PM
// Design Name: 
// Module Name: add_sub
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


module add_sub(
input enable,
input [3:0] A,B,
input  Carry_in,
output reg [3:0] Out,
output reg Carry_out
    );
always @(enable, A,B)
begin
Carry_out = 1'bx;
Out = 4'bxxxx;
    if(enable)
    begin
        if (!Carry_in)
            {Carry_out, Out} = A+B;
        else if (Carry_in)
            Out = A+(~B)+Carry_in;    
    end 
end    
 
endmodule
