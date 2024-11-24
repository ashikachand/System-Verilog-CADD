`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 11:13:08 PM
// Design Name: 
// Module Name: prenc
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


module prenc(A,Y);
input logic[3:0]A;
output logic[1:0]Y;
always_comb
casex(A)
4'b0000:Y=2'b00;
4'b0001:Y=2'b01;
4'b001x:Y=2'b10;
4'b01xx:Y=2'b10;
4'b1xxx:Y=2'b11;
endcase
endmodule
