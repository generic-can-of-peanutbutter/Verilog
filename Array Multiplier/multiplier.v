`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2025 00:21:01
// Design Name: 
// Module Name: multiplier
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

module array_multiplier (
    input [3:0] A,        // 4-bit input A
    input [3:0] B,        // 4-bit input B
    output [7:0] P        // 8-bit product output
);
    wire [15:0] partial_products;

    // Generate the partial products (AND gates)
    assign partial_products[0]  = A[0] & B[0];
    assign partial_products[1]  = A[0] & B[1];
    assign partial_products[2]  = A[0] & B[2];
    assign partial_products[3]  = A[0] & B[3];
    assign partial_products[4]  = A[1] & B[0];
    assign partial_products[5]  = A[1] & B[1];
    assign partial_products[6]  = A[1] & B[2];
    assign partial_products[7]  = A[1] & B[3];
    assign partial_products[8]  = A[2] & B[0];
    assign partial_products[9]  = A[2] & B[1];
    assign partial_products[10] = A[2] & B[2];
    assign partial_products[11] = A[2] & B[3];
    assign partial_products[12] = A[3] & B[0];
    assign partial_products[13] = A[3] & B[1];
    assign partial_products[14] = A[3] & B[2];
    assign partial_products[15] = A[3] & B[3];

    // Adder stages for partial product summation
    wire [7:0] sum1, sum2, sum3, sum4;
    wire carry1, carry2, carry3;

    // First stage of addition (partial_products[0] to partial_products[3])
    full_adder FA0 (partial_products[0], partial_products[1], partial_products[2], sum1[0], carry1);
    full_adder FA1 (partial_products[3], partial_products[4], partial_products[5], sum1[1], carry2);
    full_adder FA2 (partial_products[6], partial_products[7], partial_products[8], sum1[2], carry3);

    // Second stage of addition (sum from previous stage)
    full_adder FA3 (sum1[0], sum1[1], sum1[2], sum2[0], carry1);
    full_adder FA4 (sum2[0], sum1[3], sum2[1], sum3[0], carry2);

    // Output assignment
    assign P = sum3[7:0];  // Final product output
endmodule

