//Barrel shifter
//Data shifting is required for various low-level data applications 
//such as floating-point arithmetic operations, bit indexing and variable-length coding. 
//A barrel shifter is able to complete the shift in a single clock cycle, 
//giving it a great advantage over a simple shifter which can shift n bits in n clock cycles.

module barrel_shifter 
(
input	logic [7:0] datain,
input	logic [2:0] shift_amt,
output	logic [7:0] shifted_data
);

always_comb
	begin
		case(shift_amt)
			3'b000: shifted_data = datain;
			3'b001: shifted_data = {datain[0], datain[7:1]};
			3'b010: shifted_data = {datain[1:0], datain[7:2]};
			3'b011: shifted_data = {datain[2:0], datain[7:3]};
			3'b100: shifted_data = {datain[3:0], datain[7:4]};
			3'b101: shifted_data = {datain[4:0], datain[7:5]};
			3'b110: shifted_data = {datain[5:0], datain[7:6]};
			3'b111: shifted_data = {datain[6:0], datain[7]};
			default: shifted_data = datain;
		endcase
	end

endmodule
