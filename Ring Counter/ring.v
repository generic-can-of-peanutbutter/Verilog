`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2025 16:08:07
// Design Name: 
// Module Name: ring
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


module ring(
    input clk,rst,
    output [3:0]q
    ); 
    reg [3:0] q;
    always @(posedge clk) begin
    if(rst==1)
    q<=4'b1000;
    else begin
    q[3]<=q[2];
    q[2]<=q[1];
    q[1]<=q[0];
    q[0]<=q[3];
    end
    end
endmodule
