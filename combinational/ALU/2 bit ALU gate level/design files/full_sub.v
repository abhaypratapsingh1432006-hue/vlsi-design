`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2026 07:24:54 PM
// Design Name: 
// Module Name: full_sub
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


module full_sub(input a, b, bin, output diff, bout );
wire w1, w2, w3, w1_n, a_n;

not n1(w1_n,w1);
not n2(a_n,a);

xor x1(w1, a, b);
xor x2(diff, w1, bin);

and a1(w2, a_n, b);
and a2(w3, w1_n, bin);

// bout borrow
or o1(bout, w2, w3);

endmodule
