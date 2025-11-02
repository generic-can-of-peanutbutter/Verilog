`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2025 01:44:42
// Design Name: 
// Module Name: RS_latch
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


module RS_latch(
    input s,r,
    output q,q0
    );
    
    nor(q,s,q);// nor=active high
    nor(q0,r,q);
endmodule
