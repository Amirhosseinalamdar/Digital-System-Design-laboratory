module one_bit_comparator(input g_in, input e_in, input l_in, input x, input y, output g_out, output e_out, output l_out);
	assign g_out = g_in | (e_in & (x > y));
	assign e_out = e_in & (x == y);
	assign l_out = l_in | (e_in & (x < y));
endmodule
