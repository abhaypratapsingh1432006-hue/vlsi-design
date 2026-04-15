`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2026 09:44:34 PM
// Design Name: 
// Module Name: ripple_carry_adder_8bit
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


module ripple_carry_adder_8bit(input [7:0] a_rca, b_rca, input cin_rca, output [7:0]s_rca, output cout_rca);
wire [6:0]w;
full_adder fa0(a_rca[0], b_rca[0], cin_rca, s_rca[0], w[0]);
full_adder fa1(a_rca[1], b_rca[1], w[0], s_rca[1], w[1]);
full_adder fa2(a_rca[2], b_rca[2], w[1], s_rca[2], w[2]);
full_adder fa3(a_rca[3], b_rca[3], w[2], s_rca[3], w[3]);
full_adder fa4(a_rca[4], b_rca[4], w[3], s_rca[4], w[4]);
full_adder fa5(a_rca[5], b_rca[5], w[4], s_rca[5], w[5]);
full_adder fa6(a_rca[6], b_rca[6], w[5], s_rca[6], w[6]);
full_adder fa7(a_rca[7], b_rca[7], w[6], s_rca[7], cout_rca);
endmodule
