`timescale 1ns/1ns


module CA4_Q7_D_flipflop_with_reset_TB();

	logic DD, rrs;
	logic cclk=1'b0;
	wire QQ;

	CA4_Q7_D_flipflop_with_reset CUT1 (DD, cclk, rrs, QQ);

	always #110 cclk=~cclk;

	initial begin
		#100 DD=1;rrs=0;
		#100 DD=0;
		#100 rrs=1;
		#100 DD=0;rrs=0;
		#100 DD=1;
		#100 rrs=1;
		#100 rrs=0;
		#100 DD=0;
		#100 DD=1;rrs=1;
		#100 DD=0;
		#100 rrs=0;
		#100 $stop;
	end
endmodule