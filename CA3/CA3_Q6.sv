`timescale 1ns/1ns


module CA3_Q6_one_counter #(parameter n=127) (input [n-1:0] a, output logic [5:0] sum, output logic co);
	
	integer i;
	always @(a) begin
		sum=6'b000000;
		co=1'b0;
			for(i=0;i<n;i=i+1) begin
				if (a[i]==1'b1) {co,sum} = {co,sum} + 1;
			end
	end



endmodule