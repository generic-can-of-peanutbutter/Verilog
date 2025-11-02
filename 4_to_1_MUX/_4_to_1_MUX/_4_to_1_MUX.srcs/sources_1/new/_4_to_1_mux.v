`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2025 00:49:14
// Design Name: 
// Module Name: _4_to_1_mux
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


module _4to1MUX(
    input [3:0]I,
    input s1,s0,
    output out
    );
    wire [3:0]y;
    wire s_1,s_0; //wires to or gate
    //using predefined primitives
    not n1(s_1,s1);
    not n2(s_0,s0);
    and a1(y[0],I[0],s_1,s_0);
    and a2(y[1],I[1],s_1,s0);
    and a3(y[2],I[2],s1,s_0);
    and a4(y[3],I[3],s1,s0);
    or o1(out,y[3],y[2],y[1],y[0]);
    
endmodule
