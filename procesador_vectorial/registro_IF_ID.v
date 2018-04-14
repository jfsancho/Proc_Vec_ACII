module registro_IF_ID(

	//señales de control
	//Decodificador de entrada
	reg_rdv_in,
	reg_rds_in,
	sel_dest_in,
	sel_ad_in,
	
	//EXE
	sel_op_in,
	//sel_vec_in,
	sel_int_in,
	opcode_in,
	
	//Memory
	sum_mem_in,
	sel_mem_in,
	sel_data_in,
	mem_wr_in,

	//Write back:
	sel_wb_in,
	reg_wrv_in,
	reg_wrs_in,

	//Decodificador de salida
	reg_rdv_out,
	reg_rds_out,
	sel_dest_out,
	sel_ad_out,
	
	//EXE
	sel_op_out,
	//sel_vec_out,
	sel_int_out,
	opcode_out,
	
	//Memory
	sum_mem_out,
	sel_mem_out,
	sel_data_out,
	mem_wr_out,

	//Write back:
	sel_wb_out,
	reg_wrv_out,
	reg_wrs_out,

	// Entradas
	instruction_in,
	clk,

	// Salidas
	instruction_out
);

input wire clk;

//DECODIFICADOR Entrada
input wire reg_rdv_in, reg_rds_in, sel_dest_in, sel_ad_in;

//EXE
input wire sel_op_in, sel_int_in;
//input wire [1:0] sel_vec_in;
input wire [3:0] opcode_in;

//MEM
input wire sum_mem_in, sel_mem_in, sel_data_in, mem_wr_in;

//WB
input wire sel_wb_in, reg_wrv_in, reg_wrs_in;


reg [13:0] instruction;
input wire [13:0] instruction_in;
output reg [13:0] instruction_out;

//WIRES DE SALIDA DE LAS SEÑALES
//DECODIFICADOR DE SALIDA
output reg reg_rdv_out, reg_rds_out, sel_dest_out, sel_ad_out;

//EXE
output reg sel_op_out, sel_int_out;
output reg [1:0] sel_vec_out;
output reg [3:0] opcode_out;

//MEM
output reg sum_mem_out, sel_mem_out, sel_data_out, mem_wr_out;

//WB
output reg sel_wb_out, reg_wrv_out, reg_wrs_out;

//REGISTROS DE LAS SEÑALES DE control
//Decodificador
reg reg_rdv, reg_rds, sel_dest, sel_ad;
//EXE
reg sel_op, sel_int;
reg [1:0] sel_vec;
reg [3:0] opcode;

//MEM
reg sum_mem, sel_mem, sel_data, mem_wr;

//WB
reg sel_wb, reg_wrv, reg_wrs;

always @(posedge clk) // lee en el posedge (Le llega el dato en el posedge)
begin
    instruction<=instruction_in;

	//DECODIFICADOR
	reg_rdv <= reg_rdv_in;
	reg_rds <= reg_rds_in;
	sel_dest <= sel_dest_in;
	sel_ad <= sel_ad_in;
	//EXE
	sel_op<=sel_op_in;
	//sel_vec<=sel_vec_in;
	sel_int<=sel_int_in;
	opcode<=opcode_in;
	//Memory
	sum_mem<=sum_mem_in;
	sel_mem<=sel_mem_in;
	sel_data<=sel_data_in;
	mem_wr<=mem_wr_in;

	//Write back:
	sel_wb<=sel_wb_in;
	reg_wrv<=reg_wrv_in;
	reg_wrs<=reg_wrs_in;
end
always @(negedge clk) // escritura en el negedge (Suelta el dato en el negedge)
begin
	instruction_out<=instruction;

	//DECODIFICADOR
	reg_rdv_out <= reg_rdv;
	reg_rds_out <= reg_rds;
	sel_dest_out <= sel_dest;
	sel_ad_out <= sel_ad;
	//EXE
	sel_op_out<=sel_op;
	//sel_vec_out<=sel_vec;
	sel_int_out<=sel_int;
	opcode_out<=opcode;
	//Memory
	sum_mem_out<=sum_mem;
	sel_mem_out<=sel_mem;
	sel_data_out<=sel_data;
	mem_wr_out<=mem_wr;

	//Write back:
	sel_wb_out<=sel_wb;
	reg_wrv_out<=reg_wrv;
	reg_wrs_out<=reg_wrs;
end

endmodule
