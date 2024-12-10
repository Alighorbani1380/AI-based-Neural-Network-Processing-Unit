// module Quantizer #(parameter width_in , parameter width_out , parameter frac_bit_in , parameter frac_bit_out )(
//     input [width_in -1 : 0] in,    
//     output  [width_out-1 : 0] out
// );
    

//     assign out = in >> frac_bit_in - frac_bit_out >> (width_in - frac_bit_in) - (width_out - frac_bit_out);


// endmodule
module Quantizer #(parameter width_in, parameter width_out, parameter frac_bit_in, parameter frac_bit_out)(
    input  [width_in - 1 : 0] in,    
    output [width_out - 1 : 0] out
);
    localparam int_part_bits = (width_in - frac_bit_in) / 2; 
    localparam frac_part_bits = frac_bit_in /2; 

    assign out = {in[frac_bit_in + int_part_bits -1 : frac_bit_in+1],in[frac_bit_in: frac_bit_in - frac_part_bits]}; // Integer part
endmodule
