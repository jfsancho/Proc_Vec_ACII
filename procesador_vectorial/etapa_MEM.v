module etapa_MEM(
	//Datos de entrada
	inmediate_in,
	data1_in,
	result_alu,
	dir_dest_in,

	//Banderas de entrada
	sel_pcmem,
	sum_mem,
	mem_wr,
	sel_mem,
	sel_data,
	clk,

	//Datos de salida
	mem_out, //Sirve para dos salidas, mem_out y dato de adelantamiento
	data,
	dir_dest_out,
	inmediate_out
);

input wire clk;
input wire [31:0] data1_in, result_alu;
input wire [7:0] inmediate_in;
input wire [2:0] dir_dest_in;

input wire sel_pcmem, en_pc_adder, mem_wr, sel_mem, sel_data, clk;

output wire [31:0] mem_out, data; //Data: Data que funciona como doble salida, para el registro mem/wb y para memoria RAM.
output wire [7:0] inmediate_out;
output wire [2:0] dir_dest_out;
output wire [31:0] dir_mem; //dir_mem: dirección de entrada en la memoria. Es salida porque se dirige a la memoria RAM.

wire [31:0] pcmem_input, pcmem_output, sum_mem_out;
wire [31:0] cable_zero;
wire [31:0] sel_mem_inmediate; //Inmediato de 32 bits extendido del inmediate_in de 8 bits.


assign sel_mem_inmediate = {24'b0, inmediate_in};
assign cable_zero = 32'b0;
assign inmediate_out = inmediate_in;
assign dir_dest_out = dir_dest_in;

registro_PCMEM reg_pcmem(
	.clk(clk),
	.pc_in(pcmem_input),
	.pc_out(pcmem_output)
);

mux_2x32 mux_sel_pcmem(
	.data0x(sum_mem_out),
	.data1x(cable_zero),
	.sel(sel_pcmem),
	.result(pcmem_input)
);

mux_2x32 mux_sel_mem(
	.data0x(pcmem_output),
	.data1x(sel_mem_inmediate),
	.sel(sel_mem),
	.result(dir_mem)
);

mux_2x32 mux_sel_data(
	.data0x(data1_in),
	.data1x(result_alu),
	.sel(sel_data),
	.result(data)
);

endmodule
