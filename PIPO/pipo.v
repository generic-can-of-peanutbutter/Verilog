`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2025 11:43:28
// Design Name: 
// Module Name: pipo
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


module PIPO #(parameter WIDTH = 4) (
    input wire clk,        // Clock signal
    input wire rst,        // Asynchronous reset
    input wire [WIDTH-1:0] d_in,  // Parallel data input
    output reg [WIDTH-1:0] d_out  // Parallel data output
);

    // On the rising edge of the clock or reset
    always @(posedge clk or posedge rst) begin
        if (rst)
            d_out <= 0;    // Clear output on reset
        else
            d_out <= d_in; // Transfer input to output
    end

endmodule

