`timescale 1ns/1ns


module CA4_Q8_8bit_shift_register_TB();

	logic ssin;
	logic rrs=1'b0;
	logic cclk=1'b1;
	wire [7:0] PPO;


	CA4_Q8_8bit_shift_register CUT1(ssin, cclk, rrs, PPO);

	always  #610 cclk=~cclk;
	initial begin
		#600 ssin=1'b1;
		#600 ssin=1'b1;
		#600 ssin=1'b1;
		#600 ssin=1'b0;
		#600 ssin=1'b1;
		#600 ssin=1'b0;
		#600 ssin=1'b0;
		#600 ssin=1'b1;
		#600 ssin=1'b0;
		#600 ssin=1'b1;
		#600 ssin=1'b1;
		#600 ssin=1'b1;
		#600 ssin=1'b0;
		#600 ssin=1'b1;
		#600 ssin=1'b0;
		#600 ssin=1'b0;
		#600 ssin=1'b1;
		#600 ssin=1'b0;
		#600 rrs=1'b1;
		#600 ssin=1'b0;
		#600 ssin=1'b0;
		#600 $stop;
	end

endmodule