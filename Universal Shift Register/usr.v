`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2025 20:07:48
// Design Name: 
// Module Name: usr
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


module usr (
    input clk,
    input rst,               // Add reset
    input s1, s0,
    input [3:0] p_in,
    output reg [3:0] p_out
);

    always @(posedge clk or posedge rst) begin
        if (rst)
            p_out <= 4'b0000;                    // Reset value
        else begin
            case ({s1, s0})
                2'b00: p_out <= p_out;                           // Hold
                2'b01: p_out <= {p_out[0], p_out[3:1]};          // Right rotate
                2'b10: p_out <= {p_out[2:0], p_out[3]};          // Left rotate
                2'b11: p_out <= p_in;                            // Parallel load
            endcase
        end
    end

endmodule

