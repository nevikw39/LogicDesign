module CLA4bit(A, B, Cin, S, Cout);

	parameter n = 4;
	input [n - 1 : 0] A, B;
	input Cin;
	
	wire [n - 1 : 0] g, p, c;
	assign g = A & B;
	assign p = A ^ B;
	assign c[0] = Cin;
	assign c[1] = g[0] | p[0] & g[0];
	assign c[2] = g[1] | p[1] & g[0] | p[1] & p[0] & c[0];
	assign c[3] = g[2] | p[2] & g[1] | p[2] & p[1] & g[0] | p[2] & p[1] & p[0] & c[0];

	output [n - 1 : 0] S;
	output Cout;

	assign S = P ^ C;
	assign Cout = g[3] | p[3] & g[2] | p[3] & p[2] & g[1] | p[3] & p[2] & p[1] & g[0] | p[3] & p[2] & p[1] & p[0] & c[0];

endmodule

module Adder16bit(A, B, Cin, S, Cout);

	parameter n = 16;
	parameter m = 4;

	input [n - 1 : 0] A, B;
	input Cin;
	
	output [n - 1 : 0] S;
	output Cout;

	wire [n - 2 : 0] c;
	CLA4bit cla0(A[3 : 0], B[3 : 0], Cin, S[3 : 0], c[0]), cla1(A[7 : 4], B[7 : 4], c[0], S[7 : 4], c[1]), cla2(A[11 : 8], B[11 : 8], c[1], S[11 : 8], c[2]), cla3(A[15 : 12], B[15 : 12], c[2], S[15 : 12], Cout);
	
endmodule

module ALU(A, B, Cin, Mode, Y, Cout, Overflow);

	parameter n = 16;
	parameter m = 4;
	
	input [n - 1: 0] A, B;
	input Cin;
	input [m - 1: 0] Mode;	

	output reg [n - 1: 0] Y;
	output reg Cout;
	output reg Overflow;
	
	always@(*)begin
		case(Mode)
			// Logical shift A left by 1-bit.
			4'd0: begin
			end
			// Arithmetic shift A left by 1-bit.
			4'd1: begin
			end
			// Logical shift A right by 1-bit.
			4'd2: begin
			end
			// Arithmetic shift A right by 1-bit.
			4'd3: begin
			end
			// Add two numbers with cla.
			4'd4: begin
			end
			// Subtract B from A.
			4'd5: begin
			end
			// and
			4'd6: begin
			end
			// or
			4'd7: begin
			end
			// not A
			4'd8: begin
			end
			// xor
			4'd9: begin
			end
			// xnor
			4'd10: begin
			end
			// nor
			4'd11: begin
			end
			// binary to one-hot
			4'd12: begin
			end
			// Comparator
			4'd13: begin
			end
			// B
			4'd14: begin
			end
			// find first one from left
			4'd15: begin
			end
			default: begin
			end
		endcase
	end
endmodule
