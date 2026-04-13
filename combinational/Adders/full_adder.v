module full_adder (
    input a,b,cin,
    output sum, carry
);

wire w1,w2,w3;
assign w1 = a^b;
assign w2 = a&b;
assign w3 = w1&cin;         // this code is also correct
assign sum = w1^cin;        // assign sum = a^b^cin;
assign carry = w2|w3;        //assign carry = (a&b)|((a^b)&cin);
    
endmodule