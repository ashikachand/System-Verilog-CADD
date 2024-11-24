`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2024 05:21:45 AM
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
reg [7:0]A;
wire[2:0]Y;
prenc I1(A,Y);

initial
begin
A=8'b00000000;#10;A=8'b00000001;#10;A=8'b00000010;#10;A=8'b00000011;;#10;A=8'b00000100;#10;A=8'b00000101;#10;
$stop;
end

endmodule
