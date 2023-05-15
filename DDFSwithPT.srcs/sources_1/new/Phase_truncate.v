`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2023 20:20:06
// Design Name: 
// Module Name: Phase_truncate
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


module Phase_truncate(clk, reset, q2, pt, tbit);

 input clk, reset;
 input[0:11] q2;
 
 output reg [0:7]pt;
 output reg [0:3]tbit;
 
 always@(posedge clk)
  if(reset == 1'b1)
   begin
     pt<=8'b0;
     tbit<=4'b0;
   end
  
  else
    begin
      pt <= q2[0:7];
      tbit <= q2[8:11]; 
    end
    
endmodule
