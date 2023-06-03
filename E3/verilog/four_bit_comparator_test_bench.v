module four_bit_comparator_test_bench();
	reg[3:0] x;
	reg[3:0] y;
	wire g, e, l;
	four_bit_comparator comparator(.a(x), .b(y), .g(g), .e(e), .l(l));
	
	initial 
begin

		x = 4'b1000;
		y = 4'b0100;
		#10
		x = 4'b1001;
		y = 4'b0101;
		#10
		x = 4'b1111;
		y = 4'b1111;
		#10
		x = 4'b1010;
		y = 4'b0101;
		#10;
end
endmodule

