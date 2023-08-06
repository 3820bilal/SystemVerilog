//2 to 4 binary decoder
module b_decoder_2t4 
(
  input		logic	[1:0]	datain,
  output	logic	[3:0]	data_out
);

always_comb
	begin
		case(datain)
			2'b00: data_out = 4'b0001;
			2'b01: data_out = 4'b0010;
			2'b10: data_out = 4'b0100;
			2'b11: data_out = 4'b1000;
			default: data_out = 4'b0000;
		endcase
	end
endmodule
