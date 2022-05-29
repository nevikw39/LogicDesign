module PAT(clk, reset, data, flag);
	
	input clk, reset, data;
	output flag;

	parameter A = 4'd0, B = 4'd1, C = 4'd2, D = 4'd3, E = 4'd4, F = 4'd5, G = 4'd6, H = 4'd7, I = 4'd8;
	reg[3 : 0] state, next;

	always @(*)
		if (reset)
			next = A;
		else
			case (state)
				A: next = data ? A : B;
				B: next = data ? C : B;
				C: next = data ? A : D;
				D: next = data ? E : B;
				E: next = data ? A : F;
				F: next = data ? G : B;
				G: next = data ? H : F;
				H: next = data ? I : F;
				I: next = data ? A : B;
			endcase

	assign flag = !reset && state == I;

	always @(posedge clk)
		if (reset)
			state <= A;
		else
			state <= next;

endmodule
