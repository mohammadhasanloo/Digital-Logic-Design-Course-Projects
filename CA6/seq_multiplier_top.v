`timescale 1ns/1ns

module CA6_seq_multiplier_top(input clk, rst, startMul, input [23:0] A, B, output [23:0] result, output doneMul);
	wire A0;
	wire loadA, loadB, loadP, shiftA, initP, Bsel;
	//assign A = {1'b1, A};
	//assign B = {1'b1, B};
	CA6_seq_multiplier_data_path I1(clk, rst, loadA, loadB, loadP, shiftA, initP, Bsel, A, B, result, A0);
	CA6_seq_multiplier_controller I2(clk, rst, startMul, A0, loadA, shiftA, loadB, loadP, initP, Bsel, doneMul);


endmodule