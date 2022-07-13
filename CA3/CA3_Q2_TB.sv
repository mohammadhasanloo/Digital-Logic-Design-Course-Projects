`timescale 1ns/1ns


module CA3_Q2_full_adder_TB ();
	logic [5:0] aa;
	logic [5:0] bb;
	logic cci;
	wire cco;
	wire [5:0] ssum;
	CA3_Q2_full_adder #(6) CUT1(aa, bb, cci, ssum, cco);

	initial begin
		#20 aa=6'b111111;bb=6'b000000;cci=1;
		#400 aa=6'b111110;bb=6'b000100;cci=1;
		#400 aa=6'b111101;cci=1;
		#400 $stop; 



	end



endmodule