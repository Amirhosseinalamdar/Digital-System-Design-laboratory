module control_unit(
	input [3:0]  B,
	input 	    rstN,
	input 		 clk,
	output [2:0] A_shift_amount,
	output [2:0] B_shift_amount,
	output 		 op,
	output 		 done
);

reg  [2:0] shifted;
reg 	     first_clk;
wire [1:0] one_index;
wire [1:0] zero_index;

first_one FO (B, one_index);
first_zero FZ (B, zero_index);

assign op = B[0] & (~first_clk);
assign B_shift_amount = op ? zero_index : {1'b0, one_index};
assign A_shift_amount = shifted + B_shift_amount;
assign done = shifted + B_shift_amount > 3;

always @(posedge clk or negedge rstN) begin
	if(~rstN) begin
		shifted <= 0;
		first_clk <= 1;
	end else begin
		first_clk <= 0;
		shifted <= shifted + B_shift_amount;
	end
end

endmodule