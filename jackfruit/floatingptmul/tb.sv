`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 09:10:35 PM
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
reg [31:0]a,b;
wire [31:0]result;

mul I1(a,b,result);

initial
begin
a=32'h3F800000;b=32'h40000000;#10;
a=32'h4F000000;b=32'h4F000000;#10;
a=32'h00000000;b=32'h3F800000;#10;
a=32'h3E800000;b=32'h3E800000;#10;
$stop;
end
endmodule
