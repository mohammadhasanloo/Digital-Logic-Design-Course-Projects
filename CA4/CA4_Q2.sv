`timescale 1ns/1ns


module CA4_Q2_SR_latch_TB();

	logic SS, RR;
	logic cclk=1'b0;
	wire QQ, QQ_prime;

	CA4_Q1_SR_latch CUT1 (SS, RR, cclk, QQ, QQ_prime);

	always #80 cclk=~cclk;

	initial begin 
		#80 SS=1;RR=0;
		#80 SS=0;RR=1;
		#80 SS=1;
		#80 SS=1;RR=0;
		#80 SS=1;RR=1;
		#80 SS=0;RR=1;
		#80 SS=1;RR=1;
		#80 SS=0;RR=0;
		#80 $stop;
	end
endmodule