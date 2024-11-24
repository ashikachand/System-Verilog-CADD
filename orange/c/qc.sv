`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 01:47:14 AM
// Design Name: 
// Module Name: qc
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


module qc(A,B,C,D,Y,Z);
input logic A,B,C,D;
output logic Y,Z;
assign Y=(~A&D)|(A&~C&D)|(A&~B&C)|(A&B&C&D);
assign Z=(B&D)|(A&~C&D);
endmodule