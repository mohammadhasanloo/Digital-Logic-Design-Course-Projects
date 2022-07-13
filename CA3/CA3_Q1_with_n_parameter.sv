`timescale 1ns/1ns


module CA3_Q1_full_adder_with_n_parameter #(parameter n = 1)(input [n-1:0] a, b, input ci, output [n-1:0] sum, output co);

	wire xor_a;
	xor #(12 + 5*n,12 + 7*n) (xor_a, a, b);
	xor #(12 + 5*n,12 + 7*n) (sum, xor_a, ci);

	wire [1:0] y;
	and #(10 + 5*n,11 + 4*n) (y[0], a, b);
	and #(10 + 5*n,11 + 4*n) (y[1], xor_a, ci);
	or #(12 + 7*n,12 + 5*n) (co, y[0], y[1]);

endmodule