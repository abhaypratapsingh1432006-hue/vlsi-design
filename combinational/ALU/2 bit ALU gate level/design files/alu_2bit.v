`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2026 08:13:28 PM
// Design Name: 
// Module Name: alu_2bit
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


module alu_2bit(
input [1:0] A, input [1:0] B, input [1:0] op_sel,
output [1:0] Result, output Carry, output Borrow
    );
    wire [1:0] sum_wire, diff_wire, and_wire, or_wire;
    wire c1, b1;
    wire carry_add, borrow_sub;
   // ADDITION MACHINE
   full_adder fa0(.a(A[0]), .b(B[0]), .cin(1'b0), .cout(c1), .sum(sum_wire[0])); 
   full_adder fa1(.a(A[1]), .b(B[1]), .cin(c1), .cout(carry_add), .sum(sum_wire[1]));
   
   // SUBTRACTION MACHINE 
   full_sub fs0(.a(A[0]), .b(B[0]), .bin(1'b0), .bout(b1), .diff(diff_wire[0]));
   full_sub fs1(.a(A[1]), .b(B[1]), .bin(b1), .bout(borrow_sub), .diff(diff_wire[1]));
   
   // LOGICAL OPERATION
   and_op and_inst(.a(A), .b(B), .out(and_wire)); 
    or_op  or_inst(.a(A), .b(B), .y(or_wire));
    
    // SELECTION SECTION MUX
    //S=00 ADD, S=01 SUB, S=10 AND, S=11 OR
    mux4x1 mux_0(
    .i0(sum_wire[0]),
    .i1(diff_wire[0]),
    .i2(and_wire[0]),
    .i3(or_wire[0]),
    .s(op_sel),
    .y(Result[0])
    );  
   
       mux4x1 mux_1(
    .i0(sum_wire[1]),
    .i1(diff_wire[1]),
    .i2(and_wire[1]),
    .i3(or_wire[1]),
    .s(op_sel),
    .y(Result[1])
    );  
    
    // final fix
    assign Carry = (op_sel == 2'b00) ? carry_add : 1'b0;
    assign Borrow = (op_sel == 2'b01)? borrow_sub: 1'b0;
    
endmodule
