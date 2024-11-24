`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 07:57:36 PM
// Design Name: 
// Module Name: mul
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

module mul (a,b,result);
    input  logic [31:0] a;   
    input  logic [31:0] b;       
    output logic [31:0] result;

    logic [7:0] exp_a, exp_b, exp_result;
    logic [22:0] frac_a, frac_b;
    logic [23:0] mant_a, mant_b; 
    logic [47:0] mant_result;  
    logic [23:0] mant_result_norm;

    assign exp_a  = a[30:23];        
    assign exp_b  = b[30:23];       
    assign frac_a = a[22:0];          
    assign frac_b = b[22:0];        

    assign mant_a = {1'b1, frac_a};   
    assign mant_b = {1'b1, frac_b};

    assign mant_result = mant_a * mant_b;

    always_comb begin
        if (mant_result[47]) begin
            mant_result_norm = mant_result[46:23]; 
            exp_result = exp_a + exp_b - 127 + 1; 
        end else begin
            mant_result_norm = mant_result[45:22];
            exp_result = exp_a + exp_b - 127;
        end
    end

    always_comb begin
        if (exp_result >= 8'hFF) begin
            result = {1'b0, 8'hFF, 23'b0};
        end else if (exp_result <= 8'h00) begin
            result = 32'b0;
        end else begin
            result = {1'b0, exp_result[7:0], mant_result_norm[22:0]};
        end
    end

endmodule

