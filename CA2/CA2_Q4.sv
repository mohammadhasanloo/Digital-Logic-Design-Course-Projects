`timescale 1ns/1ns

module CA2_Q4_16_bit_barrel_shifter(input [15:0] AA,[3:0] S, output [15:0] SHO);

	CA2_Q3_16to1_mux_with_4to1_mux I1(AA[0],AA[1],AA[2],AA[3],AA[4],AA[5],AA[6],AA[7],AA[8],AA[9],AA[10],AA[11],AA[12],AA[13],AA[14],AA[15], S, SHO[0]);
	CA2_Q3_16to1_mux_with_4to1_mux I2(AA[1],AA[2],AA[3],AA[4],AA[5],AA[6],AA[7],AA[8],AA[9],AA[10],AA[11],AA[12],AA[13],AA[14],AA[15],AA[0], S, SHO[1]);
	CA2_Q3_16to1_mux_with_4to1_mux I3(AA[2],AA[3],AA[4],AA[5],AA[6],AA[7],AA[8],AA[9],AA[10],AA[11],AA[12],AA[13],AA[14],AA[15],AA[0],AA[1], S, SHO[2]);
	CA2_Q3_16to1_mux_with_4to1_mux I4(AA[3],AA[4],AA[5],AA[6],AA[7],AA[8],AA[9],AA[10],AA[11],AA[12],AA[13],AA[14],AA[15],AA[0],AA[1],AA[2], S, SHO[3]);
	CA2_Q3_16to1_mux_with_4to1_mux I5(AA[4],AA[5],AA[6],AA[7],AA[8],AA[9],AA[10],AA[11],AA[12],AA[13],AA[14],AA[15],AA[0],AA[1],AA[2],AA[3], S, SHO[4]);
	CA2_Q3_16to1_mux_with_4to1_mux I6(AA[5],AA[6],AA[7],AA[8],AA[9],AA[10],AA[11],AA[12],AA[13],AA[14],AA[15],AA[0],AA[1],AA[2],AA[3],AA[4], S, SHO[5]);
	CA2_Q3_16to1_mux_with_4to1_mux I7(AA[6],AA[7],AA[8],AA[9],AA[10],AA[11],AA[12],AA[13],AA[14],AA[15],AA[0],AA[1],AA[2],AA[3],AA[4],AA[5], S, SHO[6]);
	CA2_Q3_16to1_mux_with_4to1_mux I8(AA[7],AA[8],AA[9],AA[10],AA[11],AA[12],AA[13],AA[14],AA[15],AA[0],AA[1],AA[2],AA[3],AA[4],AA[5],AA[6], S, SHO[7]);
	CA2_Q3_16to1_mux_with_4to1_mux I9(AA[8],AA[9],AA[10],AA[11],AA[12],AA[13],AA[14],AA[15],AA[0],AA[1],AA[2],AA[3],AA[4],AA[5],AA[6],AA[7], S, SHO[8]);
	CA2_Q3_16to1_mux_with_4to1_mux I10(AA[9],AA[10],AA[11],AA[12],AA[13],AA[14],AA[15],AA[0],AA[1],AA[2],AA[3],AA[4],AA[5],AA[6],AA[7],AA[8], S, SHO[9]);
	CA2_Q3_16to1_mux_with_4to1_mux I11(AA[10],AA[11],AA[12],AA[13],AA[14],AA[15],AA[0],AA[1],AA[2],AA[3],AA[4],AA[5],AA[6],AA[7],AA[8],AA[9], S, SHO[10]);
	CA2_Q3_16to1_mux_with_4to1_mux I12(AA[11],AA[12],AA[13],AA[14],AA[15],AA[0],AA[1],AA[2],AA[3],AA[4],AA[5],AA[6],AA[7],AA[8],AA[9],AA[10], S, SHO[11]);
	CA2_Q3_16to1_mux_with_4to1_mux I13(AA[12],AA[13],AA[14],AA[15],AA[0],AA[1],AA[2],AA[3],AA[4],AA[5],AA[6],AA[7],AA[8],AA[9],AA[10],AA[11], S, SHO[12]);
	CA2_Q3_16to1_mux_with_4to1_mux I14(AA[13],AA[14],AA[15],AA[0],AA[1],AA[2],AA[3],AA[4],AA[5],AA[6],AA[7],AA[8],AA[9],AA[10],AA[11],AA[12], S, SHO[13]);
	CA2_Q3_16to1_mux_with_4to1_mux I15(AA[14],AA[15],AA[0],AA[1],AA[2],AA[3],AA[4],AA[5],AA[6],AA[7],AA[8],AA[9],AA[10],AA[11],AA[12],AA[13], S, SHO[14]);
	CA2_Q3_16to1_mux_with_4to1_mux I16(AA[15],AA[0],AA[1],AA[2],AA[3],AA[4],AA[5],AA[6],AA[7],AA[8],AA[9],AA[10],AA[11],AA[12],AA[13],AA[14], S, SHO[15]);






endmodule