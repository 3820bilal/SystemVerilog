module encoder4to2
(
input	logic 			en,
input	logic	[3:0]	data_in,
output	logic	[1:0]	data_out
);

always_comb begin
	if(en) begin
		case(data_in)
			4'b0001 : data_out = 2'b00;
			4'b0010 : data_out = 2'b01;
			4'b0100 : data_out = 2'b10;
			4'b1000 : data_out = 2'b11;
			default : data_out = 2'b00;
          endcase
	end
end

endmodule
