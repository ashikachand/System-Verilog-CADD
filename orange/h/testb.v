`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 03:16:12 AM
// Design Name: 
// Module Name: testb
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


module testb;
reg [3:0]A,B;
wire [3:0]S;
addercpa4 I(A,B,S);
initial
begin
A=4'b0000;B=4'b0000;#10;
A=4'b0100;B=4'b0010;#10;
A=4'b1000;B=4'b0010;#10;
A=4'b0001;B=4'b0001;#10;
A=4'b0100;B=4'b1000;#10;
$stop;
end
endmodule
