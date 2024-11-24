`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 10:30:50 PM
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
reg A,B,C,D;
wire Y;

qa I1(A,B,C,D,Y);

initial
begin
A=0;B=0;C=0;D=0;#10;
A=0;B=0;C=0;D=1;#10;
A=0;B=0;C=1;D=0;#10;
A=0;B=0;C=1;D=1;#10;
A=0;B=1;C=0;D=0;#10;
$stop;
end

endmodule
