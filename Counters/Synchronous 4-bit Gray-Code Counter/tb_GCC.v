module tb_GCC;
    wire q1, q2, q3, q4;
    reg clk, rst;

    GCC DUT(.clk(clk), .q1(q1), .q2(q2), .q3(q3), .q4(q4), .rst(rst));

    always #2 clk = ~clk;
    initial begin
        clk = 1'b0;
        rst = 0;
        #5 rst = 1'b1;
        #20 rst = 1'b0;
    end
    
    initial begin
        $dumpfile("GCC.vcd");
        $dumpvars(0, tb_GCC);
        $monitor("SimTime=%g, Clk=%b, Reset=%b Output: %b %b %b %b", $time, clk, rst, q1, q2, q3, q4);
        #90 $finish;
    end
endmodule