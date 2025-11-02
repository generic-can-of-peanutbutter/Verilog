`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2025 22:59:35
// Design Name: 
// Module Name: encoder
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


module encoder(
    input [7:0] i,
    output [2:0] y,
    input e
    );
    assign y=(e==1'b1)?
    i[0]?3'b000:
     i[1]?3'b001:
      i[2]?3'b010:
       i[3]?3'b011:
        i[4]?3'b100:
         i[5]?3'b101:
          i[6]?3'b110:
           i[7]?3'b111 : 3'b000
           : 3'b000;
endmodule
