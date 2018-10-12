module cache_compare (
    input [23:0] a,
    input [23:0] b,
    input valid,
    output logic eq
    );

    always_comb
    begin
        if (a == b)
            eq = valid;
        else
            eq = 1'b0;
    end

endmodule 