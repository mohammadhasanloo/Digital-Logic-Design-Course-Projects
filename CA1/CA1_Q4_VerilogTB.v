`timescale 1ns/1ns

module my_mux_with_tri_state_buffer_TB();
	reg aa,bb,cc,dd,ss0,ss1;
	wire ww;
	
	my_mux_with_tri_state_buffer CUT1(aa,bb,cc,dd,ss0,ss1,ww);
	initial begin
		#20 aa=0;bb=0;cc=0;dd=0;ss0=0;ss1=0;
		#50 aa=1;
		#50 ss0=1;
		#50 cc=1;
		#50 ss1=1;
		#50 dd=1;
		#50 ss0=0;
		#50 aa=0;cc=0;dd=0;bb=1;
		#50 dd=1;bb=1;cc=1;aa=0;ss1=0;ss0=1;
		//Worst case to make output 0
		#50 ss0=0;
		#50 dd=0;bb=0;aa=0;cc=1;ss1=0;ss0=0;
		//Worst case to make output 1
		#50 ss0=1;
		#50 $stop;
	end

endmodule