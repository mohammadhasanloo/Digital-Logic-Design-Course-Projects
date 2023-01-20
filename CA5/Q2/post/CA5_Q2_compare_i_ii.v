`timescale 1ns/1ns




module CA5_Q2_iii();

	reg cclk = 1'b0;
	reg rrst = 1'b0;
	reg jj;
	wire ww_pre_synth;
	wire ww_post_synth;

	CA5_Q2 UUT (cclk, rrst, jj, ww_post_synth);
	CA5_Q2_pre_synth UUT1 (cclk, rrst, jj, ww_pre_synth);
	always #100 cclk = ~cclk;
	initial begin
		#90 jj = 1;
		#190 jj = 1;
		#190 jj = 0;
		#190 jj = 0;
		#190 jj = 1;
		#190 jj = 0;
		#190 jj = 0;
		#190 jj = 1;
		#190 jj = 0;
		#190 jj = 1;
		#190 $stop;
	end

endmodule