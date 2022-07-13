`timescale 1ns/1ns


module CA4_Q6_D_flipflop(input D, clk, output Q);

	wire QA;

	CA4_Q3_D_latch I0(D, clk, QA);
	CA4_Q3_D_latch I1(QA, ~clk, Q);





endmodule