`timescale 1ns/1ns




module CA5_Q3_TB_without_glitch();

	reg cclk = 1'b0;
	reg rrst = 1'b0;
	reg jj;
	wire ww_with_Moore;
	wire ww_with_Mealy;
	wire comp;


	CA5_Q1 CUT1 (cclk, rrst, jj, ww_with_Moore);
	CA5_Q2 CUT2 (cclk, rrst, jj, ww_with_Mealy);

	assign #5 comp = ww_with_Moore ^ ww_with_Mealy;

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
		#90 jj = 0;
		#100 jj = 0;
		#190 jj = 1;
		#190 $stop;
	end

endmodule