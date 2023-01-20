`timescale 1ns/1ns
module my_tri_state_buffer(input a,en,output w);
	wire en_prime,y1,y2;
	supply0 Gnd;
	supply1 Vdd;
	pmos #(5,6,7) T1(en_prime,Vdd,en);
	nmos #(3,4,5) T4(en_prime,Gnd,en);
	pmos #(5,6,7) T2(y2,Vdd,a);
	pmos #(5,6,7) T3(w,y2,en_prime);
	nmos #(3,4,5) T5(y1,Gnd,a);
	nmos #(3,4,5) T6(w,y1,en);
endmodule