// Created by ihdl
module BoothEncoder ( x0, x1, x2, action );

  output  [2:0] action;
  input x2;
  input x1;
  input x0;

 wire nandx0x1x2,nNandx0x1x2,nx0,nx1,nx2;

  myInv U1(x2,nx2);
  myInv U2(x1,nx1);
  myInv U3(x0,nx0);

  myInv U4(nx2,action[0]);


  myNand3 U5(x0,x1,nx2,nandx0x1x2);
  myNand3 U6(nx0,nx1,x2,nNandx0x1x2);
  myNand2 U7(nandx0x1x2,nNandx0x1x2,action[1]);

  myXor U8(x0,x1,action[2]);


endmodule

