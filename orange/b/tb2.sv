`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 01:31:35 AM
// Design Name: 
// Module Name: tb2
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


module tb2;
reg A,B,C,D,E;
wire Y;

qb I1(A,B,C,D,E,Y);

initial
begin
A=0;B=0;C=0;D=0;E=0;#10;
A=0;B=0;C=0;D=0;E=1;#10;
A=0;B=0;C=0;D=1;E=0;#10;
A=0;B=0;C=0;D=1;E=1;#10;
A=0;B=0;C=1;D=0;E=0;#10;
$stop;
end

endmodule

