module FSM_Seq(clk, rst, inp, out);
    input clk, rst, inp;
    output out;
    wire q1, q2, q3;
    D_ff d1((q2&&q3)||(q1&&~q3), clk, q1, rst, 1'b0);
    D_ff d2((q2&&~q3)||(~q1&&~q2&&q3), clk, q2, rst, 1'b0);
    D_ff d3((~q3&&inp)||(q2&&~q3)||(q1&&~q3), clk, q3, rst, 1'b0);
    D_ff d4(q1||(~q2&&~q3&&inp) , clk, out, rst, 1'b0);
endmodule