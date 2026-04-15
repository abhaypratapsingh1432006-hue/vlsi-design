`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2026 04:31:52 PM
// Design Name: 
// Module Name: ripple_carry_adder_tb
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


module ripple_carry_adder_8bit_tb;
reg [7:0] a_rca, b_rca;
reg cin_rca;
wire [7:0] s_rca;
wire cout_rca;
reg [8:0] expected;

ripple_carry_adder_8bit uut(
    .a_rca(a_rca),
    .b_rca(b_rca),
    .cin_rca(cin_rca),
    .s_rca(s_rca),
    .cout_rca(cout_rca)
);
task check;
    begin
     expected  = a_rca + b_rca + cin_rca;
     if(s_rca!== expected[7:0]|| cout_rca!==expected[8])
        $display("ERROR at %0t | a_rca = %d b_rca = %d cin_rca = %b | expected_sum = %d got_sum = %d expected_cout = %b  got_cout =%b", 
        $time,a_rca,b_rca,cin_rca,expected[7:0],s_rca,expected[8],cout_rca);
     else
        $display("PASS at %0t",$time);
    end
endtask

initial begin
    
    $monitor("Time = %0t | a_rca = %d (%b) b_rca = %d (%b)  cin_rca = %b | s_rca = %d (%b)  cout_rca = %b",$time,a_rca,a_rca
    ,b_rca,b_rca, cin_rca,s_rca,s_rca,cout_rca);

a_rca = 0; b_rca = 1; cin_rca = 1; #3; check(); #7;
a_rca = 10; b_rca = 15; cin_rca = 0; #3; check(); #7;
a_rca = 15; b_rca = 15; cin_rca = 1; #3; check(); #7;
a_rca = 215; b_rca = 15; cin_rca = 1; #3; check(); #7;

$finish;

end

endmodule
