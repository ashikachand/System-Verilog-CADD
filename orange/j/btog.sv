`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 01:39:35 AM
// Design Name: 
// Module Name: btog
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


module btog(
B0,B1,B2,B3,G0,G1,G2,G3

    );
   input logic B0,B1,B2,B3;
   output logic G0,G1,G2,G3;
   assign G3=B3;
   
   xor X1(G2,B2,B3);
   xor X2(G1,B1,B2);
   xor X3(G0,B0,B1);
   
   
endmodule

