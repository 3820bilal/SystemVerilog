module p_encoder 
(
input	logic [3:0] data_in,
output	logic [2:0] data_out
);

always_comb
	begin
		casez(i_d)
			4'b0000: data_out = 3'b000;
			4'b0001: data_out = 3'b001;
			4'b001?: data_out = 3'b010;
			4'b01??: data_out = 3'b011;
			4'b1???: data_out = 3'b100;
		endcase
	end

endmodule
