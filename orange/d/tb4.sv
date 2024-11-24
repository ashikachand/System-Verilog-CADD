`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 02:34:08 AM
// Design Name: 
// Module Name: tb4
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


module tb4;
reg [3:0]A;
wire P,D;
qd I4(A,P,D);
initial
begin
A=4'B0000;#10;
A=4'B0001;#10;
A=4'B0010;#10;
A=4'B0011;#10;
A=4'B0100;#10;
A=4'B0101;#10;
$stop;
end
endmodule
