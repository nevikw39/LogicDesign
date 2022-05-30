/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09
// Date      : Mon May 30 10:54:37 2022
/////////////////////////////////////////////////////////////


module PAT ( clk, reset, data, flag );
  input clk, reset, data;
  output flag;
  wire   N77, N78, N79, N80, N81, N82, N83, N84, N85, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28;
  wire   [3:0] state;
  wire   [3:0] next;

  TLATX1 \next_reg[3]  ( .G(N77), .D(N81), .Q(next[3]) );
  TLATX1 \next_reg[1]  ( .G(N77), .D(N79), .Q(next[1]) );
  TLATX1 \next_reg[2]  ( .G(N77), .D(N80), .Q(next[2]) );
  TLATX1 \next_reg[0]  ( .G(N77), .D(N78), .Q(next[0]) );
  DFFQX1 \state_reg[2]  ( .D(N84), .CK(clk), .Q(state[2]) );
  DFFQX1 \state_reg[0]  ( .D(N82), .CK(clk), .Q(state[0]) );
  DFFQX1 \state_reg[3]  ( .D(N85), .CK(clk), .Q(state[3]) );
  DFFQX1 \state_reg[1]  ( .D(N83), .CK(clk), .Q(state[1]) );
  CLKINVX1 U41 ( .A(n23), .Y(n3) );
  AOI211X1 U42 ( .A0(n28), .A1(n21), .B0(n2), .C0(n11), .Y(n19) );
  CLKINVX1 U43 ( .A(n15), .Y(n2) );
  AOI211X1 U44 ( .A0(n4), .A1(n5), .B0(n1), .C0(n27), .Y(n25) );
  CLKINVX1 U45 ( .A(n19), .Y(n1) );
  NAND3BX1 U46 ( .AN(n13), .B(n16), .C(n9), .Y(n27) );
  NAND2X1 U47 ( .A(n22), .B(n26), .Y(n23) );
  NAND2X1 U48 ( .A(n26), .B(n28), .Y(n15) );
  NAND2X1 U49 ( .A(n25), .B(n6), .Y(N77) );
  AND2X2 U50 ( .A(n26), .B(n5), .Y(n13) );
  NOR2X1 U51 ( .A(n4), .B(state[3]), .Y(n26) );
  NOR4X1 U52 ( .A(n8), .B(state[0]), .C(state[2]), .D(state[1]), .Y(flag) );
  NAND2X1 U53 ( .A(state[3]), .B(n6), .Y(n8) );
  NOR2X1 U54 ( .A(n5), .B(state[1]), .Y(n28) );
  NAND3X1 U55 ( .A(n26), .B(state[0]), .C(state[1]), .Y(n9) );
  AOI21X1 U56 ( .A0(n9), .A1(n10), .B0(reset), .Y(N81) );
  NAND2X1 U57 ( .A(data), .B(n11), .Y(n10) );
  NAND3X1 U58 ( .A(state[1]), .B(state[0]), .C(n21), .Y(n16) );
  NOR2X1 U59 ( .A(state[3]), .B(state[2]), .Y(n21) );
  CLKINVX1 U60 ( .A(reset), .Y(n6) );
  NAND3X1 U61 ( .A(state[3]), .B(n4), .C(n22), .Y(n17) );
  AND2X2 U62 ( .A(state[1]), .B(n5), .Y(n22) );
  CLKINVX1 U63 ( .A(state[2]), .Y(n4) );
  CLKINVX1 U64 ( .A(state[0]), .Y(n5) );
  AND3X2 U65 ( .A(state[3]), .B(n4), .C(n28), .Y(n11) );
  NOR2X1 U66 ( .A(reset), .B(n12), .Y(N80) );
  AOI211X1 U67 ( .A0(n13), .A1(n7), .B0(n3), .C0(n14), .Y(n12) );
  AOI31X1 U68 ( .A0(n15), .A1(n16), .A2(n17), .B0(n7), .Y(n14) );
  AND2X2 U69 ( .A(n24), .B(n6), .Y(N78) );
  OAI211X1 U70 ( .A0(n25), .A1(data), .B0(n23), .C0(n17), .Y(n24) );
  AND2X2 U71 ( .A(n18), .B(n6), .Y(N79) );
  OAI211X1 U72 ( .A0(n7), .A1(n19), .B0(n20), .C0(n17), .Y(n18) );
  AOI32X1 U73 ( .A0(n21), .A1(n7), .A2(n22), .B0(data), .B1(n3), .Y(n20) );
  AND2X2 U74 ( .A(next[2]), .B(n6), .Y(N84) );
  AND2X2 U75 ( .A(next[1]), .B(n6), .Y(N83) );
  AND2X2 U76 ( .A(next[3]), .B(n6), .Y(N85) );
  AND2X2 U77 ( .A(next[0]), .B(n6), .Y(N82) );
  CLKINVX1 U78 ( .A(data), .Y(n7) );
endmodule

