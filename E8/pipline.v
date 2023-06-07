module pipline#(parameter LogRFsize =5, parameter RegLength = 4, parameter RFsize = 32, parameter wordLength = 32)
                (input start, 
                input [LogRFsize-1:0] Address,
                input Load,
                input clk,
					 output [RegLength-1:0] OUT
  );
reg [RegLength-1:0] RegFile [RFsize - 1:0];
reg[4:0] pc;
assign OUT = RegFile[Address];
wire [wordLength-1:0]PIPEWIRE1;
reg [wordLength-1:0]PIPEREG1;


reg [RegLength-1:0]PIPEREGO1;
reg [RegLength-1:0]PIPEREGO2;
reg [RegLength-1:0]PIPEREGO3;
reg [RegLength-1:0]PIPEREGO4;


reg [wordLength-1-6*LogRFsize:0]OPCODE1;


reg	[LogRFsize-1:0]PIPEREGWON1;
reg [LogRFsize-1:0]PIPEREGWON2;


memory #(.m(wordLength))MEM_1(.PC(pc),.out(PIPEWIRE1));

wire [RegLength-1:0]MULTWIRER;// real part of output mult
wire [RegLength-1:0]MULTWIREI; // imaginary part of output mult
wire [RegLength-1:0]ADDSUBWIRER; // real part of output add sub
wire [RegLength-1:0]ADDSUBWIREI;// imaginay part of ouptut add sub

reg [RegLength-1:0]ALUREGR;
reg [RegLength-1:0]ALUREGI;

reg E1,E2,E3;

reg [LogRFsize-1:0]PIPEREGWOM1;
reg [LogRFsize-1:0]PIPEREGWOM2;

mult #(.n(RegLength)) MULT_1(.Rin1(PIPEREGO1),.Iin1(PIPEREGO2),.Rin2(PIPEREGO3),.Iin2(PIPEREGO4),.Rout(MULTWIRER),.Iout(MULTWIREI));
add_sub #(.n(RegLength)) ADDSUB_1(.Rin1(PIPEREGO1),.Iin1(PIPEREGO2),.Rin2(PIPEREGO3),.Iin2(PIPEREGO4),.Rout(ADDSUBWIRER),.Iout(ADDSUBWIREI),.addSubN(!OPCODE1[0]));


reg Flag = 0;
always@(posedge clk) begin
				if(Load) begin
					RegFile[0] <= 4'b0001;
					RegFile[1] <= 4'b0001;
					RegFile[2] <= 4'b0001;
					RegFile[3] <= 4'b0010;
				end
				else if(!Flag) begin
					if(start) begin
						pc <= 0;
						Flag <= 1;
						E1 = 0;
						E2 = 0;
						E3 = 0;
					end
				end
				else begin
				   pc <= pc + 1;
					PIPEREG1 <= PIPEWIRE1;
					E1 <= 1;
					
					if(E1) begin
						PIPEREGO4 <= RegFile[PIPEREG1[LogRFsize-1:0]];
						PIPEREGO3 <= RegFile[PIPEREG1[2*LogRFsize-1:LogRFsize]];
						PIPEREGO2 <= RegFile[PIPEREG1[3*LogRFsize-1:2*LogRFsize]];
						PIPEREGO1 <= RegFile[PIPEREG1[4*LogRFsize-1:3*LogRFsize]];
						PIPEREGWON2 <= PIPEREG1[5*LogRFsize-1:4*LogRFsize];
						PIPEREGWON1 <= PIPEREG1[6*LogRFsize-1:5*LogRFsize];
						OPCODE1 <= PIPEREG1[wordLength-1:6*LogRFsize];
						E2 <= 1;
					end
					
					if(E2) begin
						if(OPCODE1[1]) begin
							ALUREGR <= MULTWIRER;
							ALUREGI <= MULTWIREI;
						end
						
						else begin
							ALUREGR <= ADDSUBWIRER;
							ALUREGI <= ADDSUBWIREI;
						end
						PIPEREGWOM1 <= PIPEREGWON1;
						PIPEREGWOM2 <= PIPEREGWON2;
						E3 <= 1;
					end
					
					if(E3) begin
						RegFile[PIPEREGWOM1] <= ALUREGR;
						RegFile[PIPEREGWOM2] <= ALUREGI;
					end
					if(pc == 31)
						Flag <= 0;
				end
			end
endmodule
