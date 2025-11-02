`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2025 18:23:09
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
 input clk,rst,output reg [2:0] q
    );
   initial q=3'b000;
    always@(posedge clk) begin
    if(rst==1)
    q<=3'b000;
    else if (q==3'b100)
    q<=3'b000;
    else 
    q<= q+1;
    end
endmodule
