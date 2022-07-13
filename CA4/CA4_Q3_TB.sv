`timescale 1ns/1ns


module CA4_Q3_D_latch_TB();

	logic DD;
	logic cclk=1'b0;
	wire QQ;

	CA4_Q3_D_latch CUT1 (DD, cclk, QQ);

	always #80 cclk=~cclk;

	initial begin 
		#80 DD=1;
		#80 DD=0;
		#80 DD=0;
		#80 DD=1;
		#80 $stop;
	end
endmodule