//Verilog HDL for "551FMAC", "myXor" "functional"


module myXor2(a,b,f );

  output f;
  input b;
  input a;
  supply0 gnd;
  supply1 vdd;

  wire aNot,bNot;
  wire AandNotB,notAandB;
  wire AandB,notAandnotB;

  pmos U1(bNot,vdd,b);
  nmos U2(bNot,gnd,b);
  pmos U3(aNot,vdd,a);
  nmos U4(aNot,gnd,a);

  pmos U5(AandNotB,vdd,a);
  pmos U6(f,AandNotB,bNot);
  pmos U7(notAandB,vdd,aNot);
  pmos U8(f,notAandB,b);

  nmos U9(f,AandB,a);
  nmos U10(AandB,gnd,b);
  nmos U11(f,notAandnotB,aNot);
  nmos U12(notAandnotB,gnd,bNot);
 
endmodule

