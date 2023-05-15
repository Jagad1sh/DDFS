`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2023 20:44:32
// Design Name: 
// Module Name: REG
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


module REG(clk, reset, d, q);
input clk, reset;
input [0:11] d;
output [0:11] q;
reg [0:11] q;

always @ (posedge clk)
begin

 if (reset == 1'b1)
 begin
 q <= 12'd0;
 end
 else
 begin
 q <= d;
 end
end
endmodule
