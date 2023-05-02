`timescale 1ns / 1ps

module small_mul(
 output reg [7:0] Out,
 input [3:0] A,B,
 input enable
    );
    always @(enable, A,B)
    begin
   
    Out = 8'bxxxxxxxx;
    if(enable)
    Out = A*B;
    end
endmodule