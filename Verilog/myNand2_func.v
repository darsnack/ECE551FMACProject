//Verilog HDL for "551FMAC", "myNand2" "functional"


module myNand2 (a, b, f );

  output f;
  input b;
  input a;
  supply0 gnd;
  supply1 vdd;

  wire nmosNmos;

  pmos U1(f,vdd,a);
  pmos U2(f,vdd,b);
  nmos U3(f,nmosNmos,a);
  nmos U4(nmosNmos,gnd,b);
endmodule

