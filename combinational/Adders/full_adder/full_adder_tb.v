`timescale  1ns/1ps

module full_adder_tb;
reg a,b,cin;
wire carry, sum;

reg expec_carry,expec_sum;

full_adder uut(

    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .carry(carry)
);

initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(0,full_adder_tb);

    $monitor(" Time = %0t    |  a = %b  b = %b  cin = %b   | carry = %b  sum = %b", $time, a,b,cin,carry,sum);



    a = 0; b = 0; cin = 0;  #10;
     expec_sum = a^b^cin;
 expec_carry = (a&b)|((a^b)&cin);

 if (sum!==expec_sum|| carry!==expec_carry) begin
    $display("ERROR at %0t",$time);
 end

    a = 0; b = 0; cin = 1;  #10;
    expec_carry = (a&b)|((a^b)&cin);
    expec_sum   = a^b^cin;
    if(sum!== expec_sum|| carry!==expec_carry)begin
        $display("ERROR at %0t", $time);
    end

    a = 0; b = 1; cin = 0;  #10;
      expec_carry = (a&b)|((a^b)&cin);
    expec_sum   = a^b^cin;
    if(sum!== expec_sum|| carry!==expec_carry)begin
        $display("ERROR at %0t", $time);
    end

    a = 0; b = 1; cin = 1;  #10;
      expec_carry = (a&b)|((a^b)&cin);
    expec_sum   = a^b^cin;
    if(sum!== expec_sum|| carry!==expec_carry)begin
        $display("ERROR at %0t", $time);
    end

    a = 1; b = 0; cin = 0;  #10;
      expec_carry = (a&b)|((a^b)&cin);
    expec_sum   = a^b^cin;
    if(sum!== expec_sum|| carry!==expec_carry)begin
        $display("ERROR at %0t", $time);
    end

    a = 1; b = 0; cin = 1;  #10;
      expec_carry = (a&b)|((a^b)&cin);
    expec_sum   = a^b^cin;
    if(sum!== expec_sum|| carry!==expec_carry)begin
        $display("ERROR at %0t", $time);
    end

    a = 1; b = 1; cin = 0;  #10;
      expec_carry = (a&b)|((a^b)&cin);
    expec_sum   = a^b^cin;
    if(sum!== expec_sum|| carry!==expec_carry)begin
        $display("ERROR at %0t", $time);
    end

    a = 1; b = 1; cin = 1;  #10;
      expec_carry = (a&b)|((a^b)&cin);
    expec_sum   = !a&b;                                   // error is given intentionally so that design self checks the error
    if(sum!== expec_sum|| carry!==expec_carry)begin
        $display("ERROR at %0t", $time);
    end
$finish;
end

endmodule