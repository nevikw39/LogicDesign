/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09
// Date      : Sun May 29 20:05:23 2022
/////////////////////////////////////////////////////////////


module PAT ( clk, reset, data, flag );
  input clk, reset, data;
  output flag;
  wire   N65, N66, N67, N68, N69, N70, N71, N72, N73, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26;
  wire   [3:0] state;

  TLATX1 \next_reg[3]  ( .G(N65), .D(N69), .QN(n25) );
  TLATX1 \next_reg[2]  ( .G(N65), .D(N68), .QN(n24) );
  TLATX1 \next_reg[1]  ( .G(N65), .D(N67), .QN(n23) );
  TLATX1 \next_reg[0]  ( .G(N65), .D(N66), .QN(n26) );
  DFFQX1 \state_reg[3]  ( .D(N73), .CK(clk), .Q(state[3]) );
  DFFQX1 \state_reg[2]  ( .D(N72), .CK(clk), .Q(state[2]) );
  DFFQX1 \state_reg[0]  ( .D(N70), .CK(clk), .Q(state[0]) );
  DFFQX1 \state_reg[1]  ( .D(N71), .CK(clk), .Q(state[1]) );
  CLKINVX1 U35 ( .A(n22), .Y(n1) );
  OAI31XL U36 ( .A0(n21), .A1(n4), .A2(n3), .B0(n15), .Y(n22) );
  NOR2BX1 U37 ( .AN(state[2]), .B(state[3]), .Y(n18) );
  NOR4X1 U38 ( .A(n6), .B(state[0]), .C(state[2]), .D(state[1]), .Y(flag) );
  NAND2BX1 U39 ( .AN(reset), .B(state[3]), .Y(n6) );
  NAND3X1 U40 ( .A(n18), .B(n4), .C(state[1]), .Y(n10) );
  NAND3X1 U41 ( .A(state[0]), .B(n18), .C(state[1]), .Y(n7) );
  NOR3X1 U42 ( .A(n3), .B(state[0]), .C(n21), .Y(n13) );
  NAND3X1 U43 ( .A(n18), .B(n3), .C(state[0]), .Y(n15) );
  NOR3X1 U44 ( .A(n4), .B(state[1]), .C(n21), .Y(n14) );
  NAND3X1 U45 ( .A(n9), .B(n1), .C(n19), .Y(n17) );
  AOI211X1 U46 ( .A0(n20), .A1(n4), .B0(n13), .C0(n14), .Y(n19) );
  NOR2X1 U47 ( .A(state[2]), .B(state[1]), .Y(n20) );
  AOI21X1 U48 ( .A0(n10), .A1(n16), .B0(reset), .Y(N66) );
  NAND2X1 U49 ( .A(n17), .B(n5), .Y(n16) );
  NOR3X1 U50 ( .A(n5), .B(reset), .C(n7), .Y(N69) );
  OR2X1 U51 ( .A(state[3]), .B(state[2]), .Y(n21) );
  CLKINVX1 U52 ( .A(state[1]), .Y(n3) );
  CLKINVX1 U53 ( .A(state[0]), .Y(n4) );
  OA21XL U54 ( .A0(state[0]), .A1(n2), .B0(n7), .Y(n9) );
  CLKINVX1 U55 ( .A(n18), .Y(n2) );
  NOR2BX1 U56 ( .AN(n8), .B(reset), .Y(N68) );
  OAI221XL U57 ( .A0(n9), .A1(data), .B0(n5), .B1(n1), .C0(n10), .Y(n8) );
  CLKINVX1 U58 ( .A(data), .Y(n5) );
  NOR2X1 U59 ( .A(reset), .B(n11), .Y(N67) );
  AOI22X1 U60 ( .A0(data), .A1(n12), .B0(n13), .B1(n5), .Y(n11) );
  NAND3BX1 U61 ( .AN(n14), .B(n15), .C(n10), .Y(n12) );
  NOR2X1 U62 ( .A(n23), .B(reset), .Y(N71) );
  NOR2X1 U63 ( .A(n24), .B(reset), .Y(N72) );
  NOR2X1 U64 ( .A(n25), .B(reset), .Y(N73) );
  NOR2X1 U65 ( .A(n26), .B(reset), .Y(N70) );
  OR2X1 U66 ( .A(n17), .B(reset), .Y(N65) );
endmodule

