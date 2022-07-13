`timescale 1ns/1ns
module my_nand_TB();
	reg aa,bb;
	wire ww;
	my_nand CUT1(aa,bb,ww);
	initial begin
		//The worst state to make output 0
		#20 aa=1;bb=1;
		#20 aa=0;bb=0;
		#20 aa=1;bb=1;
		#20 aa=0;
		#20 bb=0;
		#20 aa=1;
		#20 bb=1;
		//The worst state to make output 1
		#20 bb=0;
		#20 aa=0;
		#20 bb=1;
		#20 aa=1;
		#20 $stop;
	end

endmodule