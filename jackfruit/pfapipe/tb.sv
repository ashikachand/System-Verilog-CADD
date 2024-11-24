`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 10:07:22 PM
// Design Name: 
// Module Name: tb
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

module tb;
reg [31:0]A,B;
reg reset, clk=0;
wire [31:0]Sum;

pfa32pipe I1(clk,reset,A,B,Sum);

always
#5 clk=~clk;

initial
begin
reset=1;#10;
A=32'h3F800000;B=32'h40000000;#10;

reset=0;#10;
A=32'h4F000000;B=32'h4F000000;#10;
A=32'h00000000;B=32'h3F800000;#10;
A=32'h3E800000;B=32'h3E800000;#10;
$stop;
end
endmodule