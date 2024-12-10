module PE_tb;
    reg clk;
    reg [15:0] weight;
    reg [15:0] in;
    wire [7:0] out;
    reg Reset;

    PE #(8,8,32,6) pe_inst (
        .clk(clk),
        .w(weight),
        .in(in),
        .out(out),
        .reset(Reset)
    );

    initial begin
        clk = 1;
        Reset=1'b1;
        in = 16'h0000;
        #10
        Reset =1'b0;
        
        weight = 8'hFE;     
        #10
        // weight = 8'h02;     
        // #10
        // weight = 8'h01;     
        // #10
        // weight = 8'h02;     
        // #10
        weight = 8'h6B;     
        #10
        weight = 8'hF0;     
        #10
        weight = 8'h36;     
        #10
        weight = 8'hD5;     
        #10
        weight = 8'hE3;     
        #10
        weight = 8'hE5;     
        #10
        weight = 8'h2D;     
        #10
        weight = 8'h59;     
        #10
        weight = 8'hCC;     
        #10
        weight = 8'h7F;     
        #10
        weight = 8'h50;     
        #10
        weight = 8'h7F;     
        #10
        weight = 8'h50;     
        #10
        weight = 8'hC9;     
        #10
        weight = 8'hC1;     
        #10
        weight = 8'h6A;     
        #10
        weight = 8'h79;     
        #10
        weight = 8'h27;     
        #10
        weight = 8'hA6;     
        #10
        weight = 8'hD0;     
        #10
        weight = 8'hF5;     
        #10
        weight = 8'hC5;     
        #10
        weight = 8'hF5;     
        #10
        weight = 8'h0F;     
        #10
        weight = 8'h33;     
        #10
        weight = 8'h07;     
        #10
        weight = 8'h10;     
        #10
        weight = 8'h13;     
        #10
        weight = 8'hF3;     
        #10
        weight = 8'hF5;     
        #10
        weight = 8'hC2;     
        #20    
        // in = 8'h03;
        // #10 
        // in = 8'h04;
        // #10 
        // in = 8'h05;
        // #10
        in = 8'h35;
        #10
        in = 8'h02;
        #10
        in = 8'hD5;
        #10
        in = 8'h4F;
        #10
        in = 8'h58;
        #10
        in = 8'h58;
        #10
        in = 8'hF9;
        #10
        in = 8'h5D;
        #10
        in = 8'hD8;
        #10
        in = 8'h18;
        #10
        in = 8'h57;
        #10
        in = 8'hCA;
        #10
        in = 8'h77;
        #10
        in = 8'h7F;
        #10
        in = 8'hDE;
        #10
        in = 8'hE7;
        #10
        in = 8'h09;
        #10
        in = 8'hC2;
        #10
        in = 8'h1F;
        #10
        in = 8'h80;
        #10
        in = 8'hA8;
        #10
        in = 8'h80;
        #10
        in = 8'hE1;
        #10
        in = 8'hA7;
        #10
        in = 8'h3A;
        #10
        in = 8'hFB;
        #10
        in = 8'h06;
        #10
        in = 8'hDF;
        #10
        in = 8'h3C;
        #10
        in = 8'hC4;
        #10
        in = 8'h40;
        #10
        in = 8'h09;
        #10

        weight = 16'h0002;     
        // in = 16'h0002;
        // #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        // #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        // #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        // #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        // #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        // #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0001;     
        // in = 16'h0002;
        //  #10
        // weight = 16'hffff;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
        //  #10
        // weight = 16'h0002;     
        // in = 16'h0002;
    end
    always #5 clk = ~clk; 
endmodule
