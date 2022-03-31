module Fib_B(in, out);

    parameter n = 4;

    input[n - 1 : 0] in;
    output out;

    reg out;

    always @(*) begin
        case (in)
            0, 1, 2, 3, 5, 8, 13: begin
                out = 1'b1;
            end
            default: begin
                out = 1'b0;
            end
        endcase
    end

endmodule


module Fib_D(in, out);

    parameter n = 4;

    input[n - 1 : 0] in;
    output out;

    assign out = !in[3] & !in[2] | in[2] & !in[1] & in[0] | !in[2] & !in[1] & !in[0];

endmodule


module Fib_G(in, out);

    parameter n = 4;

    input[n - 1 : 0] in;
    output out;

    wire not_a, not_b, not_c, not_d, and_0, and_1, and_2;

    not(not_a, in[3]);
    not(not_b, in[2]);
    not(not_c, in[1]);
    not(not_d, in[0]);
    and(and_0, not_a, not_b);
    and(and_1, in[2], not_c, in[0]);
    and(and_2, not_b, not_c, not_d);
    or(out, and_0, and_1, and_2);

endmodule
