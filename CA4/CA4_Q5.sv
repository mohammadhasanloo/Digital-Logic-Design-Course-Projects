`timescale 1ns/1ns


module CA4_Q5_8bit_shift_registerTB();

	logic ssin;
	logic cclk=1'b1;
	wire [7:0] PPO;


	CA4_Q4_8bit_shift_register CUT1(ssin, cclk, PPO);

	always  #600 ssin=$random;
	always  #600 cclk=~cclk;
	initial begin
		#12000 $stop;
	end

endmodule