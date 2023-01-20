`timescale 1ns/1ns


module CA3_Q1_full_adder_TB();

	logic cci;
	logic bb, aa;
	wire ssum, cco;

	CA3_Q1_full_adder CUT1(aa, bb, cci, ssum, cco);

	initial begin
	#20 aa=1;bb=0;cci=1;
	//Worst case to get 1 on sum
	#60 bb=1;
	#60 cci=0;aa=0;
	//Worst case to get 0 on sum
	#60 aa=1;
	#60 bb=0;aa=0;cci=1;
	//Worst case to get 1 on co
	#60 bb=1;
	#60 bb=1;aa=0;cci=1;
	//Worst case to get 0 on co
	#60 bb=0;

	#60 $stop;
	end

endmodule