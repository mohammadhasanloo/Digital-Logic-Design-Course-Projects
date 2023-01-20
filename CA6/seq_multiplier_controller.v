`timescale 1ns/1ns

module CA6_seq_multiplier_controller(input clk, rst, startMul, A0, output reg loadA, shiftA, loadB, loadP, initP, Bsel, doneMul);

	wire Co;
	reg init_counter, inc_counter;
	reg [1:0] pstate, nstate;
	reg [4:0] Count;
	parameter [1:0]
	Idle = 0, init = 1, load = 2, shift = 3;

	always @(pstate, startMul, A0, Co) begin

		nstate = 0;
		{loadA, shiftA, loadB, loadP, initP, Bsel, doneMul} = 7'b0;
		{init_counter, inc_counter} = 2'b0;
		case(pstate)
			Idle: begin nstate = startMul ? init : Idle; doneMul = 1'b1; end
			init: begin nstate = startMul ? init : load; init_counter = 1'b1; initP = 1'b1; end
			load: begin nstate = shift; loadA = 1'b1; loadB = 1'b1; end
			shift:begin nstate = Co ? Idle : shift; loadP = 1'b1; shiftA = 1'b1; inc_counter = 1'b1; Bsel = A0; end
			default: nstate = Idle;
		endcase

	end


	always @(posedge clk, posedge rst) begin 
		if (rst)
			pstate <= Idle;
		else
			pstate <= nstate;
	end

	always @(posedge clk, posedge rst) begin
		if (rst) Count <= 5'b0;
		else
			if(init_counter) Count <= 5'b0;
				else
					if (inc_counter) Count <= Count + 1;
	end

	assign Co = (Count == 5'b10111) ? 1'b1 : 1'b0 ;





endmodule