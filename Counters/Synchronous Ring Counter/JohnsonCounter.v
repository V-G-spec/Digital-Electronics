module JohnsonCounter(clk, q0, q1, q2, q3, rst);
    input clk, rst;
    output q0, q1, q2, q3;
    //0011
    D_ff d1((~q3&&q2)||(~q2&&q3),clk,q0,rst,1'b0);
    D_ff d2(q0,clk,q1,rst,1'b0);
    D_ff d3(q1,clk,q2,rst,1'b1);
    D_ff d4(q2,clk,q3,rst,1'b1);
endmodule


// $monitor($time," %b %b %b %b ",q[3],q[2],q[1],q[0]);