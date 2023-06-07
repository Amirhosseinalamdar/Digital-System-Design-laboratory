module pipline_ts();
reg clk, Load, start;
reg [5:0] address;
reg [31:0] in;
wire [31:0] outR, outI;
pipline #(.LogRFsize(5), .RegLength(4), .RFsize(32), .wordLength(32)) pipline_(.in(in), .clk(clk), .start(start), .Load(Load), .Address(address), .OUTR(out), .OUTI(outI));
always #10 clk = ~clk;
initial begin
clk = 0;

end
endmodule