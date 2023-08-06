module tb_p_encoder();

logic [3:0] data_in;
logic [2:0] data_out;

priencode dut 
(
.data_in	(data_in	),
.data_out	(data_out	)
);

initial begin
   	$dumpfile("priencode.vcd");
   	$dumpvars(0, priencode_tb);
end

initial begin
	repeat(40)
		begin
			stimulus();
			$display("data_in: %0b, data_out: %0b", data_in, data_out);
		end

end

task stimulus;
	begin
		data_in = $urandom_range(0, 31);#5;
	end
endtask

endmodule
