`timescale 1ns/1ns

module my_nand(input a,b,output w);
	wire y;
	supply0 Gnd;
	supply1 Vdd;
	pmos #(5,6,7) T1(w,Vdd,a);
	pmos #(5,6,7) T2(w,Vdd,b);
	nmos #(3,4,5) T3(y,Gnd,a);
	nmos #(3,4,5) T4(w,y,b);
endmodule


module my_tri_state_buffer(input a,en,output w);
	wire en_prime,y1,y2;
	supply0 Gnd;
	supply1 Vdd;
	pmos #(5,6,7) T1(en_prime,Vdd,en);
	nmos #(3,4,5) T4(en_prime,Gnd,en);
	pmos #(5,6,7) T2(y2,Vdd,en_prime);
	pmos #(5,6,7) T3(w,y2,a);
	nmos #(3,4,5) T5(y1,Gnd,en);
	nmos #(3,4,5) T6(w,y1,a);
endmodule



module my_mux_with_tri_state_buffer(input a,b,c,d,s0,s1,output w);
	supply0 Gnd;
	supply1 Vdd;

	wire s0_prime,s1_prime,y1,y2;

	//Use nand as inverter
	my_nand I0( .a(s0), .b(s0), .w(s0_prime));
	my_nand I1( .a(s1), .b(s1), .w(s1_prime));

	my_tri_state_buffer I2( .a(c), .en(s0), .w(y1));
	my_tri_state_buffer I3( .a(a), .en(s0_prime), .w(y1));
	my_tri_state_buffer I4( .a(d), .en(s0), .w(y2));
	my_tri_state_buffer I5( .a(b), .en(s0_prime), .w(y2));

	my_tri_state_buffer I6( .a(y1), .en(s1_prime), .w(w));
	my_tri_state_buffer I7( .a(y2), .en(s1), .w(w));

endmodule