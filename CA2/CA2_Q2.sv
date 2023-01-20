`timescale 1ns/1ns

module CA2_Q2_4_bit_barrel_shifter(input A0,A1,A2,A3,S0,S1 ,output SHO0,SHO1,SHO2,SHO3);

	CA2_Q1_mux_with_assigning I0(.a(A0), .b(A1), .c(A2), .d(A3), .s1(S1), .s0(S0), .w(SHO0));
	CA2_Q1_mux_with_assigning I1(.a(A1), .b(A2), .c(A3), .d(A0), .s1(S1), .s0(S0), .w(SHO1));
	CA2_Q1_mux_with_assigning I2(.a(A2), .b(A3), .c(A0), .d(A1), .s1(S1), .s0(S0), .w(SHO2));
	CA2_Q1_mux_with_assigning I3(.a(A3), .b(A0), .c(A1), .d(A2), .s1(S1), .s0(S0), .w(SHO3));



endmodule