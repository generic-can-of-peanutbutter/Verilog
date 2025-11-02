`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2025 22:34:16
// Design Name: 
// Module Name: equality_detector
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


module equality_detector(
    input a,b,
    output x,y,z
    );
    assign x=a&~b;
    assign y=~a&b;
    assign z=~a&~b|a&b;
endmodule
