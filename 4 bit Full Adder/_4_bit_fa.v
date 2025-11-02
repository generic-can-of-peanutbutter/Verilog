`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2025 00:31:45
// Design Name: 
// Module Name: _4_bit_fa
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


module _4_bit_fa(
    input [3:0]a,[3:0]b,cin,
    output [3:0]sum,cout
    );
    wire [3:0]c;
    //instantiating 1 bit adder (named port mapping)
    _1_bit_adder fa1 (.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.carry(c[0]));
    _1_bit_adder fa2 (.a(a[1]),.b(b[1]),.cin(c[0]),.sum(sum[1]),.carry(c[1]));
    _1_bit_adder fa3 (.a(a[2]),.b(b[2]),.cin(cout[1]),.sum(sum[2]),.carry(c[3]));
    _1_bit_adder fa4 (.a(a[2]),.b(b[3]),.cin(c[3]),.sum(sum[3]),.carry(cout));
    
    
endmodule
