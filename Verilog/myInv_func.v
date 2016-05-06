//Verilog HDL for "551FMAC", "myInv" "functional"


module myInv ( in, out );

    input in;
 	output out;
 	supply0 gnd;
 	supply1 vdd;

	pmos U1(out,vdd,in);
	nmos U2(out,gnd,in);
endmodule

