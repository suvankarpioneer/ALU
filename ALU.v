`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2022 04:56:48 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
input enable,
input [3:0] A, B, //inputs
input Carry_in, // for extra signal
input [3:0] select,
output [3:0] adder_Out,
output [1:0] comparator_Out,
output Cout,  // if output exceeds 4 bits
output [3:0] G, // output for binary_to_gray
output [3:0] bitwise_and_out,
output anding_out,
output [3:0] bitwise_or_out,
output [3:0] complementer_out,
output incrementer_C_out, 
output [3:0] incrementer_S,
output [3:0] decrementer_out,
output parity_gen_out,
output oring_out
    );
wire [15:0] sel;
decoder D1(select, enable, sel);
add_sub A1(sel[0], A, B, Carry_in,adder_Out, Cout); // add if carry = 0 , substract if carry = 1
comparator C1(comparator_Out, sel[1], A, B);
gray_to_binary BG1 ( sel[2], G, A);
bitwise_and B1 (sel[3],bitwise_and_out, A, B);
anding A2(sel[4], anding_out, A, B);
bitwise_or B2(sel[5], bitwise_or_out, A,B);
complementer C2(complementer_out, A, sel[6]);
incrementer I1(sel[7], incrementer_C_out, incrementer_S, A);
decrementer D2(sel[8], decrementer_out, A);
parity_gen P1(sel[9], A, parity_gen_out);
oring O1(oring_out, A, B, sel[10]);
endmodule
