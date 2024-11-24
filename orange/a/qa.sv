`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 10:20:43 PM
// Design Name: 
// Module Name: qa
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


module qa(A,B,C,D,Y);
input logic A,B,C,D;
output logic Y;
assign Y=((~A)&(~B)&(~C)&(~D))|(A&~B&~C)|(A&~B&C&~D)|(A&B&D)|(~A&~B&C&~D)|(B&~C&D)|(~A);
endmodule
