`timescale 1ns/1ns
module my_nand(input a,b,output w);
	wire y;
	supply0 Gnd;
	supply1 Vdd;
	pmos #(5,6,7) T1(w,Vdd,a);
	pmos #(5,6,7) T2(w,Vdd,b);
	nmos #(3,4,5) T3(y,Gnd,b);
	nmos #(3,4,5) T4(w,y,a);
endmodule