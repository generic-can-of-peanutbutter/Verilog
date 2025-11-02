`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2025 18:31:40
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [7:0]a,
    input [7:0] b,
    input [2:0] s,
    output [7:0] y
    );
    reg [7:0]y;
    initial begin
   y=7'b00000000;
    end
    always@(s) begin
    case({s[2],s[1],s[0]})
    3'b000:y=a+b;
    3'b001:y=a-b;
    3'b010:y=a*b;
    3'b011:y=a/b;
    3'b100:y=a>>1;
    3'b101:y=a<<1;
    3'b110:y={a[1],a[7:1]};
    3'b111:y={a[6:0],a[7]};    
endcase
end
endmodule
