module happy_verilog_B(i, o);

    parameter n = 4;

    input[n - 1 : 0] i;
    output o;

    reg o;

    always @(*) begin
        case (i)
            0, 1, 2, 3, 5, 8, 13: begin
                o = 1'b1;
            end
            default: begin
                o = 1'b0;
            end
        endcase
    end

endmodule


module happy_verilog_G(i, o);

    parameter n = 4;

    input[n - 1 : 0] i;
    output o;

    wire not_a, not_b, not_c, not_d, and_0, and_1, and_2;

    not(not_a, i[3]);
    not(not_b, i[2]);
    not(not_c, i[1]);
    not(not_d, i[0]);
    and(and_0, not_a, not_b);
    and(and_1, i[2], not_c, i[0]);
    and(and_2, not_b, not_c, not_d);
    or(o, and_0, and_1, and_2);

endmodule


module happy_verilog_D(i, o);

    parameter n = 4;

    input[n - 1 : 0] i;
    output o;

    assign o = !i[3] & !i[2] | i[2] & !i[1] & i[0] | !i[2] & !i[1] & !i[0];

endmodule
