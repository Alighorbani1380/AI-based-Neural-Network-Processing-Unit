module PE #(parameter n , parameter out_n ,parameter INPUT_NUM , parameter input_fraction) ( //  n => INPUT_WIDTH,WEIGHT_WIDTH     out_n =>
    input clk,
    input [n-1:0] w,
    input [n-1:0] in,
    input reset,
    output [out_n-1:0] out
);
    wire [(2*n)-1:0] acc_out;
	wire [n-1:0] weight;
    wire [(2*n)-1:0] relu_out;
    wire mux1_cntrl_write , sram1_wen , sram2_wen;
    wire mux2_cntrl_read;
    wire [n-1:0] data_in_sram1 ,data_out_sram1;
    wire [n-1:0] data_in_sram2 ,data_out_sram2;
    wire [$clog2(INPUT_NUM)-1:0]  sram1_Address;
    wire [$clog2(INPUT_NUM)-1:0]  sram2_Address;
    //ffffffff
    wire [n-1:0] rgout_input,rgout1,rgout2;
    wire [(2*n)-1:0] rgout3,rgout4;
    wire enable , restart;
    wire restart_out2,enable_out2,restart_out3,enable_out3;
    wire [(2*n-1):0] mac_out;


    controller #(INPUT_NUM) cntrl(
        .restart(restart),
        .clk(clk),
        .rst(reset),
        .mux1_cntrl_write(mux1_cntrl_write),
        .mux2_cntrl_read(mux2_cntrl_read),
        .sram1_wen(sram1_wen),
        .sram2_wen(sram2_wen),
        .sram1_Address(sram1_Address),
        .sram2_Address(sram2_Address),
        .enable(enable)

    );

    ACC #(n) acc(
        .restart(restart_out3),
        .en(enable_out2),
        .clk(clk),
        .rst(reset),
        .acc_in(mac_out),
        .acc_out(acc_out)
    );
    MAC #(n ,6) mac(
        .enable(enable_out2),
        .clk(clk),
        .rst(reset),
        .weight(rgout2),
        .in(rgout_input),
        .out(mac_out)
    );
    Register #(n) rgst_input(
        .clk(clk),
        .rst(reset),
        .data_in(in),
        .data_out(rgout_input)
    );
    Register #(2*n) rgst3(
        .restart_in(restart_out2),
        .enable_in(enable_out2),
        .clk(clk),
        .rst(reset),
        .data_in(acc_out),
        .data_out(rgout3),
        .restart_out(restart_out3),
        .enable_out(enable_out3)
    );
    ReLU #(n) relu(
        .in(rgout3),
        .out(relu_out)
    );
    Register #(2*n) rgst4(
        .clk(clk),
        .rst(reset),
        .data_in(relu_out),
        .data_out(rgout4)
    );
    Quantizer #(2*n,n,input_fraction*2,input_fraction) quantizer(
        .in(rgout4),
        .out(out)
    );
    SRAM #(n,INPUT_NUM) sram1(
        .rst(reset),
        .write_en(sram1_wen),
        .en(1'b1),
        .clk(clk),
        .address(sram1_Address),
        .data_in(data_in_sram1),
        .data_out(data_out_sram1)
    );
    SRAM #(n,INPUT_NUM) sram2(
        .rst(reset),
        .write_en(sram2_wen),
        .en(1'b1),
        .clk(clk),
        .address(sram2_Address),
        .data_in(data_in_sram2),
        .data_out(data_out_sram2)
    );
    Register #(n) rgst1(
        .clk(clk),
        .rst(reset),
        .data_in(w),
        .data_out(rgout1)
    );
    Register #(n) rgst2(
        .restart_in(restart),
        .enable_in(enable),
        .clk(clk),
        .rst(reset),
        .data_in(weight),
        .data_out(rgout2),
        .restart_out(restart_out2),
        .enable_out(enable_out2)
    );
    MUX #(n) mux(
        .sel(mux2_cntrl_read),
        .in1(data_out_sram1),
        .in2(data_out_sram2),
        .out(weight)

    );
    DeMUX #(n) demux(    
        .sel(mux1_cntrl_write),
        .out1(data_in_sram1),
        .out2(data_in_sram2),
        .in(rgout1)
    );
endmodule
