`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 22:45:47
// Design Name: 
// Module Name: Variable_mul
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


module Variable_mul(output [15:0] OutL, output [7:0] OutS, input [7:0] A,B, input enable);

 reg [3:0] SA, SB;
 reg [7:0] LA, LB;
 reg enableS, enableL;
 small_mul S1(OutS, SA, SB, enableS);
 large_mul L1(OutL, LA, LB, enableL);
 always @(enable, A,B)
 begin
 if(enable)
 begin
 SA = 4'bxxxx;
 SB = 4'bxxxx;
 LA = 8'bxxxxxxxx;
 LB = 8'bxxxxxxxx;
    if ((A>8'b00001111)||(B>8'b00001111))
    begin
        LA = A;
        LB = B;
        enableS = 1'b0;
        enableL = 1'b1;
        
    end
 
    else
    begin
        SA[3:0] = A[3:0];
        SB[3:0] = B[3:0];
        enableS = 1'b1;
        enableL = 1'b0;
        
    end
    
    
 end
 
 end
 
endmodule

