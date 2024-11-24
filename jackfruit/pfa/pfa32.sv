`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 09:27:49 PM
// Design Name: 
// Module Name: pfa32
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


module pfa32 (A,B,Sum);
    input  logic [31:0] A;
    input  logic [31:0] B;
    output logic [31:0] Sum;
    logic [31:0] G;            
    logic [31:0] P;              
    logic [31:0] C;              

    assign G = A & B;          
    assign P = A ^ B;            

    assign C[0] = 1'b0;         
    genvar i;
    generate
        for (i = 1; i < 32; i++) begin
            assign C[i] = G[i-1] | (P[i-1] & C[i-1]);  
        end
    endgenerate
    assign Sum = P ^ C;         
endmodule
