`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 09:30:47 PM
// Design Name: 
// Module Name: tb
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


module tb_bcdadder4;
    reg [7:0] A, B;      
    wire [7:0] Sum;     
    wire Carry;         

bcdadder4 I1(A,B,Sum, Carry);
    initial begin
        A = 8'b0100_0101; 
        B = 8'b0010_0111; 
        #10;
       
        A = 8'b1001_1001; 
        B = 8'b0000_0001;
        #10;
        A = 8'b0101_0110; 
        B = 8'b0100_0100;
        #10;
    end

endmodule
