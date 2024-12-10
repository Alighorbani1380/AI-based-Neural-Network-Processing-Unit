module ReLU #(parameter n) (
    input unsigned [(n*2)-1:0] in,   
    output reg [(n*2)-1:0] out 
);
    always @(*) begin
        out = (in[(n*2)-1] == 1) ? {n*2{1'b0 }}: in;
    end
endmodule
