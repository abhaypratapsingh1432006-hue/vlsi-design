`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2026 08:28:40 PM
// Design Name: 
// Module Name: cla_8bit_rtl_tb
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


module cla_8bit_rtl_tb;
reg [7:0] a,b;
reg cin;
wire [7:0] sum;
wire cout;
reg [8:0] expected=0; 
cla_8bit_rtl uut(
    
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
    );
    
   task check;
     begin 
           expected = a+b+cin;
         if((sum!== expected [7:0]) || (cout!==expected[8]) )
         $display("ERROR at time %0t | a =%b  b=%b  cin =%b| sum=%b  cout=%b",$time, a, b,cin, sum, cout); 
         else
         $display("PASS at time %0t | a =%b  b=%b  cin =%b| sum=%b  cout=%b",$time, a, b,cin, sum, cout ); 
     end 
   endtask
   
   initial begin
        
        $monitor("Time at  %0t | a =%b (%d)  b=%b (%d) cin =%b (%d) | sum=%b (%d)  cout=%b (%d)",$time, a,a,b, b,cin,cin,sum, sum,cout, cout);
         
         // predefined directed test 
        
        //a=10; b=12; cin=0; #3; check(); #7;
        //a=12; b=10; cin=1; #3; check(); #7;  
        //a=13; b=11; cin=0; #3; check(); #7;
        //a=11; b=13; cin=1; #3; check(); #7;
        
        //RANDOM TEST
        repeat(10) begin
         a = $random;
         b = $random;
         cin = $random % 2;
          #1; check(); #4;
        end
          
           $finish;
   end
endmodule
