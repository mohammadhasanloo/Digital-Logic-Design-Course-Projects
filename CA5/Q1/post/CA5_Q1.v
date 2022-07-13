`timescale 1ns/1ns




module CA5_Q1_pre_synth(input clk, rst, j, output w);

	reg [2:0] ns, ps;
	parameter [2:0] A = 3'b000, B = 3'b001, C = 3'b010, D = 3'b011, E = 3'b100, F = 3'b101;

	always @(j, ps) begin

		ns <= 3'b0;
		
		case(ps)
		A: ns <= j ? B : A;
		B: ns <= j ? B : C;
		C: ns <= j ? B : D;
		D: ns <= j ? E : A;
		E: ns <= j ? B : F;
		F: ns <= j ? B : D;
		default: ns <= 3'b0;
		endcase

	end

	assign w = (ps == 3'b101) ? 1'b1 : 1'b0;



	always @(posedge clk, posedge rst) begin

		if (rst)
			ps <= 3'b0;
		else
			ps <= ns;


	end


endmodule