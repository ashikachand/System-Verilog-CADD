`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2024 11:01:14 PM
// Design Name: 
// Module Name: fa_tb
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

module fa_tb;
reg a,b,cin;
wire cout,sum;
fa I1(a,b,cin,sum,cout);

initial
begin
a=0;b=0;cin=0;
#10 a=0;b=0;cin=1;
#10 a=0;b=1;cin=0;
#10 a=0;b=1;cin=1;
#10 a=1;b=0;cin=0;
#10 a=1;b=0;cin=1;
#10 a=1;b=1;cin=0;
#10 a=1;b=1;cin=1;
$stop;
end
endmodule

