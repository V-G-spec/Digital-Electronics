// module D_ff(d, clk, q, q_bar);
module D_ff(d, clk, q, rst, set);
    input d, clk, rst, set;
    output q;
    reg q;

    always @(posedge clk) begin
        if (rst) begin
            if (set) begin
                q <= 1;
            end 
            else begin
                q <=0;
            end
        end else begin
        q <= d;          
        end
    end
endmodule