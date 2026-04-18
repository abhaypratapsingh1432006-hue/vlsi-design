module comparator_4bit(

    input [3:0] A, B,

    output A_gt_B, A_lt_B, A_eq_B

);
//wire [3:0] x, A_n,B_n;

//assign A_n = ~A;
//assign B_n = ~B;

assign A_gt_B = A>B;
assign A_lt_B = A<B;
assign A_eq_B = A==B;

endmodule