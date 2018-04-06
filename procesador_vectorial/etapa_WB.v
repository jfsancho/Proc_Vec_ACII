module etapa_WB(
					sel_wb, //señal de control
					data_MEM,
					data_ALU,
					data_wbv
					);

input wire sel_wb;
input wire [31:0] data_MEM;
input wire [31:0] data_ALU;

output wire [31:0] data_wbv;

mux_2x32 muxWB(
	.data0x(data_MEM),
	.data1x(data_ALU),
	.result(mux_sel_int_output),
	.sel(sel_wb)
);
					
					
endmodule
