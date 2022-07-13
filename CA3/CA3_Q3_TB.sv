`timescale 1ns/1ns


module CA3_Q3_full_adder_TB ();
	parameter n = 4;
	logic [n-1:0] aa;
	logic [n-1:0] bb;
	logic cci;
	wire cco;
	wire [n-1:0] ssum;
	CA3_Q2_full_adder #(n) CUT1(aa, bb, cci, ssum, cco);

	initial repeat (4) #400 aa[3]=~aa[3];
	initial begin
		#0 bb=6'b111111;aa=6'b000001;cci=1;
		#400 bb=$random;cci=1;
		#400 bb=6'b111101;cci=1;
		#400 cci=$random;
		#400 $stop; 



	end



endmodule