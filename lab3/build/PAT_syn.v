/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09
// Date      : Sat May 28 17:47:08 2022
/////////////////////////////////////////////////////////////


module PAT ( clk, reset, data, flag );
  input clk, reset, data;
  output flag;
  wire   N65, N66, N67, N68, N69, N70, N71, N72, N73, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26;
  wire   [3:0] state;

  TLATX1 \next_reg[3]  ( .G(N65), .D(N69), .QN(n25) );
  TLATX1 \next_reg[1]  ( .G(N65), .D(N67), .QN(n24) );
  TLATX1 \next_reg[2]  ( .G(N65), .D(N68), .QN(n23) );
  TLATX1 \next_reg[0]  ( .G(N65), .D(N66), .QN(n26) );
  DFFQX1 \state_reg[3]  ( .D(N73), .CK(clk), .Q(state[3]) );
  DFFQX1 \state_reg[2]  ( .D(N72), .CK(clk), .Q(state[2]) );
  DFFQX1 \state_reg[1]  ( .D(N71), .CK(clk), .Q(state[1]) );
  DFFQX1 \state_reg[0]  ( .D(N70), .CK(clk), .Q(state[0]) );
  AND4X1 U35 ( .A(n12), .B(n7), .C(n16), .D(n20), .Y(n18) );
  AOI31X1 U36 ( .A0(n2), .A1(n1), .A2(n3), .B0(n15), .Y(n20) );
  NAND2X1 U37 ( .A(n19), .B(n3), .Y(n13) );
  NAND2X1 U38 ( .A(n18), .B(n4), .Y(N65) );
  NOR2X1 U39 ( .A(n1), .B(state[3]), .Y(n19) );
  NAND3X1 U40 ( .A(state[0]), .B(n19), .C(state[1]), .Y(n7) );
  NOR4X1 U41 ( .A(n6), .B(state[0]), .C(state[2]), .D(state[1]), .Y(flag) );
  NAND2X1 U42 ( .A(state[3]), .B(n4), .Y(n6) );
  NAND3BX1 U43 ( .AN(n21), .B(state[1]), .C(state[0]), .Y(n12) );
  NAND3BX1 U44 ( .AN(n21), .B(state[1]), .C(n3), .Y(n16) );
  NOR3X1 U45 ( .A(n5), .B(reset), .C(n7), .Y(N69) );
  CLKINVX1 U46 ( .A(state[0]), .Y(n3) );
  NAND3X1 U47 ( .A(n19), .B(n2), .C(state[0]), .Y(n11) );
  NAND3X1 U48 ( .A(n19), .B(n3), .C(state[1]), .Y(n9) );
  CLKINVX1 U49 ( .A(state[1]), .Y(n2) );
  NAND2BX1 U50 ( .AN(state[3]), .B(n1), .Y(n21) );
  OAI211X1 U51 ( .A0(n21), .A1(n22), .B0(n13), .C0(n11), .Y(n15) );
  NAND2X1 U52 ( .A(state[0]), .B(n2), .Y(n22) );
  NOR2X1 U53 ( .A(reset), .B(n14), .Y(N67) );
  AOI2BB2X1 U54 ( .B0(data), .B1(n15), .A0N(n16), .A1N(data), .Y(n14) );
  NOR2X1 U55 ( .A(reset), .B(n17), .Y(N66) );
  OA21XL U56 ( .A0(n18), .A1(data), .B0(n9), .Y(n17) );
  CLKINVX1 U57 ( .A(state[2]), .Y(n1) );
  NOR2X1 U58 ( .A(n23), .B(reset), .Y(N72) );
  NOR2X1 U59 ( .A(n24), .B(reset), .Y(N71) );
  NOR2X1 U60 ( .A(n25), .B(reset), .Y(N73) );
  NOR2X1 U61 ( .A(n26), .B(reset), .Y(N70) );
  AOI31X1 U62 ( .A0(n8), .A1(n9), .A2(n10), .B0(reset), .Y(N68) );
  AO21X1 U63 ( .A0(n11), .A1(n12), .B0(n5), .Y(n10) );
  AO21X1 U64 ( .A0(n13), .A1(n7), .B0(data), .Y(n8) );
  CLKINVX1 U65 ( .A(reset), .Y(n4) );
  CLKINVX1 U66 ( .A(data), .Y(n5) );
endmodule

