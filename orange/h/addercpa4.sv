`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 02:50:53 AM
// Design Name: 
// Module Name: addercpa4
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

module addercpa4(A,B,S);
    input  logic [3:0] A;  
    input  logic [3:0] B; 
    output logic [3:0] S; 
    logic C0, C1, C2, C3;

    assign S[0] = A[0] ^ B[0];              
    assign C0   = A[0] & B[0];           

    assign S[1] = A[1] ^ B[1] ^ C0;        
    assign C1   = (A[1] & B[1]) | (A[1] & C0) | (B[1] & C0); 

    assign S[2] = A[2] ^ B[2] ^ C1;          
    assign C2   = (A[2] & B[2]) | (A[2] & C1) | (B[2] & C1);

    assign S[3] = A[3] ^ B[3] ^ C2;        
    assign C3   = (A[3] & B[3]) | (A[3] & C2) | (B[3] & C2);

endmodule

