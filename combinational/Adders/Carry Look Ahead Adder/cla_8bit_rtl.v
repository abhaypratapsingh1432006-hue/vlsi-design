`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2026 06:17:46 PM
// Design Name: 
// Module Name: cla_8bit_rtl
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


module cla_8bit_rtl(
input [7:0] a, b,
input cin,
output [7:0] sum,
output cout
    );
    wire [7:0] p, g;
    wire [7:1] c;
    
    assign p = a^b;  // propagation
    assign g = a&b; // generate
    
    //parallel carry equations
    assign c[1] = g[0] | (p[0]&cin);
    assign c[2] = g[1] | (p[1]&g[0] | p[1]&p[0]&cin );
    assign c[3] = g[2] | (p[2]&g[1])| (p[2]&p[1]&g[0]) | (p[2]&p[1]&p[0]&cin);
    assign c[4] = g[3] | (p[3]&g[2])| (p[3]&p[2]&g[1]) |(p[3]&p[2]&p[1]&g[0]) | (p[3]&p[2]&p[1]&p[0]&cin);
    assign c[5] = g[4] | (p[4]&g[3])| (p[4]&p[3]&g[2])| (p[4]&p[3]&p[2]&g[1]) |(p[4]&p[3]&p[2]&p[1]&g[0]) | (p[4]&p[3]&p[2]&p[1]&p[0]&cin);
    assign c[6] = g[5] |(p[5]&g[4]) | (p[5]&p[4]&g[3])| (p[5]&p[4]&p[3]&g[2])| (p[5]&p[4]&p[3]&p[2]&g[1]) |(p[5]&p[4]&p[3]&p[2]&p[1]&g[0]) | (p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&cin);
    assign c[7] = g[6] |(p[6]&g[5]) |(p[6]&p[5]&g[4]) | (p[6]&p[5]&p[4]&g[3])| (p[6]&p[5]&p[4]&p[3]&g[2])| (p[6]&p[5]&p[4]&p[3]&p[2]&g[1]) |(p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&g[0]) | (p[6]&p[5]&p[4]&p[3]&p[2]&p[1]&p[0]&cin);
    
    // sum
    assign sum[0] = p[0]^cin;
    assign sum[1] = p[1]^c[1];
    assign sum[2] = p[2]^c[2];
    assign sum[3] = p[3]^c[3];
    assign sum[4] = p[4]^c[4];
    assign sum[5] = p[5]^c[5];
    assign sum[6] = p[6]^c[6];
    assign sum[7] = p[7]^c[7];
    
    // final carry
    assign cout = g[7] | (p[7]&c[7]);
    
endmodule
