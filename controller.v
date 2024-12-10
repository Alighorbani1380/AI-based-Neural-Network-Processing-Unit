module controller #(parameter width =16) (
    output reg restart,
    input clk,
    input rst,
    output reg mux1_cntrl_write,
    output reg mux2_cntrl_read,
    output reg sram1_wen,
    output reg sram2_wen,
    output reg [$clog2(width)-1:0]  sram1_Address,
    output reg [$clog2(width)-1:0]  sram2_Address,
    output reg enable

);
    reg flag;
    parameter integer add_width = $clog2(width);
    reg  [add_width:0] counter;
    always @(posedge clk , rst ) begin
         
        

        if(rst) begin

                mux1_cntrl_write = 1'b0;
                mux2_cntrl_read = 1'b0;
                sram1_wen = 1'b0;
                sram2_wen = 1'b0;
                counter = {(add_width+1){1'b1}};
                enable = 1'b0;

            end
        else if(counter[$clog2(width)]) begin
                if(flag)begin
                    restart = 1'b0;
                    flag = 1'b0;
                end

                enable = 1'b1;
                mux1_cntrl_write = 1'b0;
                mux2_cntrl_read = 1'b1;
                sram1_wen = 1'b1;
                sram2_wen = 1'b0;
                sram1_Address = counter[$clog2(width)-1:0];
                sram2_Address = counter[$clog2(width)-1:0];
                
        end
                
        else begin
                if(flag)begin
                    restart = 1'b0;
                    flag = 1'b0;
                end
                mux1_cntrl_write = 1'b1;
                mux2_cntrl_read = 1'b0;
                sram1_wen = 1'b0;
                sram2_wen = 1'b1;
                sram1_Address = counter[$clog2(width)-1:0];
                sram2_Address = counter[$clog2(width)-1:0];
                

        end 
        counter = counter +1'b1;
        
        
    end
    always @(counter[$clog2(width)]) begin
        restart = 1'b1;
        flag = 1'b1;
    end
    // always @(posedge clk) begin
    //     if (~counter[0] && sram1_wen && ~counter[1] && counter[2]) begin
    //         acc_en = 1'b1;
    //     end
    //     if (counter[0] && counter[1] && ) begin
    //         restart = 1'b1;
    //     end else
    //         restart = 1'b0;
    // end
    

    
    
endmodule