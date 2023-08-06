//Testbench for Barrel shifter
module barrel_shifter_tb ();

	logic [7:0] datain;
	logic [2:0] shift_amt;
	logic [7:0] shifted_data;

barrel_shifter dut 
(
.datain				(datain			),
.shift_amt			(shift_amt		),
.shifted_data		(shifted_data	)
);

// Dump waves	
initial begin
    	$dumpfile("barrel_shifter.vcd");
    	$dumpvars(0, barrel_shifter_tb);
end

initial begin
	shifted_data = 8'b0;
	repeat(10)
		begin
			stimulus();
			$display("datain: %0b, shift_amt: %0b, shifted_data: %0b", datain, shift_amt, shifted_data);
		end
end

task stimulus;
	begin
		datain = $random;
		shift_amt = $urandom_range(0, 7);#5;
	end
endtask

endmodule
