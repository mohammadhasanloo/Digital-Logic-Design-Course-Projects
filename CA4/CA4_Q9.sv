`timescale 1ns/1ns


module CA4_Q9_8bit_shift_register(input sin, clk, rs, output logic [7:0] PO);


	always @ (posedge clk, posedge rs) begin

	if (rs)
		 PO <= 8'b0;
	 else
		PO <= {sin, PO[7:1]};

	end
endmodule