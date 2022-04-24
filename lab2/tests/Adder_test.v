module CLA_tb();

	parameter n = 16;
	parameter delay = 4;

	reg [n - 1: 0] A, B;
	reg Cin;
	
	wire [n - 1 : 0] Y;
	wire Cout;

	reg [n - 1 : 0] Y_correct;
	reg Cout_correct;

	Adder16bit adder(A, B, Cin, Y, Cout);

	integer file, r, i;
	reg [n : 0] score;

	initial begin
		file = $fopen("./data_adder.txt", "r");
		score = 16'd0;
		i = 0;
		while (!$feof(file)) begin
			#delay;
			r = $fscanf(file, "%b %b %b %b %b", A, B, Cin, Y_correct, Cout_correct);
			#delay;
			if (Y === Y_correct && Cout == Cout_correct) begin
				score = score + 16'd1;
			end
			else begin
				$display("WA: Testcase %2d", i);
				$display("A: (%b, %d), B: (%b, %d), Cin: %b, ", A, $signed(A), B, $signed(B), Cin);
				$display("Your output,    Y: (%b, %d), Cout: %b", Y, $signed(Y), Cout);
				$display("Correct output, Y: (%b, %d), Cout: %b", Y_correct, $signed(Y_correct), Cout_correct);
				$display("-----------------------------------");
			end
			i = i + 1;
		end
		#delay;
		$display("Total score: %d / %d", score, 65536);
		if (score == 65536) begin
			$display("AC");
		end
	end

endmodule
