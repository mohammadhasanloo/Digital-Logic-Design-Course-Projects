`timescale 1ns/1ns

module CA6_TB();
	reg clk = 1'b0;
	reg rst = 1'b0;
	reg startMul;
	reg [31:0] A, B;
	wire [31:0] result;
	wire doneMul;
	CA6_floating_point_mul_data_path(clk, rst, startMul, A, B, result, doneMul);

	always #50 clk = ~clk;
	initial begin
		#200 A = $random;B = $random;
		#200 startMul = 1;
		#200 A = $random;B = $random;
		#200 startMul = 1;
		#200 A = $random;B = $random;
		#200 startMul = 1;
		#200 A = $random;B = $random;
		#200 startMul = 1;
		#200 A = $random;B = $random;
		#200 startMul = 1;
		#200 $stop;
	end



endmodule