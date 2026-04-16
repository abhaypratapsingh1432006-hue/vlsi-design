`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2026 07:56:20 PM
// Design Name: 
// Module Name: mux4x1
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


module mux4x1(
input i0, i1, i2, i3,
input [1:0] s, 
output y
    );
    wire w0, w1, w2, w3, s0_n, s1_n;
    
    not n1(s0_n, s[0]);
    not n2(s1_n, s[1]);
    
    and ao(w0, i0,s1_n,s0_n);  //s-00
    and a1(w1, i1,s1_n, s[0]); //s-01
    and a2(w2, i2,s[1],s0_n); // s-10
    and a3(w3, i3,s[1],s[0]); // s-11
    
    // mux output
    or o1(y,w0,w1,w2,w3);
    
endmodule
