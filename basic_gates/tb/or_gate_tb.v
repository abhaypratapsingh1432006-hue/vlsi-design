`timescale 1ns/1ps
module or_gate_tb;
    reg a, b;      // inputs
    wire y;   //output
    // instantiate the module under test
    or_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $dumpfile("or_gate.vcd");     //waveform file   
        $dumpvars(0,or_gate_tb);      // dump all signals
    
    // Apply test cases
    a=0; b = 0; #10; 
    a=0; b = 1; #10;
    a=1; b = 0; #10;
    a=1; b = 1; #10;

    $finish;
    end
endmodule