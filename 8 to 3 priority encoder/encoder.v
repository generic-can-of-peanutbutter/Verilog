`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2025 10:03:06
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
    reg [2:0]y;
    always@(e,i)begin
    if(e==1)begin
    casez(i)
    8'b00000001:y=3'b000;
    8'b0000001z:y=3'b001;
    8'b000001zz:y=3'b010;
    8'b00001zzz:y=3'b011;
    8'b0001zzzz:y=3'b100;
    8'b001zzzzz:y=3'b101;
    8'b01zzzzzz:y=3'b110;
    8'b1zzzzzzz:y=3'b111;
    endcase
    end
    else begin 
    y=3'bzzz;
    end
    end
    
    
endmodule
