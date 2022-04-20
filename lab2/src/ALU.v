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

	assign S = p ^ c;
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
	
	input [n - 1 : 0] A, B;
	input Cin;
	input [m - 1 : 0] Mode;	

	output reg [n - 1 : 0] Y;
	output reg Cout;
	output reg Overflow;
	
	always@(*) begin
		case (Mode)
			// Logical shift A left by 1-bit.
			4'd0: begin
				Y = A << 1'b1;
			end
			// Arithmetic shift A left by 1-bit.
			4'd1: begin
				Y = A <<< 1'b1;
			end
			// Logical shift A right by 1-bit.
			4'd2: begin
				Y = A >> 1'b1;
			end
			// Arithmetic shift A right by 1-bit.
			4'd3: begin
				Y = A >>> 1'b1;
			end
			// Add two numbers with cla.
			4'd4: begin
				Adder16bit adder(A, B, Cin, Y, Cout);
				Overflow = A[n - 1] & B[n - 1] & (~C[n - 1]) | (~A[n - 1]) & (~B[n - 1]) & S[n - 1];
			end
			// Subtract B from A.
			4'd5: begin
				Adder16bit adder(A, -B, Cin, Y, Cout);
				Overflow = A[n - 1] & (-B)[n - 1] & (~C[n - 1]) | (~A[n - 1]) & (~(-B)[n - 1]) & S[n - 1];
			end
			// and
			4'd6: begin
				Y = A & B;
			end
			// or
			4'd7: begin
				Y = A | B;
			end
			// not A
			4'd8: begin
				Y = ~A;
			end
			// xor
			4'd9: begin
				Y = A ^ B;
			end
			// xnor
			4'd10: begin
				Y = ~(A ^ B);
			end
			// nor
			4'd11: begin
				Y = ~(A | B);
			end
			// binary to one-hot
			4'd12: begin
				Y = 1 << (A[3 : 0]);
			end
			// Comparator
			4'd13: begin
				if (A >= B) begin
					Y = 16'd0;
				end
				else begin
					Y = 16'd1;
				end
			end
			// B
			4'd14: begin
				Y = B;
			end
			// find first one from left
			4'd15: begin
				casex (A)
					16'b0000000000000000: Y = 16'd0;
					16'b0000000000000001: Y = 16'd1;
					16'b000000000000001x: Y = 16'd2;
					16'b00000000000001xx: Y = 16'd3;
					16'b0000000000001xxx: Y = 16'd4;
					16'b000000000001xxxx: Y = 16'd5;
					16'b00000000001xxxxx: Y = 16'd6;
					16'b0000000001xxxxxx: Y = 16'd7;
					16'b000000001xxxxxxx: Y = 16'd8;
					16'b00000001xxxxxxxx: Y = 16'd9;
					16'b0000001xxxxxxxxx: Y = 16'd10;
					16'b000001xxxxxxxxxx: Y = 16'd11;
					16'b00001xxxxxxxxxxx: Y = 16'd12;
					16'b0001xxxxxxxxxxxx: Y = 16'd13;
					16'b001xxxxxxxxxxxxx: Y = 16'd14;
					16'b01xxxxxxxxxxxxxx: Y = 16'd15;
				endcase
			end
			default: begin
			end
		endcase
	end
endmodule
