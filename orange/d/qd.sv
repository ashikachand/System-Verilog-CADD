`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 02:14:11 AM
// Design Name: 
// Module Name: qd
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

module qd (A,P,D);
    input  logic [3:0] A;
    output logic P;
    output logic D;

    assign P = (~A[3] & ~A[2] &  A[1] &  A[0]) |(~A[3] & ~A[2] &  A[1] & ~A[0]) | 
               (~A[3] &  A[2] & ~A[1] &  A[0]) |(~A[3] &  A[2] &  A[1] & ~A[0]) | 
               ( A[3] & ~A[2] & ~A[1] &  A[0]) |( A[3] & ~A[2] &  A[1] & ~A[0]); 

    assign D = (~A[3] & ~A[2] &  A[1] & ~A[0]) |(~A[3] &  A[2] & ~A[1] &  A[0]) | 
               ( A[3] & ~A[2] & ~A[1] & ~A[0]) |( A[3] &  A[2] & ~A[1] &  A[0]) | 
               ( A[3] & ~A[2] &  A[1] & ~A[0]) |(~A[3] & ~A[2] & ~A[1] & ~A[0]);  

endmodule
