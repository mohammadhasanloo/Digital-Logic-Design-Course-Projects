`timescale 1ns/1ns


module CA2_Q4_16_bit_barrel_shifter_TB();

	logic [15:0] A;
	logic [3:0] SS;
	wire [15:0] SSHO;

	CA2_Q4_16_bit_barrel_shifter CUT1(A, SS, SSHO);
	
	initial begin
		#20 A=16'b0000000000000001;SS=4'b0000;
		//The worst state to make output 1 in this 16to1_mux_with_4to1_mux
		#300 SS=4'b0001;
		#300 SS=4'b0011;
		#300 A=16'b0000000000001001;
		//The worst state to make output 0 in this 16to1_mux_with_4to1_mux
		#300 $stop;	




	end




endmodule