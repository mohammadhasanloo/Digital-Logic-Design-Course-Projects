`timescale 1ns/1ns


module CA3_Q1_full_adder(input a, b, ci, output sum, output co);

	wire xor_a;
	xor #(17,19) (xor_a, a, b);
	xor #(17,19) (sum, xor_a, ci);

	wire [1:0] y;
	and #(15,15) (y[0], a, b);
	and #(15,15) (y[1], xor_a, ci);
	or #(19,17) (co, y[0], y[1]);

endmodule