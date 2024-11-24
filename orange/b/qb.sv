`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 10:38:58 PM
// Design Name: 
// Module Name: qb
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

module qb(A,B,C,D,E,Y);
input logic A,B,C,D,E;
output logic Y;
assign Y=(A&B&C)|(A&B&D)|(A&B&E)|(A&C&E)|~(A|D|E)|(~B&~C&D)|(~B&~C&E)|(~B&~D&~E)|(~C&~D&~E);
endmodule
