`timescale 1ns/1ps

module comparator_4bit_tb;

reg [3:0] A,B;
wire A_gt_B,  A_lt_B, A_eq_B;

comparator_4bit uut(
    .A(A),
    .B(B),
    .A_gt_B(A_gt_B),
    .A_lt_B(A_lt_B),
    .A_eq_B(A_eq_B)
);
task check;
    begin
        if((A > B && A_gt_B !=1) ||
           (A < B && A_lt_B !=1) ||
           (A == B && A_eq_B !=1))
           $display("ERROR at time %0t | A=%b B=%b", $time,A,B);
        else
           $display("PASS at time %0t | A=%b B=%b", $time, A,B);
    end
    endtask

initial begin
       $dumpfile("comparator_4bit.vcd");
       $dumpvars(0, comparator_4bit_tb);

    $monitor ("Time = %0t | A = %b  B = %b | GT = %b  LT = %b  EQ = %b "
    , $time, A, B, A_gt_B, A_lt_B, A_eq_B);

    A = 4'b0000; B = 4'b0000; #1; check(); #9;
    A = 4'b0001; B = 4'b0000; #1; check(); #9;
    A = 4'b0001; B = 4'b0011; #1; check(); #9;
    A = 4'b0101; B = 4'b0011; #1; check(); #9;
    A = 4'b0101; B = 4'b0111; #1; check(); #9;
    A = 4'b1101; B = 4'b0111; #1; check(); #9;
    A = 4'b1101; B = 4'b1111; #1; check(); #9;
        $finish;
end
endmodule