`timescale 1ns/1ns


module CA3_Q2_full_adder #(parameter n=6) (input [n-1:0] a, b, input ci, output [n-1:0] sum, output co);
	
	assign #(51*(n),51*(n)) {co,sum} = a + b + ci;



endmodule