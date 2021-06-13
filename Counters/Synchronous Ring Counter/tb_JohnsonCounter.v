module tb_JohnsonCounter;
    wire q3, q2, q1, q0;
    reg clk, rst;
    JohnsonCounter DUT(.clk(clk), .q0(q0), .q1(q1), .q2(q2), .q3(q3), .rst(rst));
    always #2 clk = ~clk;
    initial begin
        clk = 1'b0;
        rst = 0;
        #5 rst = 1'b1;
        #20 rst = 1'b0;
    end
    initial begin
        $dumpfile("JohnsonCounter.vcd");
        $dumpvars(0, tb_JohnsonCounter);
        $monitor("SimTime=%g, Clk=%b, Reset=%b, Output: %b %b %b %b", $time, clk, rst, q0, q1, q2, q3);
        #90 $finish;
    end
endmodule