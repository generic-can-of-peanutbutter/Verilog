`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2025 01:27:50
// Design Name: 
// Module Name: encoder
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


module encoder(
input [3:0] i,
output[1:0] y
    );
    reg [1:0]y ;
    always@(i) begin
    casex(i)
    4'b0001:y=2'b00;
     4'b001x:y=2'b01;
      4'b01xx:y=2'b10;
       4'b1xxx:y=2'b11;
      endcase
      end
endmodule
