module etapa_MEM(
	//Datos de entrada
	inmediate_in,
	data1_in,
	result_alu,
	dir_dest_in,
	
	//Banderas de entrada
	sel_pcmem,
	en_pc_adder,
	mem_wr,
	sel_mem,
	sel_data,
	clk,
	
	//Datos de salida
	mem_out,
	data,
	dir_dest_out,
	inmediate_out
);

input wire [31:0] data1_in, result_alu;
input wire [7:0] inmediate_in;
input wire [2:0] dir_dest_in;

input wire sel_pcmem, en_pc_adder, mem_wr, sel_mem, sel_data, clk;

output wire [31:0] mem_out, data;
output wire [7:0] inmediate_out;
output wire [2:0] dir_dest_out;

wire [31:0] pcmem_input;


endmodule
