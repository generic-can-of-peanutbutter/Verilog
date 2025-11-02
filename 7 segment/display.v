`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2025 19:35:58
// Design Name: 
// Module Name: display
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


module display(
input clk_100mhz, input rst, 
output  reg [6:0] LED_out,
input[15:0] BCD_in,
output reg [3:0]anode_active
    );
    
    reg [19:0] counter;
    wire [1:0] display_activator;
    reg [3:0] LED;
    
    always@(posedge clk_100mhz or posedge rst)begin
    if (rst)
    counter<=0;
    else
    counter<=counter+1;
    end
    
    assign display_activator = counter[19:18];
    
    always@(*)begin
    case({display_activator})
    2'b00:begin
        anode_active=4'b0111;
        LED=BCD_in[15:12];
        end
        2'b01:begin
        anode_active=4'b1011;
        LED=BCD_in[15:12];
        end
        2'b10:begin
        anode_active=4'b1101;
        LED=BCD_in[15:12];
        end
        2'b11:begin
        anode_active=4'b1110;
        LED=BCD_in[15:12];
        end
        endcase
     
    end
    
    
    always @(*) begin
    case(LED)
4'b0000: LED_out = 7'b0000001; // "0"
4'b0001: LED_out = 7'b1001111; // "1"
4'b0010: LED_out = 7'b0010010; // "2"
4'b0011: LED_out = 7'b0000110; // "3"
4'b0100: LED_out = 7'b1001100; // "4"
4'b0101: LED_out = 7'b0100100; // "5"
4'b0110: LED_out = 7'b0100000; // "6"
4'b0111: LED_out = 7'b0001111; // "7"
4'b1000: LED_out = 7'b0000000; // "8"
4'b1001: LED_out = 7'b0000100; // "9"
4'b1010: LED_out = 7'b0001000; // "A"
4'b1011: LED_out = 7'b1100000; // "b"
4'b1100: LED_out = 7'b0110001; // "C"
4'b1101: LED_out = 7'b1000010; // "d"
4'b1110: LED_out = 7'b0110000; // "E"
4'b1111: LED_out = 7'b0111000; // "F"
default: LED_out = 7'b1111111;
endcase

    end
endmodule
