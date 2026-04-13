`timescale  1ns/1ps

module half_adder_tb;
reg a,b;
wire cout, sum;

half_adder uut(

    .a(a),
    .b(b),
    .cout(cout),
    .sum(sum)
);

initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(0, half_adder_tb);

 $monitor("Time=%0t | a=%b b=%b | cout=%b sum=%b", $time, a, b, cout, sum);

    a = 0; b = 0; #10; 
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
end
endmodule