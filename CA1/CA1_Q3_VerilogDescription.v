`timescale 1ns/1ns

module my_nand_with_two_inputs(input a,b,output w);
	wire y1;
	supply0 Gnd;
	supply1 Vdd;
	pmos #(5,6,7) U1(w,Vdd,a);
	pmos #(5,6,7) U2(w,Vdd,b);
	nmos #(3,4,5) U3(y1,Gnd,a);
	nmos #(3,4,5) U4(w,y1,b);
endmodule

module my_nand_with_three_inputs(input a,b,c,output w);
	wire y1,y2;
	supply0 Gnd;
	supply1 Vdd;
	pmos #(5,6,7) V1(w,Vdd,a);
	pmos #(5,6,7) V2(w,Vdd,b);
	pmos #(5,6,7) V3(w,Vdd,c);
	nmos #(3,4,5) V4(y1,Gnd,a);
	nmos #(3,4,5) V5(y2,y1,b);
	nmos #(3,4,5) V6(w,y2,c);
endmodule

module my_nand_with_four_inputs(input a,b,c,d,output w);
	wire y1,y2,y3;
	supply0 Gnd;
	supply1 Vdd;
	pmos #(5,6,7) T1(w,Vdd,a);
	pmos #(5,6,7) T2(w,Vdd,b);
	pmos #(5,6,7) T3(w,Vdd,c);
	pmos #(5,6,7) T4(w,Vdd,d);
	nmos #(3,4,5) T5(y3,Gnd,a);
	nmos #(3,4,5) T6(y2,y3,b);
	nmos #(3,4,5) T7(y1,y2,c);
	nmos #(3,4,5) T8(w,y1,d);
endmodule




module my_mux_with_nands(input a,b,c,d,s0,s1, output w);

	wire s0_prime,s1_prime,y1,y2,y3,y4;
	//Use nand as an inverter
	my_nand_with_two_inputs I6( .a(s0), .b(s0), .w(s0_prime));
	my_nand_with_two_inputs I5( .a(s1), .b(s1), .w(s1_prime));

	my_nand_with_three_inputs I0( .a(s0_prime), .b(a), .c(s1_prime), .w(y1));
	my_nand_with_three_inputs I1( .a(b), .b(s0_prime), .c(s1), .w(y2));
	my_nand_with_three_inputs I2( .a(c), .b(s0), .c(s1_prime), .w(y3));
	my_nand_with_three_inputs I3( .a(d), .b(s0), .c(s1), .w(y4));

	my_nand_with_four_inputs I4( .a(y1), .b(y2), .c(y3), .d(y4), .w(w));
endmodule