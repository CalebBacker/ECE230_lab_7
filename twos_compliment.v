module twos_compliment(
    input [7:0] A,
    output [7:0] Y
);



	wire [7:0] notA;
	wire [7:0] sum;
	wire [7:0] carry;


	assign notA = ~A;


	full_adder fa0 (.A(notA[0]), .B(1'b1), .Cin(1'b0),       .Y(sum[0]), .Cout(carry[0]));
  	full_adder fa1 (.A(notA[1]), .B(1'b0), .Cin(carry[0]),   .Y(sum[1]), .Cout(carry[1]));
  	full_adder fa2 (.A(notA[2]), .B(1'b0), .Cin(carry[1]),   .Y(sum[2]), .Cout(carry[2]));
  	full_adder fa3 (.A(notA[3]), .B(1'b0), .Cin(carry[2]),   .Y(sum[3]), .Cout(carry[3]));
  	full_adder fa4 (.A(notA[4]), .B(1'b0), .Cin(carry[3]),   .Y(sum[4]), .Cout(carry[4]));
  	full_adder fa5 (.A(notA[5]), .B(1'b0), .Cin(carry[4]),   .Y(sum[5]), .Cout(carry[5]));
 	full_adder fa6 (.A(notA[6]), .B(1'b0), .Cin(carry[5]),   .Y(sum[6]), .Cout(carry[6]));
 	full_adder fa7 (.A(notA[7]), .B(1'b0), .Cin(carry[6]),   .Y(sum[7]), .Cout(carry[7]));
	
	assign Y = sum;


endmodule