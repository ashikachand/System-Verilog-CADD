`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 08:03:51 PM
// Design Name: 
// Module Name: bcdadder4
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

module bcdadder4 (A,B,Sum,Carry);
input logic [7:0] A;
input logic [7:0] B;  
output logic [7:0] Sum;
output logic Carry ;
logic [3:0] n0sum, n1sum;       
logic n0carry, n1carry;         
logic [3:0] adj_n0, adj_n1;     

    
assign {n0carry, n0sum} = A[3:0] + B[3:0];
assign adj_n0 = (n0sum > 4'd9) ? n0sum + 4'd6 : n0sum;
assign {n1carry, n1sum} = A[7:4] + B[7:4] + n0carry;
assign adj_n1 = (n1sum > 4'd9) ? n1sum + 4'd6 : n1sum;
assign Carry = (n1sum > 4'd9) || n1carry;
assign Sum = {adj_n1, adj_n0};
endmodule
