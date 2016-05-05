//Verilog HDL for "551FMAC", "mux1bit" "functional"


module mux1bit (a ,b ,sel, o );
	input a;
	input b;
	input sel;
	output o;

	wire nSel;
	myInv U1(sel,nSel);
	pmos U2(o,a,sel);
	nmos U3(o,a,nSel);

	pmos U4(o,b,nSel);
	nmos U5(o,b,sel);


endmodule

