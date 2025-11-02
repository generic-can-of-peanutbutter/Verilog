`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2025 09:52:16
// Design Name: 
// Module Name: _4_to_1_MUX
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


module _4_to_1_MUX(input i,s1,s0,
 output out );

    
   wire [3:0]i;
wire s1,s0;
reg out;
    always@(s1,s0,i) begin
    case({s1,s0})
    0: out=i[0];
    1 : out=i[1];
    2 : out=i[2];
    3: out=i[3];
    endcase
    
   end
endmodule
