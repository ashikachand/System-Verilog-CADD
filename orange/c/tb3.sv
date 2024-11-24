`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 01:58:44 AM
// Design Name: 
// Module Name: tb3
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

module tb3;
reg A,B,C,D;
wire Y,Z;

qc I1(A,B,C,D,Y,Z);

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
