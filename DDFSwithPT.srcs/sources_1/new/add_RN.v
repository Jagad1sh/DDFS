`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2023 21:07:59
// Design Name: 
// Module Name: add_RN
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


module add_RN(
  input [0:7] q1, // Input q1
  input [0:2] q2, // Input q2
  output [0:7] sum5 // Output sum5
);
 assign sum5 = q1+q2;
 endmodule