module add_sub #(parameter n=4)
          (input signed [n-1:0] Rin1,
           input signed [n-1:0] Iin1,
           input signed [n-1:0] Rin2,
           input signed [n-1:0] Iin2, 
           input addSubN,
           output signed [n-1:0] Rout,
           output signed [n-1:0] Iout
          );
assign Rout = addSubN ? (Rin1+Rin2) : (Rin1-Rin2);
assign Iout = addSubN ? (Iin1+Iin2) : (Iin1-Iin2);
endmodule


