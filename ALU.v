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
input [7:0] AL, BL, //8-bit inputs for testing
input [3:0] A, B, //inputs
input Carry_in, // for extra signal
input [3:0] select,
output [3:0] adder_Out,
output [1:0] comparator_Out,
output Cout,  // if output exceeds 4 bits
output reg [3:0] Gray_out, // output for binary_to_gray
output [3:0] bitwise_and_out,
output anding_out,
output [3:0] bitwise_or_out,
output [3:0] complementer_out,
output incrementer_C_out, 
output [3:0] incrementer_S,
output [3:0] decrementer_out,
output parity_gen_out,
output oring_out,
output [7:0] multiplier_out,
output reg [3:0] bin_out,
output [7:0] OutL_Add, output [3:0] OutS_Add, output CoutL_Add, CoutS_Add,
output [15:0] OutL_Mul, output [7:0] OutS_Mul
    );
wire [15:0] sel;
wire [3:0] tempG;
wire [3:0] tempB;
decoder D1(select, enable, sel);
add_sub A1(sel[0], A, B, Carry_in,adder_Out, Cout); // add if carry = 0 , substract if carry = 1
comparator C1(comparator_Out, sel[1], A, B);
bin2gray BG1 (A, tempG);
bitwise_and B1 (sel[3],bitwise_and_out, A, B);
anding A2(sel[4], anding_out, A, B);
bitwise_or B2(sel[5], bitwise_or_out, A,B);
complementer C2(complementer_out, A, sel[6]);
incrementer I1(sel[7], incrementer_C_out, incrementer_S, A);
decrementer D2(sel[8], decrementer_out, A);
parity_gen P1(sel[9], A, parity_gen_out);
oring O1(oring_out, A, B, sel[10]);
multiplier M1(A,B, sel[11],multiplier_out);
gray2bin GB1(A,tempB);
Variable_adder VA1(OutL_Add, OutS_Add, CoutL_Add, CoutS_Add, AL,BL, Carry_in, sel[13]);
Variable_mul VM1(OutL_Mul, OutS_Mul, A,B, sel[14]);
always @(sel[2], sel[12], A) begin
Gray_out = 4'bxxxx;
bin_out = 4'bxxxx;
if(sel[2])
    Gray_out = tempG;
if (sel[12])
    bin_out = tempB;
end

endmodule
