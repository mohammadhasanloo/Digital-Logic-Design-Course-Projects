`timescale 1ns/1ns

module CA6_floating_point_mul_data_path(input clk, rst, startMul, input [31:0] A, B, output [31:0] result, output doneMul);
	
	reg in01, in02;
	wire out01;
	reg [7:0] in11, in12;
	wire [7:0] out1;
	reg [22:0] in21, in22;
	reg [22:0] out2;

	assign in01 = A[31];
	assign in02 = B[31];
	assign in11 = A[30:23];
	assign in12 = B[30:23];
	assign in21 = A[22:0];
	assign in22 = B[22:0];

	assign out01 = in01 ^ in02;
	CA6_full_adder(in11, in12, out1);
	CA6_seq_multiplier_top(clk, rst, startMul, in21, in22, out2, doneMul);



endmodule