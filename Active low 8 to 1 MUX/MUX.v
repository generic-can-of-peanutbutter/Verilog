`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2025 19:18:32
// Design Name: 
// Module Name: MUX
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

module MUX(
    input [7:0] i,
    input [2:0] s,
    output y
    );

    assign y = (s == 3'b000) ? i[7] :
               (s == 3'b001) ? i[6] :
               (s == 3'b010) ? i[5] :
               (s == 3'b011) ? i[4] :
               (s == 3'b100) ? i[3] :
               (s == 3'b101) ? i[2] :
               (s == 3'b110) ? i[1] :
               (s == 3'b111) ? i[0] :1'b0;  // default case (not really needed here)

endmodule

