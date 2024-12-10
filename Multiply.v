module MAC #(parameter n , parameter frac)(
    input enable,
    input clk,
    input rst,
    input signed [n-1:0] weight,      
    input signed [n-1:0] in, 
    input [(2*n-1):0] acc_in,      
    output  [(2*n-1):0] out
);

    wire signed [(2*n-1):0] raw_result;
    assign raw_result = ($signed(weight) * $signed(in));
    assign out = (enable)? (raw_result):{(n*2){1'b0}};

   
    
    
endmodule


module ACC #(parameter n)(
    input restart,
    input en,
    input clk,
    input rst,
    input  signed [(2*n-1):0] acc_in,
    output reg signed   [(2*n-1):0] acc_out
);
    
    always @(posedge clk ) begin

        if(rst )begin
            acc_out = {(2*n){1'b0}};
        end
        else if(en) begin
            
            acc_out = $signed(acc_in) + $signed(acc_out);
        end
    end
endmodule
// module MAC #(parameter n ,parameter fraction)(
//     input enable,
//     input clk,
//     input rst,
//     input signed [n-1:0] weight,      
//     input signed [n-1:0] in, 
//     input [(n*2)-1:0] acc_in,      
//     output [(n*2)-1:0] out 
// );

//     assign out = (enable)? (weight * in):{(n*2){1'b0}};
//     // always @(posedge clk) begin
//     //     if (rst) begin
//     //         out= {(n*2){1'b0}};
//     //     end
//     //     else if(enable) begin
//     //         out = (weight * in) ; 
//     //     end
//     // end
    
// endmodule
// module MAC #(parameter n)(
//     input enable,
//     input clk,
//     input rst,
//     input  [n-1:0] weight,      
//     input  [n-1:0] in, 
//     input [(2*n-1):0] acc_in,      
//     output  [(2*n-1):0] out
// );
//     //wire signed [2*n-1 : 0] raw_result;

//     assign out = (enable)? (weight * in):{(n*2){1'b0}};
//    // assign out = (enable)? raw_result >>> fraction:{(n){1'b0}};
//     // always @(posedge clk) begin
//     //     if (rst) begin
//     //         out= {(n*2){1'b0}};
//     //     end
//     //     else if(enable) begin
//     //         out = (weight * in) ; 
//     //     end
//     // end
    
    
// endmodule