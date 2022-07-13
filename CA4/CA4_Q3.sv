`timescale 1ns/1ns


module CA4_Q3_D_latch(input D, clk, output Q);

	//D->S & D_prime->R
	wire [1:0] y;
	wire S_prime, R_prime, clk_prime, D_prime;

	nand #8 (D_prime, D, D);
	nand #8 (S_prime, D, D);
	nand #8 (R_prime, D_prime, D_prime);
	nand #8 (clk_prime, clk, clk);

	
	nand #8 (y[0], S_prime, clk_prime);
	nand #8 (y[1], R_prime, clk_prime);

	nand #8 (Q_prime, y[1], Q);
	nand #8 (Q, y[0], Q_prime);





endmodule