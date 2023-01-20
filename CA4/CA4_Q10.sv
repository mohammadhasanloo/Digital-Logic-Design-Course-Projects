`timescale 1ns/1ns


module CA4_Q10_LFSR(input clk, rs, output logic [7:0] PO);
	wire sin;
	assign sin = PO[3] ^ PO[0] ^ PO[6] ^ PO[7];
	always @ (posedge clk, posedge rs) begin

	if (rs)
		 PO <= 8'b10000000;
	 else
		PO <= {sin, PO[7:1]};

	end
	

endmodule