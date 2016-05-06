//Verilog HDL for "551FMAC", "myNand3" "functional"


module myNand3 (a,b,c,f );
  output f;
  input a;
  input b;
  input c;
  supply0 gnd;
  supply1 vdd;

  wire nmosANmosB;
  wire nmosBNmosC;

  pmos U1(f,vdd,a);
  pmos U2(f,vdd,b);
  pmos U3(f,vdd,c);
  nmos U4(f,nmosANmosB,a);
  nmos U5(nmosANmosB,nmosBNmosC,b);
  nmos U6(nmosBNmosC,gnd,c);

endmodule

