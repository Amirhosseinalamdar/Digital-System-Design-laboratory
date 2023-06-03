module four_bit_comparator(input[3:0] a, input[3:0] b,output g, output e, output l);
	
wire[8:0] c;
	
one_bit_comparator comparator3(.g_in(1'b0), .e_in(1'b1), .l_in(1'b0), .x(a[3]), .y(b[3]), .g_out(c[8]), .e_out(c[7]), .l_out(c[6]));
	
one_bit_comparator comparator2(.g_in(c[8]), .e_in(c[7]), .l_in(c[6]), .x(a[2]), .y(b[2]),.g_out(c[5]), .e_out(c[4]), .l_out(c[3]));
	
one_bit_comparator comparator1(.g_in(c[5]), .e_in(c[4]), .l_in(c[3]), .x(a[1]), .y(b[1]),.g_out(c[2]), .e_out(c[1]), .l_out(c[0]));
	
one_bit_comparator comparator0(.g_in(c[2]), .e_in(c[1]), .l_in(c[0]), .x(a[0]), .y(b[0]),.g_out(g), .e_out(e), .l_out(l));

endmodule