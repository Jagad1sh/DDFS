`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2023 20:26:49
// Design Name: 
// Module Name: lutnew1
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


module lutnew1(
    input clk,
    input reset,
    input [11:0] addr,
    output reg [11:0] sin_val
);
reg [11:0] sine_lut [0:4095];
integer i;
real pi = 3.14159265358979;
always @(posedge clk, posedge reset)
begin
if (reset == 1'b1) 
begin
    for (i=0; i<4096; i=i+1 ) 
    begin
        sine_lut[i] = 2048 + (2047 * $sin((i * 2 * pi) / 4096));
    end
end 
else 
    sin_val <= sine_lut[addr];
    
end

endmodule
