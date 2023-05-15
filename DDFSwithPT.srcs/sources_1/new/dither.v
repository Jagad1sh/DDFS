`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2023 23:07:53
// Design Name: 
// Module Name: dither
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


module dither(clk, reset, x);
  input clk,reset;
  output reg [0:2] x;
 
 always@(posedge clk)
   
   begin
   if(reset==1)
       x <= 0;
   else
       x <= {x[1:2], !x[0]};
   end
endmodule
