module booth(
	input [3:0]  A_in,
	input [3:0]  B_in,
	input 		 rstN,
	input 		 clk,
	output [7:0] res,
	output 		 done
);

wire [2:0] A_shift_amount;
wire [2:0] B_shift_amount;
wire [3:0] B;

control_unit CU(B, rstN, clk, A_shift_amount, B_shift_amount, op, done);
datapath DP (A_in, B_in, rstN, clk, A_shift_amount, B_shift_amount, op, done, res, B);

endmodule