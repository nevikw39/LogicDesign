/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09
// Date      : Mon Apr 25 14:50:53 2022
/////////////////////////////////////////////////////////////


module CLA4bit_0 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S[3]) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S[2]) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S[1]) );
  XOR2X1 U4 ( .A(Cin), .B(n7), .Y(S[0]) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B[3]), .A1N(A[3]), .Y(Cout) );
  XNOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B[1]), .A1(A[1]), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B[1]), .B(A[1]), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(Cin), .B0(A[0]), .B1(B[0]), .Y(n6) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n7) );
endmodule


module CLA4bit_7 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S[3]) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S[2]) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S[1]) );
  XOR2X1 U4 ( .A(Cin), .B(n7), .Y(S[0]) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B[3]), .A1N(A[3]), .Y(Cout) );
  XNOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B[1]), .A1(A[1]), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B[1]), .B(A[1]), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(Cin), .B0(A[0]), .B1(B[0]), .Y(n6) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n7) );
endmodule


module CLA4bit_6 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S[3]) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S[2]) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S[1]) );
  XOR2X1 U4 ( .A(Cin), .B(n7), .Y(S[0]) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B[3]), .A1N(A[3]), .Y(Cout) );
  XNOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B[1]), .A1(A[1]), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B[1]), .B(A[1]), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(Cin), .B0(A[0]), .B1(B[0]), .Y(n6) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n7) );
endmodule


module CLA4bit_5 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S[3]) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S[2]) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S[1]) );
  XOR2X1 U4 ( .A(Cin), .B(n7), .Y(S[0]) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B[3]), .A1N(A[3]), .Y(Cout) );
  XNOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B[1]), .A1(A[1]), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B[1]), .B(A[1]), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(Cin), .B0(A[0]), .B1(B[0]), .Y(n6) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n7) );
endmodule


module Adder16bit_0 ( A, B, Cin, S, Cout );
  input [15:0] A;
  input [15:0] B;
  output [15:0] S;
  input Cin;
  output Cout;

  wire   [2:0] c;

  CLA4bit_0 cla0 ( .A(A[3:0]), .B(B[3:0]), .Cin(Cin), .S(S[3:0]), .Cout(c[0])
         );
  CLA4bit_7 cla1 ( .A(A[7:4]), .B(B[7:4]), .Cin(c[0]), .S(S[7:4]), .Cout(c[1])
         );
  CLA4bit_6 cla2 ( .A(A[11:8]), .B(B[11:8]), .Cin(c[1]), .S(S[11:8]), .Cout(
        c[2]) );
  CLA4bit_5 cla3 ( .A(A[15:12]), .B(B[15:12]), .Cin(c[2]), .S(S[15:12]), 
        .Cout(Cout) );
endmodule


module CLA4bit_4 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S[3]) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S[2]) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S[1]) );
  XOR2X1 U4 ( .A(Cin), .B(n7), .Y(S[0]) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B[3]), .A1N(A[3]), .Y(Cout) );
  XNOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B[1]), .A1(A[1]), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B[1]), .B(A[1]), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(Cin), .B0(A[0]), .B1(B[0]), .Y(n6) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n7) );
endmodule


module CLA4bit_3 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S[3]) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S[2]) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S[1]) );
  XOR2X1 U4 ( .A(Cin), .B(n7), .Y(S[0]) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B[3]), .A1N(A[3]), .Y(Cout) );
  XNOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B[1]), .A1(A[1]), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B[1]), .B(A[1]), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(Cin), .B0(A[0]), .B1(B[0]), .Y(n6) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n7) );
endmodule


module CLA4bit_2 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S[3]) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S[2]) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S[1]) );
  XOR2X1 U4 ( .A(Cin), .B(n7), .Y(S[0]) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B[3]), .A1N(A[3]), .Y(Cout) );
  XNOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B[1]), .A1(A[1]), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B[1]), .B(A[1]), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(Cin), .B0(A[0]), .B1(B[0]), .Y(n6) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n7) );
endmodule


module CLA4bit_1 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X1 U1 ( .A(n1), .B(n2), .Y(S[3]) );
  XOR2X1 U2 ( .A(n3), .B(n4), .Y(S[2]) );
  XOR2X1 U3 ( .A(n5), .B(n6), .Y(S[1]) );
  XOR2X1 U4 ( .A(Cin), .B(n7), .Y(S[0]) );
  OAI2BB2XL U5 ( .B0(n2), .B1(n1), .A0N(B[3]), .A1N(A[3]), .Y(Cout) );
  XNOR2X1 U6 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OA21XL U7 ( .A0(n4), .A1(n3), .B0(n8), .Y(n2) );
  OAI21XL U8 ( .A0(B[2]), .A1(A[2]), .B0(n8), .Y(n3) );
  NAND2X1 U9 ( .A(B[2]), .B(A[2]), .Y(n8) );
  OA21XL U10 ( .A0(n6), .A1(n5), .B0(n9), .Y(n4) );
  OAI21XL U11 ( .A0(B[1]), .A1(A[1]), .B0(n9), .Y(n5) );
  NAND2X1 U12 ( .A(B[1]), .B(A[1]), .Y(n9) );
  AOI22X1 U13 ( .A0(n7), .A1(Cin), .B0(A[0]), .B1(B[0]), .Y(n6) );
  XOR2X1 U14 ( .A(A[0]), .B(B[0]), .Y(n7) );
endmodule


module Adder16bit_1 ( A, B, Cin, S, Cout );
  input [15:0] A;
  input [15:0] B;
  output [15:0] S;
  input Cin;
  output Cout;

  wire   [2:0] c;

  CLA4bit_4 cla0 ( .A(A[3:0]), .B(B[3:0]), .Cin(Cin), .S(S[3:0]), .Cout(c[0])
         );
  CLA4bit_3 cla1 ( .A(A[7:4]), .B(B[7:4]), .Cin(c[0]), .S(S[7:4]), .Cout(c[1])
         );
  CLA4bit_2 cla2 ( .A(A[11:8]), .B(B[11:8]), .Cin(c[1]), .S(S[11:8]), .Cout(
        c[2]) );
  CLA4bit_1 cla3 ( .A(A[15:12]), .B(B[15:12]), .Cin(c[2]), .S(S[15:12]), 
        .Cout(Cout) );
endmodule


module ALU ( A, B, Cin, Mode, Y, Cout, Overflow );
  input [15:0] A;
  input [15:0] B;
  input [3:0] Mode;
  output [15:0] Y;
  input Cin;
  output Cout, Overflow;
  wire   cout_a, \_0_net_[15] , \_0_net_[14] , \_0_net_[13] , \_0_net_[12] ,
         \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] ,
         \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] ,
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] , cout_s, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444;
  wire   [15:0] sa;
  wire   [15:0] ss;
  assign \_0_net_[0]  = B[0];

  Adder16bit_0 adder ( .A(A), .B({B[15:1], \_0_net_[0] }), .Cin(Cin), .S(sa), 
        .Cout(cout_a) );
  Adder16bit_1 suber ( .A(A), .B({\_0_net_[15] , \_0_net_[14] , \_0_net_[13] , 
        \_0_net_[12] , \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , 
        \_0_net_[8] , \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , 
        \_0_net_[3] , \_0_net_[2] , \_0_net_[1] , \_0_net_[0] }), .Cin(1'b0), 
        .S(ss), .Cout(cout_s) );
  NOR2XL U212 ( .A(n237), .B(n382), .Y(n381) );
  NOR2XL U213 ( .A(n237), .B(n374), .Y(n373) );
  NOR2XL U214 ( .A(n237), .B(n366), .Y(n365) );
  NOR2XL U215 ( .A(n237), .B(n336), .Y(n335) );
  NOR2XL U216 ( .A(n237), .B(n289), .Y(n288) );
  XNOR2X1 U217 ( .A(n194), .B(B[9]), .Y(\_0_net_[9] ) );
  XNOR2X1 U218 ( .A(n195), .B(n196), .Y(\_0_net_[8] ) );
  NAND2X1 U219 ( .A(n197), .B(n198), .Y(n195) );
  XNOR2X1 U220 ( .A(n197), .B(B[7]), .Y(\_0_net_[7] ) );
  XNOR2X1 U221 ( .A(n199), .B(n200), .Y(\_0_net_[6] ) );
  NAND2X1 U222 ( .A(n201), .B(n202), .Y(n199) );
  XNOR2X1 U223 ( .A(n201), .B(B[5]), .Y(\_0_net_[5] ) );
  XNOR2X1 U224 ( .A(n203), .B(n204), .Y(\_0_net_[4] ) );
  NAND2X1 U225 ( .A(n205), .B(n206), .Y(n203) );
  XNOR2X1 U226 ( .A(n205), .B(B[3]), .Y(\_0_net_[3] ) );
  XNOR2X1 U227 ( .A(B[2]), .B(n207), .Y(\_0_net_[2] ) );
  NOR2X1 U228 ( .A(B[1]), .B(\_0_net_[0] ), .Y(n207) );
  XNOR2X1 U229 ( .A(n208), .B(B[1]), .Y(\_0_net_[1] ) );
  XNOR2X1 U230 ( .A(n209), .B(n210), .Y(\_0_net_[15] ) );
  NAND2X1 U231 ( .A(n211), .B(n212), .Y(n209) );
  XNOR2X1 U232 ( .A(n211), .B(B[14]), .Y(\_0_net_[14] ) );
  NOR2BX1 U233 ( .AN(n213), .B(B[13]), .Y(n211) );
  XNOR2X1 U234 ( .A(n213), .B(B[13]), .Y(\_0_net_[13] ) );
  NOR3X1 U235 ( .A(B[11]), .B(B[12]), .C(n214), .Y(n213) );
  XOR2X1 U236 ( .A(n215), .B(B[12]), .Y(\_0_net_[12] ) );
  OR2X1 U237 ( .A(n214), .B(B[11]), .Y(n215) );
  XOR2X1 U238 ( .A(n214), .B(B[11]), .Y(\_0_net_[11] ) );
  NAND3X1 U239 ( .A(n216), .B(n217), .C(n194), .Y(n214) );
  XNOR2X1 U240 ( .A(n218), .B(n216), .Y(\_0_net_[10] ) );
  NAND2X1 U241 ( .A(n194), .B(n217), .Y(n218) );
  NOR3X1 U242 ( .A(B[7]), .B(B[8]), .C(n219), .Y(n194) );
  CLKINVX1 U243 ( .A(n197), .Y(n219) );
  NOR3X1 U244 ( .A(B[5]), .B(B[6]), .C(n220), .Y(n197) );
  CLKINVX1 U245 ( .A(n201), .Y(n220) );
  NOR3X1 U246 ( .A(B[3]), .B(B[4]), .C(n221), .Y(n201) );
  NAND4X1 U247 ( .A(n222), .B(n223), .C(n224), .D(n225), .Y(Y[9]) );
  AOI221XL U248 ( .A0(A[10]), .A1(n226), .B0(ss[9]), .B1(n227), .C0(n228), .Y(
        n225) );
  OAI32X1 U249 ( .A0(n229), .A1(A[2]), .A2(n230), .B0(n231), .B1(n232), .Y(
        n228) );
  MX3XL U250 ( .A(n233), .B(n234), .C(n235), .S0(n236), .S1(B[9]), .Y(n224) );
  NOR2X1 U251 ( .A(n237), .B(n238), .Y(n235) );
  MXI2X1 U252 ( .A(n239), .B(n233), .S0(n236), .Y(n238) );
  NAND2X1 U253 ( .A(sa[9]), .B(n240), .Y(n223) );
  MXI2X1 U254 ( .A(n241), .B(n242), .S0(n236), .Y(n222) );
  NAND4X1 U255 ( .A(n243), .B(n244), .C(n245), .D(n246), .Y(Y[8]) );
  AOI221XL U256 ( .A0(A[9]), .A1(n226), .B0(ss[8]), .B1(n227), .C0(n247), .Y(
        n246) );
  OAI32X1 U257 ( .A0(n248), .A1(A[2]), .A2(n229), .B0(n231), .B1(n249), .Y(
        n247) );
  MX3XL U258 ( .A(n233), .B(n234), .C(n250), .S0(n232), .S1(B[8]), .Y(n245) );
  NOR2X1 U259 ( .A(n237), .B(n251), .Y(n250) );
  MXI2X1 U260 ( .A(n239), .B(n233), .S0(n232), .Y(n251) );
  NAND2X1 U261 ( .A(sa[8]), .B(n240), .Y(n244) );
  MXI2X1 U262 ( .A(n241), .B(n242), .S0(n232), .Y(n243) );
  NAND4X1 U263 ( .A(n252), .B(n253), .C(n254), .D(n255), .Y(Y[7]) );
  AOI221XL U264 ( .A0(n226), .A1(A[8]), .B0(ss[7]), .B1(n227), .C0(n256), .Y(
        n255) );
  OAI32X1 U265 ( .A0(n257), .A1(n258), .A2(n259), .B0(n231), .B1(n260), .Y(
        n256) );
  MX3XL U266 ( .A(n233), .B(n234), .C(n261), .S0(n249), .S1(B[7]), .Y(n254) );
  NOR2X1 U267 ( .A(n237), .B(n262), .Y(n261) );
  MXI2X1 U268 ( .A(n239), .B(n233), .S0(n249), .Y(n262) );
  NAND2X1 U269 ( .A(sa[7]), .B(n240), .Y(n253) );
  MXI2X1 U270 ( .A(n241), .B(n242), .S0(n249), .Y(n252) );
  NAND4X1 U271 ( .A(n263), .B(n264), .C(n265), .D(n266), .Y(Y[6]) );
  AOI221XL U272 ( .A0(A[7]), .A1(n226), .B0(ss[6]), .B1(n227), .C0(n267), .Y(
        n266) );
  OAI22XL U273 ( .A0(n231), .A1(n268), .B0(n259), .B1(n269), .Y(n267) );
  CLKINVX1 U274 ( .A(n270), .Y(n269) );
  MX3XL U275 ( .A(n233), .B(n234), .C(n271), .S0(n260), .S1(B[6]), .Y(n265) );
  NOR2X1 U276 ( .A(n237), .B(n272), .Y(n271) );
  MXI2X1 U277 ( .A(n239), .B(n233), .S0(n260), .Y(n272) );
  NAND2X1 U278 ( .A(sa[6]), .B(n240), .Y(n264) );
  MXI2X1 U279 ( .A(n241), .B(n242), .S0(n260), .Y(n263) );
  NAND4X1 U280 ( .A(n273), .B(n274), .C(n275), .D(n276), .Y(Y[5]) );
  AOI221XL U281 ( .A0(A[6]), .A1(n226), .B0(ss[5]), .B1(n227), .C0(n277), .Y(
        n276) );
  OAI22XL U282 ( .A0(n231), .A1(n278), .B0(n230), .B1(n259), .Y(n277) );
  MX3XL U283 ( .A(n233), .B(n234), .C(n279), .S0(n268), .S1(B[5]), .Y(n275) );
  NOR2X1 U284 ( .A(n237), .B(n280), .Y(n279) );
  MXI2X1 U285 ( .A(n239), .B(n233), .S0(n268), .Y(n280) );
  NAND2X1 U286 ( .A(sa[5]), .B(n240), .Y(n274) );
  MXI2X1 U287 ( .A(n241), .B(n242), .S0(n268), .Y(n273) );
  NAND4X1 U288 ( .A(n281), .B(n282), .C(n283), .D(n284), .Y(Y[4]) );
  AOI221XL U289 ( .A0(A[5]), .A1(n226), .B0(ss[4]), .B1(n227), .C0(n285), .Y(
        n284) );
  OAI22XL U290 ( .A0(n286), .A1(n231), .B0(n248), .B1(n259), .Y(n285) );
  NAND2X1 U291 ( .A(A[2]), .B(n287), .Y(n259) );
  MX3XL U292 ( .A(n233), .B(n234), .C(n288), .S0(n278), .S1(B[4]), .Y(n283) );
  MXI2X1 U293 ( .A(n239), .B(n233), .S0(n278), .Y(n289) );
  NAND2X1 U294 ( .A(sa[4]), .B(n240), .Y(n282) );
  MXI2X1 U295 ( .A(n241), .B(n242), .S0(n278), .Y(n281) );
  OR4X1 U296 ( .A(n290), .B(n291), .C(n292), .D(n293), .Y(Y[3]) );
  OAI22XL U297 ( .A0(n294), .A1(n295), .B0(n296), .B1(n278), .Y(n293) );
  OAI22XL U298 ( .A0(n297), .A1(n206), .B0(n231), .B1(n298), .Y(n292) );
  AO22X1 U299 ( .A0(sa[3]), .A1(n240), .B0(ss[3]), .B1(n227), .Y(n291) );
  MXI2X1 U300 ( .A(n299), .B(n300), .S0(n286), .Y(n290) );
  NOR2X1 U301 ( .A(n301), .B(n302), .Y(n300) );
  OAI31XL U302 ( .A0(n303), .A1(n304), .A2(n258), .B0(n305), .Y(n302) );
  MXI2X1 U303 ( .A(n233), .B(n234), .S0(n206), .Y(n301) );
  NOR2X1 U304 ( .A(n241), .B(n306), .Y(n299) );
  MXI2X1 U305 ( .A(n239), .B(n233), .S0(n206), .Y(n306) );
  OR4X1 U306 ( .A(n307), .B(n308), .C(n309), .D(n310), .Y(Y[2]) );
  OAI22XL U307 ( .A0(n286), .A1(n296), .B0(n297), .B1(n311), .Y(n310) );
  OAI22XL U308 ( .A0(n231), .A1(n257), .B0(n312), .B1(n295), .Y(n309) );
  AOI211X1 U309 ( .A0(n294), .A1(A[5]), .B0(n313), .C0(n314), .Y(n312) );
  AO21X1 U310 ( .A0(A[4]), .A1(n315), .B0(n316), .Y(n313) );
  AO22X1 U311 ( .A0(sa[2]), .A1(n240), .B0(ss[2]), .B1(n227), .Y(n308) );
  MXI2X1 U312 ( .A(n317), .B(n318), .S0(n298), .Y(n307) );
  AOI211X1 U313 ( .A0(n270), .A1(n287), .B0(n319), .C0(n242), .Y(n318) );
  MXI2X1 U314 ( .A(n233), .B(n234), .S0(n311), .Y(n319) );
  NOR2X1 U315 ( .A(n241), .B(n320), .Y(n317) );
  MXI2X1 U316 ( .A(n239), .B(n233), .S0(n311), .Y(n320) );
  CLKINVX1 U317 ( .A(B[2]), .Y(n311) );
  NAND4X1 U318 ( .A(n321), .B(n322), .C(n323), .D(n324), .Y(Y[1]) );
  AOI221XL U319 ( .A0(A[2]), .A1(n226), .B0(ss[1]), .B1(n227), .C0(n325), .Y(
        n324) );
  OAI22XL U320 ( .A0(n326), .A1(n295), .B0(n327), .B1(n258), .Y(n325) );
  AND2X1 U321 ( .A(n328), .B(n231), .Y(n327) );
  NOR4X1 U322 ( .A(n329), .B(n330), .C(A[14]), .D(n314), .Y(n326) );
  OA21XL U323 ( .A0(A[6]), .A1(A[7]), .B0(n294), .Y(n314) );
  AOI211X1 U324 ( .A0(n331), .A1(n332), .B0(A[5]), .C0(A[4]), .Y(n330) );
  NAND4X1 U325 ( .A(n333), .B(A[2]), .C(n232), .D(n236), .Y(n332) );
  NAND2X1 U326 ( .A(n294), .B(A[3]), .Y(n331) );
  OAI2BB1X1 U327 ( .A0N(A[10]), .A1N(n333), .B0(n334), .Y(n329) );
  MX3XL U328 ( .A(n233), .B(n234), .C(n335), .S0(n257), .S1(B[1]), .Y(n323) );
  MXI2X1 U329 ( .A(n239), .B(n233), .S0(n257), .Y(n336) );
  NAND2X1 U330 ( .A(sa[1]), .B(n240), .Y(n322) );
  MXI2X1 U331 ( .A(n241), .B(n242), .S0(n257), .Y(n321) );
  OAI211X1 U332 ( .A0(n297), .A1(n210), .B0(n337), .C0(n338), .Y(Y[15]) );
  AOI221XL U333 ( .A0(ss[15]), .A1(n227), .B0(sa[15]), .B1(n240), .C0(n339), 
        .Y(n338) );
  MXI2X1 U334 ( .A(n340), .B(n341), .S0(n342), .Y(n339) );
  NOR2X1 U335 ( .A(n242), .B(n343), .Y(n341) );
  MXI2X1 U336 ( .A(n233), .B(n234), .S0(n210), .Y(n343) );
  AOI211X1 U337 ( .A0(Mode[0]), .A1(n226), .B0(n344), .C0(n241), .Y(n340) );
  MXI2X1 U338 ( .A(n239), .B(n233), .S0(n210), .Y(n344) );
  AOI32X1 U339 ( .A0(A[1]), .A1(A[0]), .A2(n345), .B0(A[14]), .B1(n346), .Y(
        n337) );
  CLKINVX1 U340 ( .A(n231), .Y(n346) );
  NAND4X1 U341 ( .A(n347), .B(n348), .C(n349), .D(n350), .Y(Y[14]) );
  AOI211X1 U342 ( .A0(n345), .A1(n270), .B0(n351), .C0(n352), .Y(n350) );
  OA21XL U343 ( .A0(n237), .A1(n353), .B0(B[14]), .Y(n352) );
  MXI2X1 U344 ( .A(n239), .B(n233), .S0(n354), .Y(n353) );
  OAI22XL U345 ( .A0(n231), .A1(n355), .B0(n233), .B1(n356), .Y(n351) );
  NOR2X1 U346 ( .A(n257), .B(A[0]), .Y(n270) );
  AOI22X1 U347 ( .A0(ss[14]), .A1(n227), .B0(n226), .B1(A[15]), .Y(n349) );
  NAND2X1 U348 ( .A(sa[14]), .B(n240), .Y(n348) );
  MXI2X1 U349 ( .A(n241), .B(n357), .S0(n354), .Y(n347) );
  OAI21XL U350 ( .A0(B[14]), .A1(n234), .B0(n305), .Y(n357) );
  NAND4X1 U351 ( .A(n358), .B(n359), .C(n360), .D(n361), .Y(Y[13]) );
  AOI221XL U352 ( .A0(A[14]), .A1(n226), .B0(ss[13]), .B1(n227), .C0(n362), 
        .Y(n361) );
  OAI22XL U353 ( .A0(n231), .A1(n363), .B0(n230), .B1(n364), .Y(n362) );
  NAND2X1 U354 ( .A(A[0]), .B(n257), .Y(n230) );
  MX3XL U355 ( .A(n233), .B(n234), .C(n365), .S0(n355), .S1(B[13]), .Y(n360)
         );
  MXI2X1 U356 ( .A(n239), .B(n233), .S0(n355), .Y(n366) );
  NAND2X1 U357 ( .A(sa[13]), .B(n240), .Y(n359) );
  MXI2X1 U358 ( .A(n241), .B(n242), .S0(n355), .Y(n358) );
  NAND4X1 U359 ( .A(n367), .B(n368), .C(n369), .D(n370), .Y(Y[12]) );
  AOI221XL U360 ( .A0(A[13]), .A1(n226), .B0(ss[12]), .B1(n227), .C0(n371), 
        .Y(n370) );
  OAI22XL U361 ( .A0(n231), .A1(n372), .B0(n248), .B1(n364), .Y(n371) );
  CLKINVX1 U362 ( .A(n345), .Y(n364) );
  NOR2X1 U363 ( .A(n298), .B(n229), .Y(n345) );
  MX3XL U364 ( .A(n233), .B(n234), .C(n373), .S0(n363), .S1(B[12]), .Y(n369)
         );
  MXI2X1 U365 ( .A(n239), .B(n233), .S0(n363), .Y(n374) );
  NAND2X1 U366 ( .A(sa[12]), .B(n240), .Y(n368) );
  MXI2X1 U367 ( .A(n241), .B(n242), .S0(n363), .Y(n367) );
  NAND4X1 U368 ( .A(n375), .B(n376), .C(n377), .D(n378), .Y(Y[11]) );
  AOI221XL U369 ( .A0(A[12]), .A1(n226), .B0(ss[11]), .B1(n227), .C0(n379), 
        .Y(n378) );
  OAI32X1 U370 ( .A0(n303), .A1(n258), .A2(n229), .B0(n231), .B1(n380), .Y(
        n379) );
  MX3XL U371 ( .A(n233), .B(n234), .C(n381), .S0(n372), .S1(B[11]), .Y(n377)
         );
  MXI2X1 U372 ( .A(n239), .B(n233), .S0(n372), .Y(n382) );
  NAND2X1 U373 ( .A(sa[11]), .B(n240), .Y(n376) );
  MXI2X1 U374 ( .A(n241), .B(n242), .S0(n372), .Y(n375) );
  NAND4X1 U375 ( .A(n383), .B(n384), .C(n385), .D(n386), .Y(Y[10]) );
  AOI221XL U376 ( .A0(A[11]), .A1(n226), .B0(ss[10]), .B1(n227), .C0(n387), 
        .Y(n386) );
  OAI32X1 U377 ( .A0(n303), .A1(A[0]), .A2(n229), .B0(n231), .B1(n236), .Y(
        n387) );
  NAND2X1 U378 ( .A(n388), .B(n389), .Y(n231) );
  OR2X1 U379 ( .A(n304), .B(n286), .Y(n229) );
  CLKINVX1 U380 ( .A(n296), .Y(n226) );
  MX3XL U381 ( .A(n233), .B(n234), .C(n390), .S0(n380), .S1(B[10]), .Y(n385)
         );
  NOR2X1 U382 ( .A(n237), .B(n391), .Y(n390) );
  MXI2X1 U383 ( .A(n239), .B(n233), .S0(n380), .Y(n391) );
  NAND2X1 U384 ( .A(sa[10]), .B(n240), .Y(n384) );
  MXI2X1 U385 ( .A(n241), .B(n242), .S0(n380), .Y(n383) );
  CLKINVX1 U386 ( .A(n392), .Y(n241) );
  NAND3X1 U387 ( .A(n393), .B(n394), .C(n395), .Y(Y[0]) );
  AOI211X1 U388 ( .A0(\_0_net_[0] ), .A1(n396), .B0(n397), .C0(n398), .Y(n395)
         );
  NOR4X1 U389 ( .A(Mode[1]), .B(n399), .C(n400), .D(n401), .Y(n398) );
  AOI222XL U390 ( .A0(A[15]), .A1(n210), .B0(n402), .B1(n356), .C0(B[14]), 
        .C1(n354), .Y(n399) );
  NAND2X1 U391 ( .A(A[14]), .B(n212), .Y(n356) );
  CLKINVX1 U392 ( .A(B[14]), .Y(n212) );
  OAI2BB1X1 U393 ( .A0N(n355), .A1N(B[13]), .B0(n403), .Y(n402) );
  OAI221XL U394 ( .A0(B[12]), .A1(n363), .B0(B[13]), .B1(n355), .C0(n404), .Y(
        n403) );
  CLKINVX1 U395 ( .A(n405), .Y(n404) );
  AOI221XL U396 ( .A0(n372), .A1(B[11]), .B0(n363), .B1(B[12]), .C0(n406), .Y(
        n405) );
  CLKINVX1 U397 ( .A(n407), .Y(n406) );
  OAI221XL U398 ( .A0(B[10]), .A1(n380), .B0(B[11]), .B1(n372), .C0(n408), .Y(
        n407) );
  OAI221XL U399 ( .A0(A[10]), .A1(n216), .B0(A[9]), .B1(n217), .C0(n409), .Y(
        n408) );
  OAI221XL U400 ( .A0(B[8]), .A1(n232), .B0(B[9]), .B1(n236), .C0(n410), .Y(
        n409) );
  OAI221XL U401 ( .A0(A[7]), .A1(n198), .B0(A[8]), .B1(n196), .C0(n411), .Y(
        n410) );
  OAI221XL U402 ( .A0(B[6]), .A1(n260), .B0(B[7]), .B1(n249), .C0(n412), .Y(
        n411) );
  OAI221XL U403 ( .A0(A[5]), .A1(n202), .B0(A[6]), .B1(n200), .C0(n413), .Y(
        n412) );
  OAI221XL U404 ( .A0(B[4]), .A1(n278), .B0(B[5]), .B1(n268), .C0(n414), .Y(
        n413) );
  OAI222XL U405 ( .A0(A[3]), .A1(n206), .B0(n415), .B1(n416), .C0(A[4]), .C1(
        n204), .Y(n414) );
  CLKINVX1 U406 ( .A(B[4]), .Y(n204) );
  OAI22XL U407 ( .A0(B[3]), .A1(n286), .B0(B[2]), .B1(n417), .Y(n416) );
  AOI21X1 U408 ( .A0(n418), .A1(n419), .B0(A[2]), .Y(n417) );
  CLKINVX1 U409 ( .A(A[3]), .Y(n286) );
  NAND2X1 U410 ( .A(n420), .B(n221), .Y(n415) );
  CLKINVX1 U411 ( .A(n205), .Y(n221) );
  NOR3X1 U412 ( .A(B[2]), .B(\_0_net_[0] ), .C(B[1]), .Y(n205) );
  OAI21XL U413 ( .A0(n418), .A1(n208), .B0(n421), .Y(n420) );
  OAI22XL U414 ( .A0(B[2]), .A1(n257), .B0(n422), .B1(n298), .Y(n421) );
  NOR2X1 U415 ( .A(A[1]), .B(n419), .Y(n422) );
  CLKINVX1 U416 ( .A(\_0_net_[0] ), .Y(n208) );
  OA21XL U417 ( .A0(A[0]), .A1(n419), .B0(n248), .Y(n418) );
  NAND2X1 U418 ( .A(n258), .B(n257), .Y(n248) );
  CLKINVX1 U419 ( .A(B[1]), .Y(n419) );
  CLKINVX1 U420 ( .A(B[3]), .Y(n206) );
  CLKINVX1 U421 ( .A(A[5]), .Y(n268) );
  CLKINVX1 U422 ( .A(B[6]), .Y(n200) );
  CLKINVX1 U423 ( .A(B[5]), .Y(n202) );
  CLKINVX1 U424 ( .A(A[7]), .Y(n249) );
  CLKINVX1 U425 ( .A(A[6]), .Y(n260) );
  CLKINVX1 U426 ( .A(B[8]), .Y(n196) );
  CLKINVX1 U427 ( .A(B[7]), .Y(n198) );
  CLKINVX1 U428 ( .A(A[8]), .Y(n232) );
  CLKINVX1 U429 ( .A(B[9]), .Y(n217) );
  CLKINVX1 U430 ( .A(B[10]), .Y(n216) );
  CLKINVX1 U431 ( .A(A[10]), .Y(n380) );
  OAI22XL U432 ( .A0(n423), .A1(n295), .B0(n296), .B1(n257), .Y(n397) );
  NAND2X1 U433 ( .A(n424), .B(n425), .Y(n296) );
  OR2X1 U434 ( .A(n401), .B(n426), .Y(n295) );
  NAND3X1 U435 ( .A(Mode[3]), .B(Mode[2]), .C(Mode[0]), .Y(n401) );
  AOI211X1 U436 ( .A0(n294), .A1(A[7]), .B0(n427), .C0(n428), .Y(n423) );
  OAI32X1 U437 ( .A0(n316), .A1(A[10]), .A2(n236), .B0(A[6]), .B1(n429), .Y(
        n428) );
  AOI22X1 U438 ( .A0(n430), .A1(n278), .B0(n294), .B1(A[5]), .Y(n429) );
  CLKINVX1 U439 ( .A(A[4]), .Y(n278) );
  OAI2BB1X1 U440 ( .A0N(A[3]), .A1N(n294), .B0(n431), .Y(n430) );
  NAND4BX1 U441 ( .AN(n303), .B(n315), .C(n363), .D(n354), .Y(n431) );
  CLKINVX1 U442 ( .A(A[12]), .Y(n363) );
  NAND2X1 U443 ( .A(A[1]), .B(n298), .Y(n303) );
  CLKINVX1 U444 ( .A(A[9]), .Y(n236) );
  OAI21XL U445 ( .A0(A[14]), .A1(n355), .B0(n334), .Y(n427) );
  OA21XL U446 ( .A0(n316), .A1(n372), .B0(n342), .Y(n334) );
  CLKINVX1 U447 ( .A(A[11]), .Y(n372) );
  CLKINVX1 U448 ( .A(A[13]), .Y(n355) );
  NOR2BX1 U449 ( .AN(n315), .B(n316), .Y(n294) );
  NAND3X1 U450 ( .A(n354), .B(n342), .C(n333), .Y(n316) );
  NOR2X1 U451 ( .A(A[12]), .B(A[13]), .Y(n333) );
  CLKINVX1 U452 ( .A(A[14]), .Y(n354) );
  NOR4X1 U453 ( .A(A[10]), .B(A[11]), .C(A[8]), .D(A[9]), .Y(n315) );
  NAND2X1 U454 ( .A(n432), .B(n297), .Y(n396) );
  CLKINVX1 U455 ( .A(n237), .Y(n297) );
  OAI21XL U456 ( .A0(n425), .A1(n433), .B0(n392), .Y(n237) );
  CLKMX2X2 U457 ( .A(n233), .B(n239), .S0(A[0]), .Y(n432) );
  OA21XL U458 ( .A0(Mode[0]), .A1(n234), .B0(n433), .Y(n239) );
  NAND2X1 U459 ( .A(Mode[1]), .B(n434), .Y(n433) );
  MXI2X1 U460 ( .A(n435), .B(n436), .S0(n258), .Y(n394) );
  CLKINVX1 U461 ( .A(A[0]), .Y(n258) );
  OAI211X1 U462 ( .A0(\_0_net_[0] ), .A1(n234), .B0(n305), .C0(n328), .Y(n436)
         );
  NAND3X1 U463 ( .A(n257), .B(n298), .C(n287), .Y(n328) );
  NOR2X1 U464 ( .A(n304), .B(A[3]), .Y(n287) );
  NAND3X1 U465 ( .A(n434), .B(n426), .C(Mode[3]), .Y(n304) );
  CLKINVX1 U466 ( .A(A[2]), .Y(n298) );
  CLKINVX1 U467 ( .A(A[1]), .Y(n257) );
  CLKINVX1 U468 ( .A(n242), .Y(n305) );
  NOR2BX1 U469 ( .AN(n437), .B(Mode[0]), .Y(n242) );
  NAND2X1 U470 ( .A(n424), .B(Mode[3]), .Y(n234) );
  NOR2X1 U471 ( .A(n426), .B(Mode[2]), .Y(n424) );
  CLKINVX1 U472 ( .A(Mode[1]), .Y(n426) );
  OAI21XL U473 ( .A0(\_0_net_[0] ), .A1(n233), .B0(n392), .Y(n435) );
  NAND4X1 U474 ( .A(Mode[0]), .B(Mode[1]), .C(Mode[2]), .D(n425), .Y(n392) );
  NAND2X1 U475 ( .A(n437), .B(Mode[0]), .Y(n233) );
  NOR3X1 U476 ( .A(Mode[1]), .B(Mode[2]), .C(n425), .Y(n437) );
  CLKINVX1 U477 ( .A(Mode[3]), .Y(n425) );
  AOI22X1 U478 ( .A0(ss[0]), .A1(n227), .B0(sa[0]), .B1(n240), .Y(n393) );
  OAI31XL U479 ( .A0(n438), .A1(n439), .A2(n440), .B0(n441), .Y(Overflow) );
  MX3XL U480 ( .A(n442), .B(n443), .C(n444), .S0(n342), .S1(B[15]), .Y(n441)
         );
  CLKINVX1 U481 ( .A(A[15]), .Y(n342) );
  NAND3BX1 U482 ( .AN(sa[15]), .B(n240), .C(A[15]), .Y(n444) );
  NAND2X1 U483 ( .A(sa[15]), .B(n240), .Y(n443) );
  NAND2X1 U484 ( .A(n227), .B(n440), .Y(n442) );
  CLKINVX1 U485 ( .A(ss[15]), .Y(n440) );
  CLKINVX1 U486 ( .A(n400), .Y(n438) );
  NOR2X1 U487 ( .A(n210), .B(A[15]), .Y(n400) );
  CLKINVX1 U488 ( .A(B[15]), .Y(n210) );
  AO22X1 U489 ( .A0(cout_a), .A1(n240), .B0(cout_s), .B1(n227), .Y(Cout) );
  CLKINVX1 U490 ( .A(n439), .Y(n227) );
  NAND3X1 U491 ( .A(n388), .B(Mode[2]), .C(Mode[0]), .Y(n439) );
  AND2X1 U492 ( .A(n388), .B(n434), .Y(n240) );
  NOR2X1 U493 ( .A(n389), .B(Mode[0]), .Y(n434) );
  CLKINVX1 U494 ( .A(Mode[2]), .Y(n389) );
  NOR2X1 U495 ( .A(Mode[1]), .B(Mode[3]), .Y(n388) );
endmodule

