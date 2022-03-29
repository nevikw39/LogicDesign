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

    initial begin
        i = 1'b0;
        repeat (16) begin
            #delay;
            $display("time = %4d, i = %b", $time, i);
            i = i + 1'b1;
        end
        $display("AC");
        $finish;
    end

endmodule
