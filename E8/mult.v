module mult#(parameter n=4)
  (          input signed [n-1:0] Rin1,
             input signed [n-1:0] Iin1,
             input signed [n-1:0] Rin2,
             input signed [n-1:0] Iin2,
             output signed[2*n-1:0] Rout,
             output signed[2*n-1:0] Iout
  );
assign Rout = Rin1*Rin2 - Iin1*Iin2;
assign Iout = Rin1*Iin2 - Rin2*Iin1;
endmodule
