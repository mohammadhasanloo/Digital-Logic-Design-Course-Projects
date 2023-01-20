`timescale 1ns/1ns


module CA3_Q5_one_counter_TB();

	parameter n=127;
	logic [n-1:0] aa;
	wire [5:0] ssum;
	wire cco;
	
	CA3_Q4_one_counter #(n) CUT1(aa, ssum, cco);

	initial begin
		#0 aa=127'b0;
		#2000 aa=$random;
		#2000 aa=$random;
		#2000 aa=$random;
		#2000 aa=$random;
		#2000 $stop;
	end

endmodule