module ones_compliment(
    input [3:0] A, // Four bits of A: 3, 2, 1, 0
    input [3:0] B, // Same for B
    output [3:0] Y // and for Y
);


	
	wire [3:0] raw_sum;
	wire [2:0] carry;
	wire end_carry;


	full_adder FA0 (.A(A[0]), .B(B[0]), .Cin(1'b0),     .Y(raw_sum[0]), .Cout(carry[0]));
   	full_adder FA1 (.A(A[1]), .B(B[1]), .Cin(carry[0]), .Y(raw_sum[1]), .Cout(carry[1]));
   	full_adder FA2 (.A(A[2]), .B(B[2]), .Cin(carry[1]), .Y(raw_sum[2]), .Cout(carry[2]));
   	full_adder FA3 (.A(A[3]), .B(B[3]), .Cin(carry[2]), .Y(raw_sum[3]), .Cout(end_carry));

	//end bit wrap around
	wire [3:0] final_sum;
	wire [2:0] carry2;


	full_adder FA4 (.A(raw_sum[0]), .B(1'b0), .Cin(end_carry),  .Y(final_sum[0]), .Cout(carry2[0]));
	full_adder FA5(.A(raw_sum[1]), .B(1'b0), .Cin(carry2[0]),  .Y(final_sum[1]), .Cout(carry2[1]));
	full_adder FA6 (.A(raw_sum[2]), .B(1'b0), .Cin(carry2[1]),  .Y(final_sum[2]), .Cout(carry2[2]));
	full_adder FA7 (.A(raw_sum[3]), .B(1'b0), .Cin(carry2[2]),  .Y(final_sum[3]), .Cout());

    assign Y = final_sum;

endmodule