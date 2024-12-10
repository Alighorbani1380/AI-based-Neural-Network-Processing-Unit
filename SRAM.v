module SRAM #(parameter    n , parameter width) (
    input rst,
    input write_en,
    input en,
    input clk,
    input [$clog2(width)-1:0] address,
    input [n-1 :0] data_in,
    output  reg [n-1:0] data_out
);
    reg [n-1:0] memory [0:width-1];
    always @(* ) begin
        if(rst)begin
            memory[address] <= {n{1'b0}};
            data_out <= {n{1'b0}};
        end

        else if (en) begin
            if(write_en)begin
                memory[address] <= data_in;
                data_out <= memory[address];
                end
            else
                data_out <= memory[address];
        end
    end
    
endmodule