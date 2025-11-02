`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2025 00:09:39
// Design Name: 
// Module Name: counter
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


module counter(
    input clk,rst,
    output [3:0] q
    );
    reg [3:0] q;
    initial q=4'b0000;
    always@(posedge clk) begin
    if(rst)
    q<=4'b0000;
    else 
    q<=q+1;
    end
endmodule
