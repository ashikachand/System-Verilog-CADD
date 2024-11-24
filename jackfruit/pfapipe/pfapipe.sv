`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 09:55:21 PM
// Design Name: 
// Module Name: pfapipe
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


module pfa32pipe (
    input  logic clk,                      
    input  logic reset,                   
    input  logic [31:0] A, B,             
    output logic [31:0] Sum            
);

    logic [31:0] G1, P1;                  
    logic [31:0] G2, P2, C;                

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            G1 <= 32'b0;
            P1 <= 32'b0;
        end else begin
            G1 <= A & B;                 
            P1 <= A ^ B;           
        end
    end

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            G2 <= 32'b0;
            P2 <= 32'b0;
            C  <= 32'b0;
        end else begin
            G2[0] = G1[0];                
            P2[0] = P1[0];
            for (int i = 1; i < 32; i++) begin
                G2[i] = G1[i] | (P1[i] & G2[i-1]);  
                P2[i] = P1[i];
            end
            C[0] = 1'b0;                   
            for (int i = 1; i < 32; i++) begin
                C[i] = G2[i-1];          
            end
        end
    end

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            Sum <= 32'b0;
        end else begin
            Sum <= P2 ^ C;                
        end
    end

endmodule

