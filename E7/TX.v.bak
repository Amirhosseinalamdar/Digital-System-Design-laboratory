module TX # (
    parameter START_SIG = 0
) (
    input           rstN,
    input           clk,
    input           start,
    input   [6:0]   data_in,
    output  reg     s_out = 1,
    output  reg     sent
);

localparam S_START      = 0;
localparam S_POST_START = 1;
localparam S_SEND       = 2;
localparam S_PARITY     = 3;
localparam S_STOP       = 4;
reg [2:0]   state = 0;
reg [6:0]   data;
reg [2:0]   data_index;

wire parity_sig;
assign parity_sig = ^data;

always @(posedge clk or negedge rstN) begin
    if (~rstN) begin
        state <= S_START;
        data_index <= 0;
        sent <= 0;
        s_out <= ~START_SIG;
    end
    else begin
        case (state)
            S_START: begin
                if (start) begin
                    state <= S_POST_START;
                 
                end
            end
            S_POST_START: begin
                if(!start) begin
					sent <= 0;
					data_index <= 0;
                    data <= data_in;
                    s_out <= START_SIG;
                    state <= S_SEND;
                end
            end
            S_SEND: begin
                s_out <= data[data_index];
                if (data_index == 6)
                    state <= S_PARITY;
                data_index <= data_index + 1;
            end
            S_PARITY: begin
                s_out <= parity_sig;
                state <= S_STOP;
            end
            S_STOP: begin
                s_out <= 1;
                sent <= 1;
                state <= S_START;
                
            end
            default: state <= S_START;
        endcase
    end
end
    
endmodule