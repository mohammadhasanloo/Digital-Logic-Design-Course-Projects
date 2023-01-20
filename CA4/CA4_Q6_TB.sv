`timescale 1ns/1ns


module CA4_Q6_D_flipflop_TB();

	logic DD;
	logic cclk=1'b0;
	wire QQ;

	CA4_Q6_D_flipflop CUT1 (DD, cclk, QQ);

	always #100 cclk=~cclk;

	initial begin 
		#100 DD=1;
		#100 DD=0;
		#100 DD=0;
		#100 DD=1;
		#200 $stop;
	end
endmodule