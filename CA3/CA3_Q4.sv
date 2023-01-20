`timescale 1ns/1ns


module CA3_Q4_one_counter #(parameter n=127) (input [n-1:0] a, output [5:0] sum, output co);
	
	wire [63:0] two_bit_adder;
	wire [47:0] three_bit_adder;
	wire [31:0] four_bit_adder;
	wire [19:0] five_bit_adder;
	wire [11:0] six_bit_adder;

	genvar k;
	generate
		for (k=0;k<32;k=k+1) begin: I1
			CA3_Q2_full_adder #(1) J1 (a[3*k], a[3*k + 1], a[3*k + 2], two_bit_adder[2*k], two_bit_adder[2*k + 1]);
		end

		for (k=0;k<16;k=k+1) begin: I2
			CA3_Q2_full_adder #(2) J2 (two_bit_adder[4*k + 1:4*k], two_bit_adder[4*k + 3:4*k + 2], a[96 + k], three_bit_adder[3*k + 1:3*k], three_bit_adder[3*k + 2]);
		end

		for (k=0;k<8;k=k+1) begin: I3
			CA3_Q2_full_adder #(3) J3 (three_bit_adder[6*k + 2:6*k], three_bit_adder[6*k + 5:6*k + 3], a[112 + k], four_bit_adder[4*k + 2:4*k], four_bit_adder[4*k + 3]);
		end

		for (k=0;k<4;k=k+1) begin: I4
			CA3_Q2_full_adder #(4) J4 (four_bit_adder[8*k + 3:8*k], four_bit_adder[8*k + 7:8*k + 4], a[120 + k], five_bit_adder[5*k + 3:5*k], five_bit_adder[5*k + 4]);
		end

		for (k=0;k<2;k=k+1) begin: I5
			CA3_Q2_full_adder #(5) J5 (five_bit_adder[10*k + 4:10*k], five_bit_adder[10*k + 9:10*k + 5], a[124 + k], six_bit_adder[6*k + 4:6*k], six_bit_adder[6*k + 5]);
		end

		for (k=0;k<1;k=k+1) begin: I6
			CA3_Q2_full_adder #(6) J6 (six_bit_adder[12*k + 5:12*k], six_bit_adder[12*k + 11:12*k + 6], a[126 + k], sum, co);
		end

	endgenerate


endmodule