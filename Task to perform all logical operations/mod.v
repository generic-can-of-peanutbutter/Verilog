`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2025 00:31:16
// Design Name: 
// Module Name: mod
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


module logic_task_module(
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] and_out,
    output reg [7:0] nand_out,
    output reg [7:0] or_out,
    output reg [7:0] nor_out,
    output reg [7:0] xor_out,
    output reg [7:0] xnor_out
);

    // Task to perform all logic operations
    task automatic logic_ops;
        input [7:0] x, y;
        output [7:0] and_r, nand_r, or_r, nor_r, xor_r, xnor_r;
        begin
            and_r  = x & y;
            nand_r = ~(x & y);
            or_r   = x | y;
            nor_r  = ~(x | y);
            xor_r  = x ^ y;
            xnor_r = ~(x ^ y);
        end
    endtask

    // Call the task whenever a or b change
    always @(*) begin
        logic_ops(a, b, and_out, nand_out, or_out, nor_out, xor_out, xnor_out);
    end

endmodule

