`timescale 1ns/1ns

module CA2_Q1_mux_with_assigning(input a,b,c,d,s0,s1, output w);

	assign #(37,39)       w=(s0==0 & s1==0)? a:
				(s0==1 & s1==0)? b:
				(s0==0 & s1==1)? c:
				(s0==1 & s1==1)? d:
				1'bx;

endmodule