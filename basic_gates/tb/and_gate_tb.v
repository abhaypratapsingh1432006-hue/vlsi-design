module and_gate_tb;
    reg a, b;       // inputs
    wire y;         // output

    // Instantiate the AND gate
    and_gate uut (.a(a), .b(b), .y(y));

    initial begin
        // Dump signals to VCD file for GTKWave
        $dumpfile("and_gate.vcd");
        $dumpvars(0, and_gate_tb);

$display("time | A B | Y");
$display("----------------");
$monitor("%4t | %b  %b | %b", $time, a, b, y);
        // Apply test cases
        a = 0; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10 $finish;
    end
endmodule
