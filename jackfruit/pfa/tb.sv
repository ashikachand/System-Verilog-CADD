`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 09:35:39 PM
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
wire [31:0]Sum;

pfa32 I1(A,B,Sum);

initial
begin
A=32'h3F800000;B=32'h40000000;#10;
A=32'h4F000000;B=32'h4F000000;#10;
A=32'h00000000;B=32'h3F800000;#10;
A=32'h3E800000;B=32'h3E800000;#10;
$stop;
end
endmodule
