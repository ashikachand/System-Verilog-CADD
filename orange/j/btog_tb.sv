`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 01:42:17 AM
// Design Name: 
// Module Name: btog_tb
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


module btog_tb;
reg B0,B1,B2,B3;
wire G0,G1,G2,G3;
btog I1(B0,B1,B2,B3,G0,G1,G2,G3);
initial
begin
 B0=0;B1=0;B2=0;B3=0;
#10;B0=0;B1=0;B2=0;B3=1;
#10;B0=0;B1=0;B2=1;B3=0;
#10;B0=0;B1=0;B2=1;B3=1;
#10;B0=0;B1=1;B2=0;B3=0;
#10;B0=0;B1=1;B2=0;B3=1;
#10;B0=0;B1=1;B2=1;B3=0;
#10;B0=0;B1=1;B2=1;B3=1;
#10;B0=1;B1=0;B2=0;B3=0;
#10;B0=1;B1=0;B2=0;B3=1;
$stop;
end
endmodule

