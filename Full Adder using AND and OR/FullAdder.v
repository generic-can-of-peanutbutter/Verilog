`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2025 00:06:32
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
    input a,b,c_in,
    output sum,carry
    );
    wire[2:0]z;
    wire[3:0]y;
    // defining carry using predefined primitives
     and a1(z[0],a,b);
     and a2(z[1],b,c_in);
     and a3(z[2],a,c_in);
     or o1(carry,z[0],z[1],z[2]);
     
     
     //defining sum using predefines primitives
     //sum=abc+a'b'c+a'bc'+ab'c'
     not(a_n,a);
     not(b_n,b);
     not(cn,c_in);
    and a4(y[0],a,b,c_in);
    and a5(y[1],a_n,b_n,c_in);
    and a6(y[2],a_n,b,cn);
    and a7(y[3],a,b_n,cn);
    or o2(sum,y[0],y[1],y[2],y[3]);
    
    
endmodule
