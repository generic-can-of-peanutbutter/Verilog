`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2025 19:11:58
// Design Name: 
// Module Name: decoder
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


module decoder(
    input [1:0] a,
    output [3:0] y,
    input e
    );
    assign y[0]=(e|a[1]|a[0]);
     assign y[1]=(e|a[1]|~a[0]);
      assign y[2]=(e|~a[1]|a[0]);
       assign y[3]=(e|~a[1]|~a[0]);
endmodule
