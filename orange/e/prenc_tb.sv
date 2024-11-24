`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 11:22:09 PM
// Design Name: 
// Module Name: prenc_tb
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


module prenc_tb;
reg [3:0]A;
wire[1:0]Y;
prenc I1(A,Y);

initial
begin
A=4'b0000;#10;A=4'b0001;#10;A=4'b0010;#10;A=4'b0011;#10;A=4'b0100;#10;A=4'b0101;#10;A=4'b0110;
end
endmodule
