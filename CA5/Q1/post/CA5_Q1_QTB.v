`timescale 1ns/1ns




module CA5_Q1_QTB();

	reg cclk = 1'b0;
	reg rrst = 1'b0;
	reg jj;
	wire ww;


	CA5_Q1 UUT1 (cclk, rrst, jj, ww);

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