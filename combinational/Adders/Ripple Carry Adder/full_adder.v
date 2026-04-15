`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2026 09:12:11 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(input a_fa, b_fa, cin_fa, output s_fa, cout_fa);
    wire w1, w2, w3;
    xor x1(w1, a_fa, b_fa);
    and a1(w2, a_fa, b_fa);
    and a2(w3, w1, cin_fa);
    or  o1(cout_fa, w3, w2);
   xor x2(s_fa, w1, cin_fa);
endmodule
