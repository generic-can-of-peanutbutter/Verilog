`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2025 18:21:54
// Design Name: 
// Module Name: priorityencoder
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


module priorityencoder(
input [7:0]d,output [2:0]x
    );
    wire [7:0]d;
    reg [2:0]x;
    always@(d) begin
    casex(d) 
    8'b00000001:x=3'b000;
    endcase
    end
endmodule
