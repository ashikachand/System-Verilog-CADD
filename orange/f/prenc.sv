`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 11:38:11 PM
// Design Name: 
// Module Name: prenc
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


module prenc(A,Y,v);
input logic[7:0]A;
output logic v;
output logic[2:0]Y;
always_comb
casex(A)
8'b00000000:begin Y=3'b000;v=0;end
8'b00000001:begin Y=3'b001;v=1;end
8'b0000001x:begin Y=3'b001;v=1;end
8'b000001xx:begin Y=3'b010;v=1;end
8'b00001xxx:begin Y=3'b011;v=1;end
8'b0001xxxx:begin Y=3'b100;v=1;end
8'b001xxxxx:begin Y=3'b101;v=1;end
8'b01xxxxxx:begin Y=3'b110;v=1;end
8'b1xxxxxxx:begin Y=3'b111;v=1;end

endcase
endmodule
