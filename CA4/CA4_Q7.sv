`timescale 1ns/1ns


module CA4_Q7_D_flipflop_with_reset(input D, clk, rs, output Q);

	wire D_and_rs;
	assign D_and_rs = D & ~rs;

	CA4_Q6_D_flipflop I1(D_and_rs, clk, Q);





endmodule