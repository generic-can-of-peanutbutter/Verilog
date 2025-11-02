`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2025 10:55:40
// Design Name: 
// Module Name: comparator
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


module magnitude_comparator(A, B, A_greater, A_equal, A_less);
  parameter N = 4;

  input  [N-1:0] A, B;
  output         A_greater, A_equal, A_less;

  assign A_greater = (A > B);
  assign A_equal   = (A == B);
  assign A_less    = (A < B);
endmodule

