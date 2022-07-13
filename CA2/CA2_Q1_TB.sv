`timescale 1ns/1ns

module CA2_Q1_mux_with_assigning_TB();
	
	logic aa,bb,cc,dd,ss0,ss1;
	wire ww;
	CA2_Q1_mux_with_assigning CUT1(aa,bb,cc,dd,ss0,ss1,ww);
	initial begin
		#20 aa=0;bb=1;cc=1;dd=1;ss0=0;ss1=0;
		#70 aa=1;
		#70 aa=1;dd=0;bb=0;cc=0;ss1=0;ss0=0;
		//The worst state to make output 0 in this mux_with_assigning
		#70 ss0=1;
		#70 aa=1;dd=0;bb=0;cc=0;ss1=0;ss0=1;
		//The worst state to make output 1 in this mux_with_assigning
		#70 ss0=0;
		#70 $stop;
	end





endmodule