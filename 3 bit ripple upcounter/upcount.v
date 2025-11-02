`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2025 11:18:26
// Design Name: 
// Module Name: upcount
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


// 32-bit RISC Processor (Basic Non-Pipelined, 6 Instructions)
// Instructions: ADD, SUB, MUL, DIV, LOAD, STORE
module RISC_Processor(
    input clk,
    input rst
);
    parameter MEM_SIZE = 131072; // 512KB / 4 bytes per word = 131072 words

    // Program Counter
    reg [31:0] pc;

    // Instruction Memory (ROM) and Data Memory (RAM)
    reg [31:0] instr_mem [0:MEM_SIZE-1];
    reg [31:0] data_mem [0:MEM_SIZE-1];

    // Register File: 32 registers, 32-bit each
    reg [31:0] regfile [0:31];

    // Instruction fields
    reg [4:0] opcode, rs, rt, rd;
    reg [16:0] imm;

    // Internal ALU signals
    reg [31:0] operand1, operand2, alu_result;

    // Instruction Register
    reg [31:0] instr;

    // Reset and Fetch-Decode-Execute Cycle
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            pc <= 0;
        end else begin
            // Fetch
            instr <= instr_mem[pc >> 2];
            pc <= pc + 4;

            // Decode
            opcode <= instr[31:27];
            rs <= instr[26:22];
            rt <= instr[21:17];
            rd <= instr[16:12];
            imm <= instr[16:0];

            operand1 <= regfile[rs];
            operand2 <= regfile[rt];

            // Execute
            case (opcode)
                5'b00000: alu_result <= operand1 + operand2;               // ADD
                5'b00001: alu_result <= operand1 - operand2;               // SUB
                5'b00010: alu_result <= operand1 * operand2;               // MUL
                5'b00011: alu_result <= operand2 != 0 ? operand1 / operand2 : 0; // DIV
                5'b00100: alu_result <= data_mem[operand1 + imm];          // LOAD
                5'b00101: data_mem[operand1 + imm] <= regfile[rd];         // STORE
                default:  alu_result <= 0;
            endcase

            // Write-back (only for non-STORE ops)
            if (opcode != 5'b00101) begin
                regfile[rd] <= alu_result;
            end
        end
    end
endmodule
