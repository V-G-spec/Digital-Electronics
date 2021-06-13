module GCC(clk, q1, q2, q3, q4, rst);
    input clk, rst;
    output q1, q2, q3, q4;
    wire s1,r1,s2,r2,s3,r3,s4,r4;

    assign s1 = q2 && q3 && q4;
    assign s2 = ~q1 && q3 && ~q4;
    assign s3 = (~q1 && q4) || (~q2 && q4);
    assign s4 = ~q3 && (~q1 || q2);
    
    assign r1 = ~q2 && ~q3 && ~q4;
    assign r2 = q1 && ~q3 && q4;
    assign r3 = (q1 && ~q4) || (q2 && ~q4);
    assign r4 = q3 && (q1 || ~q2);

    SR_new S1(s1, r1, clk, q1, rst);
    SR_new S2(s2, r2, clk, q2, rst);
    SR_new S3(s3, r3, clk, q3, rst);
    SR_new S4(s4, r4, clk, q4, rst);

endmodule