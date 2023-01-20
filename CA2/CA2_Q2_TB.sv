`timescale 1ns/1ns

module CA2_Q2_4_bit_barrel_shifter_TB();
	logic AA0,AA1,AA2,AA3,SS0,SS1;
	wire SSHO0,SSHO1,SSHO2,SSHO3;

	CA2_Q2_4_bit_barrel_shifter CUT1(AA0,AA1,AA2,AA3,SS0,SS1,SSHO0,SSHO1,SSHO2,SSHO3);
	
	initial begin
		//The worst state to make output 0 in this 4_bit_barrel_shifter
		#20 AA0=0;AA1=0;AA2=0;AA3=0;SS0=0;SS1=0;
		//The worst state to make output 1 in this 4_bit_barrel_shifter
		#150 AA0=1;
		#150 SS1=1;
		#150 AA1=1;
		#150 $stop;
	end

endmodule