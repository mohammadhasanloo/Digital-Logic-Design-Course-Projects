`timescale 1ns/1ns

module CA6_seq_multiplier_data_path(input clk, rst, loadA, loadB, loadP, shiftA, initP, Bsel, input [23:0] A, B, output [23:0] result, output A0);
	reg [23:0] Preg, Areg, Breg;
	wire [23:0] B_AND;
	wire [24:0] AddBus;
	
	always @(posedge clk, posedge rst) begin
		if (rst)
			Breg <= 24'b0;
		else
			if (loadB)
				Breg <= B;
	end

	always @(posedge clk, posedge rst) begin
		if (rst)
			Preg <= 24'b0;
		else begin
 			if (initP)
				Preg <= 24'b0;
				else
					if (loadP)
						Preg <= AddBus[24:1];
		end
	end

	always @(posedge clk, posedge rst) begin
		if (rst)
			Areg <= 24'b0;
		else begin
			if (loadA)
				Areg <= A;
				else
					if (shiftA)
						Areg <= {AddBus[0], Areg[23:1]};
		end
	end

	assign B_AND = Bsel ? Breg : 24'b0;
	assign AddBus = B_AND + Preg;

	assign result = Preg;
	//if (Preg[23]) begin
	//assign result = {Preg[22:0], Areg[23]};
	//end
	//else begin
	//	assign result = {Preg[21:0], Areg[23:22]};
	//end

	assign A0 = Areg[0];

endmodule