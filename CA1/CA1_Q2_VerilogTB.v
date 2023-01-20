`timescale 1ns/1ns
module my_tri_state_buffer_TB();
	reg aa,enn;
	wire ww;
	my_tri_state_buffer CUT1(aa,enn,ww);

	initial begin
		#20 aa=1;enn=0;
		#30 aa=1;enn=1;
		#30 enn=0;aa=0;
		//The worst state to make output 1 
		#30 enn=1;aa=0;
		//The worst state to make output 0 
		#30 enn=1;aa=1;
		#30 aa=0;
		//The worst state to make output z
		#30 enn=0;aa=1;
		#30 $stop;



	end

endmodule