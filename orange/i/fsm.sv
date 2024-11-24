`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 03:23:54 AM
// Design Name: 
// Module Name: fsm
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

module fsm (clk,reset,A,B,Q);
input  logic clk,reset,A,B;              
output logic Q;            
    typedef enum logic [1:0] {S0 = 2'b00,             
        S1 = 2'b01, S2 = 2'b10} state_t;
    state_t current_state, next_state;
    always_comb begin
        case (current_state)
            S0: begin
                if (A)
                    next_state = S1;  
                else
                    next_state = S0;  
            end
            S1: begin
                if (B)
                    next_state = S2; 
                else
                    next_state = S0;  
            end
            S2: begin
                if (~B)
                    next_state = S1;  
                else
                    next_state = S2; 
            end

            default: next_state = S0; 
        endcase
    end
    
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            current_state <= S0;
        else
            current_state <= next_state; 
    end

    always_comb begin
        case (current_state)
            S0: Q = 0;
            S1: Q = 0; 
            S2: Q = 1; 
            default: Q = 0;
        endcase
    end
endmodule

