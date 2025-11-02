`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2025 20:05:25
// Design Name: 
// Module Name: modul
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

module traffic_controller(
    input clk,
    input rst,
    input [3:0] sensor,    // sensors for roads A,B,C,D
    output reg [2:0] light_A,  // R,Y,G for road A
    output reg [2:0] light_B,  // R,Y,G for road B
    output reg [2:0] light_C,  // R,Y,G for road C
    output reg [2:0] light_D   // R,Y,G for road D
);

// State definitions
parameter GREEN_A = 4'b0000;
parameter YELLOW_A = 4'b0001;
parameter GREEN_B = 4'b0010;
parameter YELLOW_B = 4'b0011;
parameter GREEN_C = 4'b0100;
parameter YELLOW_C = 4'b0101;
parameter GREEN_D = 4'b0110;
parameter YELLOW_D = 4'b0111;

reg [3:0] current_state, next_state;

// State register
always @(posedge clk or posedge rst) begin
    if (rst)
        current_state <= GREEN_A;
    else
        current_state <= next_state;
end

// Next state logic
always @(*) begin
    case (current_state)
        GREEN_A: begin
            if (sensor[1] || sensor[2] || sensor[3])  // If any other road requests
                next_state = YELLOW_A;
            else
                next_state = GREEN_A;
        end
        
        YELLOW_A: begin
            if (sensor[1])
                next_state = GREEN_B;
            else if (sensor[2])
                next_state = GREEN_C;
            else if (sensor[3])
                next_state = GREEN_D;
            else
                next_state = GREEN_A;
        end
        
        GREEN_B: begin
            if (sensor[0])  // A has priority
                next_state = YELLOW_B;
            else if (!sensor[1])  // B no longer needs
                next_state = YELLOW_B;
            else
                next_state = GREEN_B;
        end
        
        YELLOW_B: begin
            if (sensor[0])
                next_state = GREEN_A;
            else if (sensor[2])
                next_state = GREEN_C;
            else if (sensor[3])
                next_state = GREEN_D;
            else
                next_state = GREEN_A;
        end
        
        GREEN_C: begin
            if (sensor[0])  // A has priority
                next_state = YELLOW_C;
            else if (!sensor[2])  // C no longer needs
                next_state = YELLOW_C;
            else
                next_state = GREEN_C;
        end
        
        YELLOW_C: begin
            if (sensor[0])
                next_state = GREEN_A;
            else if (sensor[1])
                next_state = GREEN_B;
            else if (sensor[3])
                next_state = GREEN_D;
            else
                next_state = GREEN_A;
        end
        
        GREEN_D: begin
            if (sensor[0])  // A has priority
                next_state = YELLOW_D;
            else if (!sensor[3])  // D no longer needs
                next_state = YELLOW_D;
            else
                next_state = GREEN_D;
        end
        
        YELLOW_D: begin
            if (sensor[0])
                next_state = GREEN_A;
            else if (sensor[1])
                next_state = GREEN_B;
            else if (sensor[2])
                next_state = GREEN_C;
            else
                next_state = GREEN_A;
        end
        
        default: next_state = GREEN_A;
    endcase
end

// Output logic
always @(*) begin
    // Default: All red
    light_A = 3'b100;  // Red
    light_B = 3'b100;  // Red
    light_C = 3'b100;  // Red
    light_D = 3'b100;  // Red
    
    case (current_state)
        GREEN_A: light_A = 3'b001;    // Green
        YELLOW_A: light_A = 3'b010;   // Yellow
        
        GREEN_B: light_B = 3'b001;    // Green
        YELLOW_B: light_B = 3'b010;   // Yellow
        
        GREEN_C: light_C = 3'b001;    // Green
        YELLOW_C: light_C = 3'b010;   // Yellow
        
        GREEN_D: light_D = 3'b001;    // Green
        YELLOW_D: light_D = 3'b010;   // Yellow
    endcase
end

endmodule