`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2026 07:10:36 PM
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


module full_adder(input a, b, cin, output cout, sum);

wire w1, w2, w3; 
   // sum
 xor x1(w1, a, b);
  xor x2(sum, w1, cin);
   and a1(w2, a, b);
   and a2(w3, w1, cin);
   // final carry out
   or o1(cout,w2, w3);
endmodule
