module happy_verilog_tb_helper(i, x, o);

    parameter n = 4;

    input i;
    input[n - 1 : 0] x;
    output o;

    wire w;
    assign w = x == 4'd0 || x == 4'd1 || x == 4'd2 || x == 4'd3 || x == 4'd5 || x == 4'd8 || x == 4'd13;

    wire o;
    assign o = (i === 1'bx | i === 1'bz) || w && !i || !w && i;

endmodule

module happy_verilog_tb;

    parameter n = 4, delay = 5;

    reg[n - 1 : 0] i;
    wire o_b, o_g;

    happy_verilog_B hvb(i, o_b);
    happy_verilog_G hvg(i, o_g);

    wire helper_b, helper_g;

    happy_verilog_tb_helper hvb_helper(o_b, i, helper_b), hvg_helper(o_g, i, helper_g);

    initial begin
        i = 1'b0;
        repeat (16) begin
            #delay;
            $display("time = %4d, i = %b, o_b = %b, o_g = %b", $time, i, o_b, i, o_g);
            if (helper_b || helper_g) begin
                $display("WA");
                $finish;
            end
            i = i + 1'b1;
        end
        $display("AC");
        $finish;
    end

endmodule
