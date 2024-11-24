`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2024 10:45:01 PM
// Design Name: 
// Module Name: fa
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

module fa(a,b,cin,sum,cout);
input logic a,b,cin;;
output logic sum,cout;
    wire [7:0] dec_out;  

    decoder_3to8 decoder (a, b, cin,dec_out);

    assign sum = dec_out[1] | dec_out[2] | dec_out[4] | dec_out[7];  
    assign cout = dec_out[3] | dec_out[5] | dec_out[6] | dec_out[7];  
endmodule


module decoder_3to8 (
    input wire A, B, Cin,  
    output wire [7:0] Y    
);
    assign Y[0] = ~A & ~B & ~Cin;  
    assign Y[1] = ~A & ~B & Cin;   
    assign Y[2] = ~A & B & ~Cin;   
    assign Y[3] = ~A & B & Cin;    
    assign Y[4] = A & ~B & ~Cin;   
    assign Y[5] = A & ~B & Cin;   
    assign Y[6] = A & B & ~Cin;    
    assign Y[7] = A & B & Cin;    
endmodule


