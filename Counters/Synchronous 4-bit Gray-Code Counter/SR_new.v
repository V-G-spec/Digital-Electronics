module SR_new(S, R, clk, Q, rst);
    input S, R, clk, rst;
    output reg Q;

    always @(posedge clk) begin
        if (rst) begin
          Q <= 0;
        end
        else if(S == 1) begin
            Q <= 1;
            // Qbar <= 0;
        end
        else if(R == 1) begin
            Q <= 0;
            // Qbar <= 1;
        end
        else if(S == 0 & R == 0) begin
            Q <= Q;
            // Qbar = Qbar;
        end
    end
endmodule