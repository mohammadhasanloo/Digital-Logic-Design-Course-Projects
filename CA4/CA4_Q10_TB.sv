`timescale 1ns/1ns


module CA4_Q10_LFSR_TB();

	logic rrs=1'b0;
	logic cclk=1'b0;
	wire [7:0] PPO;

	CA4_Q10_LFSR CUT1(cclk, rrs, PPO);

	always  #600 cclk=~cclk;
	initial begin	
		#550 rrs=1'b1;
		#550 rrs=1'b0;
		#240000 $stop;
	end

endmodule