module tb_encoder4to2;

logic					en;
logic	[3:0]			data_in;
logic	[1:0]			data_out;


encoder4to2 DUt
(
.en          (en          ),
.data_in     (data_in     ),
.data_out    (data_out    )
);

initial begin 
	repeat(10)
	
	stimulus();
	$display("data_in =%d, data_out=%d",data_in,data_out);
end

task stimulus;
	begin
		en		= $random;	#5;
		data_in = $random;	#5;
	end
endtask

initial begin
	$dumpfile("encoder4to2.vcd");
	$dumpvars(0,tb_encoder4to2);
end

endmodule