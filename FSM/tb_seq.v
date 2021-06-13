module tb_seq();
    reg clk, rst, inp;
    wire out;
    FSM_Seq DUT(.clk(clk), .rst(rst), .inp(inp), .out(out));
    always #2 clk = ~clk;
    initial begin
        clk = 1'b0;
        rst = 0;
        inp = 0;
        #5 rst = 1'b1;
        #20 rst = 1'b0;
        #10 inp = 1;
        #60 inp = 0;
    end
    initial begin
        $dumpfile("FSM_Seq.vcd");
        $dumpvars(0, tb_seq);
        $monitor("SimTime=%g, Clk=%b, Reset=%b, Input=%b -> Output=%b", $time, clk, rst, inp, out);
        #150 $finish;
    end
endmodule