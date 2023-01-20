`timescale 1ns/1ns


module CA3_Q5_one_counter_marching1_TB();

	parameter n=127;
	logic [n-1:0] aa;
	wire [5:0] ssum;
	wire cco;
	
	CA3_Q4_one_counter #(n) CUT1(aa, ssum, cco);

	initial begin
		#0 aa=127'b0;
		for (int i=0;i<n;i=i+1) begin
			#2000 aa={1'b1,aa[126:1]};
		end
		#2000 $stop;
	end

endmodule