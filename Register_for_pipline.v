module Register #(parameter n) (
    input restart_in,
    input enable_in,
    input clk,
    input rst,
    input [n-1:0] data_in,
    output reg [n-1:0] data_out,
    output reg restart_out,
    output reg enable_out
    

);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            restart_out <= 1'b0;
            enable_out <= 1'b0;
            data_out <= {n{1'b0}};
        end 
        else begin
            enable_out <= enable_in;
            restart_out <= restart_in;
            data_out <= data_in;
        end
            
    end
    
endmodule