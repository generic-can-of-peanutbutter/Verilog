`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2025 15:38:22
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


module upcount(
    input clk, rst,
    output reg[2:0] q
    );
   
 initial q=3'b000; 
 
 
    always@(posedge clk or posedge rst) begin
        if(rst==1)
        q<=3'b000;
        else
        q<=q+1;
    end
    
endmodule
