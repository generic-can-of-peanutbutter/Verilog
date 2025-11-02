`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2025 23:23:32
// Design Name: 
// Module Name: clock
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


module clock(  
  );
  reg clk;
  always begin
  #0; clk=0;
  #10clk=~clk;
  #30;// 25 percent duty cycle of 40 time units mean that the signal will be on for 10 time units
 end
  
endmodule

