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
