module etapa_ID(clk,
					instruccion,//señal de entrada
					data_wrv,
					data_wrs,
					
					i_dir_wr, // direcciones 
					
					
					dir_dest_out,//señales de salida
					
					VFS,
					data_vec1,
					data_vec2,
					data_sca1,
					
					shift,
					inmediato,
					
					reg_wrv, //señales de control
					reg_wrs,
					reg_rdv,
					reg_rds,
					sel_dest
					);






					
					
					

//Bancos de registros

input clk;
input wire [13:0] instruccion;

//direccion donde se guarda el dato a registro
input wire [2:0] i_dir_wr; 

input wire [31:0] data_wrv;
input wire [7:0] data_wrs;

//señales de control
input wire reg_wrv,reg_wrs, reg_rdv, reg_rds;
input wire sel_dest;

output wire [7:0]shift;
output wire [7:0]inmediato;
output wire [2:0] dir_dest_out;

//cables de salidad de los bancos de registro
output wire [31:0] data_vec1;
output wire [31:0] data_vec2;

output wire [7:0] data_sca1;

output wire [31:0] VFS;


//cables que entran a los bancos de registro
wire [2:0] wreg_vec1;
wire [2:0] wreg_vec2;

wire [3:0] wreg_sca1;


wire [7:0] data_reg0;
wire [7:0] data_reg1;
wire [7:0] data_reg2;
wire [7:0] data_reg3;

//direccion de destino de diferentes instrucciones
wire [2:0] dir_dest1, dir_dest2;


assign VFS[7:0] =data_reg0;
assign VFS[15:8]=data_reg1;
assign VFS[23:16]=data_reg2;
assign VFS[31:24]=data_reg3;



assign wreg_vec1= instruccion[5:3];
assign wreg_vec2= instruccion[2:0];

assign wreg_sca1 = instruccion[2:0];

assign dir_dest1= instruccion[8:6];
assign dir_dest2[1:0]= instruccion[9:8];
assign dir_dest2[2]= 0; //extension de cero 

assign inmediato= instruccion[7:0];
assign shift[2:0]=instruccion[5:3];
assign shift[7:3]=5'b00000;










registros_v reg_v(
						.clk(clk),
						.reg_wr(reg_wrv),
						.reg_rd(reg_rdv), 
						.reg_vec1(wreg_vec1), 
						.reg_vec2(wreg_vec2), 
						.dir_wrv(i_dir_wr), 
						.vec1(data_vec1), 
						.vec2(data_vec2), 
						.data_wr(data_wrv) 
);


registros_sca  reg_s(
							.clk(clk), 
							.reg_wr(reg_wrs), 
							.reg_rd(reg_rds), 
							.reg_sca1(wreg_sca1),
							.dir_wrs(i_dir_wr), 
							.sca1(data_sca1), 
							.data_wr(data_wrs), 
							.reg0(data_reg0),
							.reg1(data_reg1),
							.reg2(data_reg2),
							.reg3(data_reg3)
);


mux_2x3 mux_sel_dest(
	.data0x(dir_dest1),
	.data1x(dir_dest2),
	.result(dir_dest_out),
	.sel(sel_dest)
);


endmodule
