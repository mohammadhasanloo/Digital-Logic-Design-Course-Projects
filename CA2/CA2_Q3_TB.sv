`timescale 1ns/1ns

module CA2_Q3_16to1_mux_with_4to1_mux_TB();
	
	logic [15:0] AA;
	logic [3:0] SS;
	wire ww;

	CA2_Q3_16to1_mux_with_4to1_mux CUT1(AA[0],AA[1],AA[2],AA[3],AA[4],AA[5],AA[6],AA[7],AA[8],AA[9],AA[10],AA[11],AA[12],AA[13],AA[14],AA[15], SS, ww);
	initial begin
		#20 AA=16'b0000000000000000;SS=4'b0000;
		//The worst state to make output 1 in this 16to1_mux_with_4to1_mux
		#300 AA=16'b0000000000000001;
		#300 SS=4'b0001;
		#300 SS=4'b0011;
		#300 AA=16'b0000000000001001;
		#300 AA=16'b0000000000000001;SS=4'b0000;
		//The worst state to make output 0 in this 16to1_mux_with_4to1_mux
		#300 AA=16'b0000000000000000;
		#300 $stop;		



	end


endmodule