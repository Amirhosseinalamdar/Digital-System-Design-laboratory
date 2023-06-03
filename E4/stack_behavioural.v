module stack_behavioural (
    input clk,
    input rstN,
    input [3:0] data_in,
    input push,
    input pop,
    output reg [3:0] data_out,
    output reg full,
    output reg empty
);

/*output*/
reg [3:0] sp;
reg [3:0] stack_mem [7:0];
//reg [3:0] sp = 0; // always points to the last free index in mem

integer i;
always @(posedge clk) begin
    if (rstN == 0) begin   // reset the whole memory //active low
        for (i = 0; i < 8; i = i + 1) begin
            stack_mem[i] = 0;
        end
        sp = 0;
        data_out = 0;
        empty = 0;
        full = 0;
    end else begin
        if (push == 1 && pop == 0 && full == 0 ) begin   // push
            stack_mem[sp] = data_in;
            sp = sp + 1;
        end else if (pop == 1 && push == 0 && empty == 1) begin  // pop
            sp = sp - 1;
            data_out = stack_mem[sp];
        end

        // now we should revalidate the full/empty signals
        // full:
        if (sp == 8) begin
            full = 1;
        end else begin
            full = 0;
        end 
        // empty:
        if (sp == 0) begin
            empty = 0;
        end else begin
            empty = 1;
        end
        
    end
end
endmodule