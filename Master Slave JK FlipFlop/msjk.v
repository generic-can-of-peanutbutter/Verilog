`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2025 19:05:17
// Design Name: 
// Module Name: msjk
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


module msjk(
    input j,k,
    output q,q_bar,
    input clk
    );
    reg q;
    assign q_bar=~q;
    always@(posedge clk) begin
    case({j,k})
    2'b00:q<=q;
    2'b01:q<=2'b01;
    2'b10:q<=2'b10;
    2'b11:q<=~q;
    
    
    
    endcase
    end
endmodule
