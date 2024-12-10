module MUX #(parameter n) (
    input sel,
    input [n-1:0] in1,
    input [n-1:0] in2,
    output [n-1:0] out
);
    assign out=~sel?in1:in2;
endmodule

module DeMUX #(parameter n)(
     input sel,
    output [n-1:0] out1,
    output [n-1:0] out2,
    input [n-1:0] in
);
    assign out1=~sel?in:{n{1'b0}};
    assign out2=sel?in:{n{1'b0}};

endmodule