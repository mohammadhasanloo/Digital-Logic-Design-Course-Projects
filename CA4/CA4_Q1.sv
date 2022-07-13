`timescale 1ns/1ns


module CA4_Q1_SR_latch(input S, R, clk, output Q, Q_prime);

	wire [1:0] y;
	wire S_prime, R_prime, clk_prime;

	nand #8 (S_prime, S, S);
	nand #8 (R_prime, R, R);
	nand #8 (clk_prime, clk, clk);

	
	nand #8 (y[0], S_prime, clk_prime);
	nand #8 (y[1], R_prime, clk_prime);

	nand #8 (Q_prime, y[1], Q);
	nand #8 (Q, y[0], Q_prime);





endmodule