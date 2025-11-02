`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2025 20:25:44
// Design Name: 
// Module Name: _4_to_1_mux_tb
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


module _4_to_1_mux_tb;
reg [3:0]I,s1,s0;
wire out;
  _4to1MUX(.I[0](I[0],.I[1](I[1]),.I[2](I[2]),.I3(I[3]),.out(out),.s1(s1),.s0(s0));
  
    
endmodule
