`timescale 1ns/1ns

module CA6_seq_multiplier_TB();
	reg clk = 1'b0;
	reg rst = 0;
	reg startMul = 0;
	reg [23:0] A, B;
	wire [23:0] result;
	wire doneMul;
	CA6_seq_multiplier_top I1 (clk, rst, startMul, A, B, result, doneMul);



	always #5 clk = ~clk;

	initial begin
		#20 rst = 1'b1;
		#20 rst = 1'b0;
		#200 A = 24'b010000000000000000000000;
		#200  B = 24'b010000000000000000000000;
		#15 startMul = 1'b1;
		#200 startMul = 1'b0;
		#600 A = $random;B = $random;
		#15 startMul = 1'b1;
		#120 startMul = 1'b0;
		#600 A = $random;B = $random;
		#15 startMul = 1'b1;
		#120 startMul = 1'b0;		
		#600 A = $random;B = $random;
		#15 startMul = 1'b1;
		#120 startMul = 1'b0;
		#200 $stop;
	end



endmodule