`timescale 1ns/1ns
module my_mux_with_nands_TB();
	reg aa,bb,cc,dd,ss0,ss1;
	wire ww;
	my_mux_with_nands CUT1(aa,bb,cc,dd,ss0,ss1,ww);
	initial begin
		#20 aa=0;bb=1;cc=1;dd=1;ss0=1;ss1=1;
		#70 aa=1;
		#70 aa=1;dd=0;bb=0;cc=0;ss1=0;ss0=0;
		//The worst state to make output 0 in this my_mux_with_nands
		#70 ss0=1;
		#70 aa=1;dd=0;bb=0;cc=0;ss1=0;ss0=1;
		//The worst state to make output 1 in this my_mux_with_nands
		#70 ss0=0;
		#70 $stop;
	end

endmodule