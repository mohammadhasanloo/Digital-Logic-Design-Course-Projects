`timescale 1ns/1ns
module comparing_two_type_of_mux_TB();
	reg aa,bb,cc,dd,ss0,ss1;
	wire ww_with_nands,ww_with_notif1;

	my_mux_with_nands CUT1(aa,bb,cc,dd,ss0,ss1,ww_with_nands);
	my_mux_with_tri_state_buffer CUT2(aa,bb,cc,dd,ss0,ss1,ww_with_notif1);

	initial begin
		#20 aa=0;bb=1;cc=1;dd=1;ss0=1;ss1=1;
		#70 aa=1;
		#70 aa=1;dd=0;bb=0;cc=0;ss1=0;ss0=0;
		#70 ss0=1;
		#70 aa=1;dd=0;bb=0;cc=0;ss1=0;ss0=1;
		#70 ss0=0;
		#70 $stop;
	end

endmodule

//The descriptions have written in report