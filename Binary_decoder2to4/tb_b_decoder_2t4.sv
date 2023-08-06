////Testbench for 2 to 4 binary decoder
module tb_b_decoder_2t4 ();
    
logic	[1:0] datain;
logic	[3:0] data_out;

b_decoder_2t4 dut 
(
.datain		(datain		),
.data_out	(data_out	)
);
	
initial begin
    $dumpfile("b_decoder_2t4.vcd");
    $dumpvars(0, tb_b_decoder_2t4);
end

initial begin
    $monitor("datain: %0b, data_out: %0b",datain, data_out);
    
    datain = 2'b00;#10;
    datain = 2'b01;#10;
    datain = 2'b10;#10;
    datain = 2'b11;#10;

end

endmodule

