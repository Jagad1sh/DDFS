`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2023 20:47:44
// Design Name: 
// Module Name: TOP_LEVEL
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
module TOP_LEVEL(clk,reset,out1 );

input clk,reset;
output reg [0:7] out1;
reg[0:11] d1;

wire clk,reset;
wire [0:11] q1,q2,sum1;
wire [0:7] pt, sum5,out;
wire [0:2] x;

REG reg1(clk,reset,d1,q1);
add ad1(q1,q2,sum1);
REG reg2(clk,reset,sum1,q2);
Phase_truncate ptr(clk,reset, q2, pt);
dither dir1(clk, reset, x);
add_RN ad3(pt, x, sum5);
LOOK_UP_TABLE lut1(clk, reset, sum5, out);


always@(posedge clk or posedge reset)
 begin
   if(reset==1)
	 d1<= 12'b000011111101; 
	 else
	  out1 <= out;	
 end
endmodule