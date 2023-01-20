`timescale 1ns/1ns

module CA2_Q3_16to1_mux_with_4to1_mux(input [15:0] A,[3:0] S, output w);
	
	wire y0,y1,y2,y3; 

	CA2_Q1_mux_with_assigning I1(.a(A[0]), .b(A[1]), .c(A[2]), .d(A[3]), .s0(S[0]), .s1(S[1]), .w(y0));
	CA2_Q1_mux_with_assigning I2(.a(A[4]), .b(A[5]), .c(A[6]), .d(A[7]), .s0(S[0]), .s1(S[1]), .w(y1));
	CA2_Q1_mux_with_assigning I3(.a(A[8]), .b(A[9]), .c(A[10]), .d(A[11]), .s0(S[0]), .s1(S[1]), .w(y2));
	CA2_Q1_mux_with_assigning I4(.a(A[12]), .b(A[13]), .c(A[14]), .d(A[15]), .s0(S[0]), .s1(S[1]), .w(y3));
	CA2_Q1_mux_with_assigning I5(.a(y0), .b(y1), .c(y2), .d(y3), .s0(S[2]), .s1(S[3]), .w(w));



endmodule