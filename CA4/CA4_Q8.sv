`timescale 1ns/1ns


module CA4_Q8_8bit_shift_register(input sin, clk, rs, output [7:0] PO);
	genvar i;
	generate
	for (i=0;i<7;i=i+1) begin: I0
		CA4_Q7_D_flipflop_with_reset J0 (PO[i+1], clk, rs, PO[i]);


	end
		CA4_Q7_D_flipflop_with_reset J1 (sin, clk, rs, PO[7]);
	endgenerate


endmodule