`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2026 04:04:44 PM
// Design Name: 
// Module Name: alu_2bit_tb
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


module alu_2bit_tb;

reg [1:0] A, B;
reg [1:0] op_sel;
wire [1:0] Result;
wire Carry, Borrow;

alu_2bit uut(
        
        .A(A),
        .B(B),
        .op_sel(op_sel),
        .Result(Result),
        .Carry(Carry),
        .Borrow(Borrow)
            );
initial begin

   //Add
   A = 2'b01; B = 2'b10; op_sel = 2'b00; #10; // expected result = 3 
   // Sub
   A = 2'b11; B = 2'b10; op_sel = 2'b01; #10; // expected result = 1
   // And
   A = 2'b10; B = 2'b01; op_sel = 2'b10; #10; // expected result = 0
   // Or  
   A = 2'b01; B = 2'b10; op_sel = 2'b11; #10; // expected result = (11)b = 3 in decimal
     $finish;
end

initial begin
      $monitor("Time = %0t  | A = %b  B = %b  op_sel = %b Result = %b  Carry = %b  Borrow = %b ",
       $time, A, B, op_sel, Result, Carry, Borrow);
end

endmodule
