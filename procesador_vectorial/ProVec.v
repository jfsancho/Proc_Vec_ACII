// Copyright (C) 2016  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Intel and sold by Intel or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"
// CREATED		"Tue Apr 10 17:14:53 2018"

module ProVec(
	clk,
	data_mem,
	final_mem,
	sel_dir,
	mem_wr,
	dir_mem
);


input wire	clk;
input wire	[31:0] data_mem;
input wire	[31:0] final_mem;
input wire	[2:0] sel_dir;
output wire	mem_wr;
output wire	[31:0] dir_mem;

wire	SYNTHESIZED_WIRE_0;
wire	[3:0] SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	[31:0] SYNTHESIZED_WIRE_9;
wire	[31:0] SYNTHESIZED_WIRE_10;
wire	[2:0] SYNTHESIZED_WIRE_85;
wire	[7:0] SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	[31:0] SYNTHESIZED_WIRE_16;
wire	[7:0] SYNTHESIZED_WIRE_17;
wire	[2:0] SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	[31:0] SYNTHESIZED_WIRE_20;
wire	[31:0] SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	[31:0] SYNTHESIZED_WIRE_25;
wire	[2:0] SYNTHESIZED_WIRE_26;
wire	[7:0] SYNTHESIZED_WIRE_27;
wire	[31:0] SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	[13:0] SYNTHESIZED_WIRE_41;
wire	[3:0] SYNTHESIZED_WIRE_42;
wire	[1:0] SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
wire	[2:0] SYNTHESIZED_WIRE_86;
wire	SYNTHESIZED_WIRE_47;
wire	SYNTHESIZED_WIRE_48;
wire	SYNTHESIZED_WIRE_49;
wire	SYNTHESIZED_WIRE_50;
wire	SYNTHESIZED_WIRE_51;
wire	[7:0] SYNTHESIZED_WIRE_52;
wire	[31:0] SYNTHESIZED_WIRE_53;
wire	[2:0] SYNTHESIZED_WIRE_54;
wire	[13:0] SYNTHESIZED_WIRE_55;
wire	SYNTHESIZED_WIRE_56;
wire	SYNTHESIZED_WIRE_57;
wire	SYNTHESIZED_WIRE_58;
wire	SYNTHESIZED_WIRE_59;
wire	SYNTHESIZED_WIRE_60;
wire	SYNTHESIZED_WIRE_61;
wire	SYNTHESIZED_WIRE_62;
wire	SYNTHESIZED_WIRE_63;
wire	SYNTHESIZED_WIRE_64;
wire	[7:0] SYNTHESIZED_WIRE_66;
wire	[3:0] SYNTHESIZED_WIRE_67;
wire	[7:0] SYNTHESIZED_WIRE_68;
wire	[1:0] SYNTHESIZED_WIRE_69;
wire	[7:0] SYNTHESIZED_WIRE_70;
wire	[31:0] SYNTHESIZED_WIRE_71;
wire	[31:0] SYNTHESIZED_WIRE_72;
wire	[31:0] SYNTHESIZED_WIRE_73;
wire	SYNTHESIZED_WIRE_74;
wire	SYNTHESIZED_WIRE_75;
wire	[2:0] SYNTHESIZED_WIRE_76;
wire	[7:0] SYNTHESIZED_WIRE_77;
wire	[3:0] SYNTHESIZED_WIRE_78;
wire	[7:0] SYNTHESIZED_WIRE_79;
wire	[1:0] SYNTHESIZED_WIRE_80;
wire	[7:0] SYNTHESIZED_WIRE_81;
wire	[31:0] SYNTHESIZED_WIRE_82;
wire	[31:0] SYNTHESIZED_WIRE_83;
wire	[31:0] SYNTHESIZED_WIRE_84;





etapa_IF	b2v_inst(
	.clk(clk),
	.sel_pc(SYNTHESIZED_WIRE_0),
	.sel_dir(sel_dir),
	.instruccion(SYNTHESIZED_WIRE_41),
	.opcode(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst.decrypt_add_dir = 29;
	defparam	b2v_inst.decrypt_circ_shift_dir = 16;
	defparam	b2v_inst.decrypt_shift_dir = 8;
	defparam	b2v_inst.decrypt_xor_dir = 0;
	defparam	b2v_inst.encrypt_add_dir = 20;
	defparam	b2v_inst.encrypt_circ_shift_dir = 12;
	defparam	b2v_inst.encrypt_shift_dir = 4;
	defparam	b2v_inst.encrypt_xor_dir = 0;


unidad_control	b2v_inst1(
	.opcode_in(SYNTHESIZED_WIRE_1),
	.sel_pc(SYNTHESIZED_WIRE_0),
	.reg_rdv(SYNTHESIZED_WIRE_29),
	.reg_rds(SYNTHESIZED_WIRE_30),
	.sel_dest(SYNTHESIZED_WIRE_31),
	.sel_op(SYNTHESIZED_WIRE_32),
	.sel_ad(SYNTHESIZED_WIRE_44),
	.sel_int(SYNTHESIZED_WIRE_33),
	.sum_mem(SYNTHESIZED_WIRE_34),
	.sel_mem(SYNTHESIZED_WIRE_35),
	.sel_data(SYNTHESIZED_WIRE_36),
	.mem_wr(SYNTHESIZED_WIRE_37),
	.sel_wb(SYNTHESIZED_WIRE_38),
	.reg_wrv(SYNTHESIZED_WIRE_39),
	.reg_wrs(SYNTHESIZED_WIRE_40),
	.opcode_out(SYNTHESIZED_WIRE_42));


registro_EXE_MEM	b2v_inst10(
	.clk(clk),
	.sum_mem_in(SYNTHESIZED_WIRE_2),
	.sel_mem_in(SYNTHESIZED_WIRE_3),
	.sel_data_in(SYNTHESIZED_WIRE_4),
	.mem_wr_in(SYNTHESIZED_WIRE_5),
	.sel_wb_in(SYNTHESIZED_WIRE_6),
	.reg_wrv_in(SYNTHESIZED_WIRE_7),
	.reg_wrs_in(SYNTHESIZED_WIRE_8),
	.ALU_in(SYNTHESIZED_WIRE_9),
	.DATA1_in(SYNTHESIZED_WIRE_10),
	.dir_dest_in(SYNTHESIZED_WIRE_85),
	.inmediato_in(SYNTHESIZED_WIRE_12),
	.sum_mem_out(SYNTHESIZED_WIRE_22),
	.sel_mem_out(SYNTHESIZED_WIRE_23),
	.sel_data_out(SYNTHESIZED_WIRE_24),
	.mem_wr_out(mem_wr),
	.sel_wb_out(SYNTHESIZED_WIRE_13),
	.reg_wrv_out(SYNTHESIZED_WIRE_14),
	.reg_wrs_out(SYNTHESIZED_WIRE_15),
	.ALU_out(SYNTHESIZED_WIRE_28),
	.DATA1_out(SYNTHESIZED_WIRE_25),
	.dir_dest_out(SYNTHESIZED_WIRE_26),
	.inmediato_out(SYNTHESIZED_WIRE_27));


registro_MEM_WB	b2v_inst12(
	.clk(clk),
	.sel_wb_in(SYNTHESIZED_WIRE_13),
	.reg_wrv_in(SYNTHESIZED_WIRE_14),
	.reg_wrs_in(SYNTHESIZED_WIRE_15),
	.DATA_in(SYNTHESIZED_WIRE_16),
	.data_wrs_in(SYNTHESIZED_WIRE_17),
	.dir_dest_in(SYNTHESIZED_WIRE_18),
	.MEM_in(data_mem),
	.sel_wb_out(SYNTHESIZED_WIRE_19),
	.reg_wrv_out(SYNTHESIZED_WIRE_47),
	.reg_wrs_out(SYNTHESIZED_WIRE_48),
	.DATA_out(SYNTHESIZED_WIRE_20),
	.data_wrs_out(SYNTHESIZED_WIRE_52),
	.dir_dest_out(SYNTHESIZED_WIRE_54),
	.MEM_out(SYNTHESIZED_WIRE_21));


etapa_WB	b2v_inst15(
	.sel_wb(SYNTHESIZED_WIRE_19),
	.data_ALU(SYNTHESIZED_WIRE_20),
	.data_MEM(SYNTHESIZED_WIRE_21),
	.data_wbv(SYNTHESIZED_WIRE_53));


etapa_MEM	b2v_inst16(
	.sum_mem(SYNTHESIZED_WIRE_22),
	.sel_mem(SYNTHESIZED_WIRE_23),
	.sel_data(SYNTHESIZED_WIRE_24),
	.clk(clk),
	.data1_in(SYNTHESIZED_WIRE_25),
	.dir_dest_in(SYNTHESIZED_WIRE_26),
	.final_mem(final_mem),
	.inmediate_in(SYNTHESIZED_WIRE_27),
	.result_alu(SYNTHESIZED_WIRE_28),
	.data(SYNTHESIZED_WIRE_16),
	.dir_dest_out(SYNTHESIZED_WIRE_18),
	.dir_mem(dir_mem),
	.inmediate_out(SYNTHESIZED_WIRE_17));


registro_IF_ID	b2v_inst3(
	.reg_rdv_in(SYNTHESIZED_WIRE_29),
	.reg_rds_in(SYNTHESIZED_WIRE_30),
	.sel_dest_in(SYNTHESIZED_WIRE_31),
	.sel_op_in(SYNTHESIZED_WIRE_32),
	.sel_int_in(SYNTHESIZED_WIRE_33),
	.sum_mem_in(SYNTHESIZED_WIRE_34),
	.sel_mem_in(SYNTHESIZED_WIRE_35),
	.sel_data_in(SYNTHESIZED_WIRE_36),
	.mem_wr_in(SYNTHESIZED_WIRE_37),
	.sel_wb_in(SYNTHESIZED_WIRE_38),
	.reg_wrv_in(SYNTHESIZED_WIRE_39),
	.reg_wrs_in(SYNTHESIZED_WIRE_40),
	.clk(clk),
	.instruction_in(SYNTHESIZED_WIRE_41),
	.opcode_in(SYNTHESIZED_WIRE_42),
	.sel_vec_in(SYNTHESIZED_WIRE_43),
	.reg_rdv_out(SYNTHESIZED_WIRE_49),
	.reg_rds_out(SYNTHESIZED_WIRE_50),
	.sel_dest_out(SYNTHESIZED_WIRE_51),
	.sel_op_out(SYNTHESIZED_WIRE_56),
	.sel_int_out(SYNTHESIZED_WIRE_57),
	.sum_mem_out(SYNTHESIZED_WIRE_58),
	.sel_mem_out(SYNTHESIZED_WIRE_59),
	.sel_data_out(SYNTHESIZED_WIRE_60),
	.mem_wr_out(SYNTHESIZED_WIRE_61),
	.sel_wb_out(SYNTHESIZED_WIRE_62),
	.reg_wrv_out(SYNTHESIZED_WIRE_63),
	.reg_wrs_out(SYNTHESIZED_WIRE_64),
	.instruction_out(SYNTHESIZED_WIRE_55),
	.opcode_out(SYNTHESIZED_WIRE_67),
	.sel_vec_out(SYNTHESIZED_WIRE_69));


adelantamiento	b2v_inst4(
	.sel_ad(SYNTHESIZED_WIRE_44),
	.dir_dest_EXE(SYNTHESIZED_WIRE_85),
	.dir_dest_ID(SYNTHESIZED_WIRE_86),
	.sel_vec(SYNTHESIZED_WIRE_43));


etapa_ID	b2v_inst5(
	.clk(clk),
	.reg_wrv(SYNTHESIZED_WIRE_47),
	.reg_wrs(SYNTHESIZED_WIRE_48),
	.reg_rdv(SYNTHESIZED_WIRE_49),
	.reg_rds(SYNTHESIZED_WIRE_50),
	.sel_dest(SYNTHESIZED_WIRE_51),
	.data_wrs(SYNTHESIZED_WIRE_52),
	.data_wrv(SYNTHESIZED_WIRE_53),
	.i_dir_wr(SYNTHESIZED_WIRE_54),
	.instruccion(SYNTHESIZED_WIRE_55),
	.data_sca1(SYNTHESIZED_WIRE_68),
	.data_vec1(SYNTHESIZED_WIRE_71),
	.data_vec2(SYNTHESIZED_WIRE_72),
	.dir_dest_out(SYNTHESIZED_WIRE_86),
	.inmediato(SYNTHESIZED_WIRE_66),
	.shift(SYNTHESIZED_WIRE_70),
	.VFS(SYNTHESIZED_WIRE_73));


registro_ID_EXE	b2v_inst7(
	.clk(clk),
	.sel_op_in(SYNTHESIZED_WIRE_56),
	.sel_int_in(SYNTHESIZED_WIRE_57),
	.sum_mem_in(SYNTHESIZED_WIRE_58),
	.sel_mem_in(SYNTHESIZED_WIRE_59),
	.sel_data_in(SYNTHESIZED_WIRE_60),
	.mem_wr_in(SYNTHESIZED_WIRE_61),
	.sel_wb_in(SYNTHESIZED_WIRE_62),
	.reg_wrv_in(SYNTHESIZED_WIRE_63),
	.reg_wrs_in(SYNTHESIZED_WIRE_64),
	.dir_dest_in(SYNTHESIZED_WIRE_86),
	.inmediato_in(SYNTHESIZED_WIRE_66),
	.opcode_in(SYNTHESIZED_WIRE_67),
	.sca1_in(SYNTHESIZED_WIRE_68),
	.sel_vec_in(SYNTHESIZED_WIRE_69),
	.shift_in(SYNTHESIZED_WIRE_70),
	.VEC1_in(SYNTHESIZED_WIRE_71),
	.VEC2_in(SYNTHESIZED_WIRE_72),
	.VFS_in(SYNTHESIZED_WIRE_73),
	.sel_op_out(SYNTHESIZED_WIRE_75),
	.sel_int_out(SYNTHESIZED_WIRE_74),
	.sum_mem_out(SYNTHESIZED_WIRE_2),
	.sel_mem_out(SYNTHESIZED_WIRE_3),
	.sel_data_out(SYNTHESIZED_WIRE_4),
	.mem_wr_out(SYNTHESIZED_WIRE_5),
	.sel_wb_out(SYNTHESIZED_WIRE_6),
	.reg_wrv_out(SYNTHESIZED_WIRE_7),
	.reg_wrs_out(SYNTHESIZED_WIRE_8),
	.dir_dest_out(SYNTHESIZED_WIRE_76),
	.inmediato_out(SYNTHESIZED_WIRE_77),
	.opcode_out(SYNTHESIZED_WIRE_78),
	.sca1_out(SYNTHESIZED_WIRE_79),
	.sel_vec_out(SYNTHESIZED_WIRE_80),
	.shift_out(SYNTHESIZED_WIRE_81),
	.VEC1_out(SYNTHESIZED_WIRE_82),
	.VEC2_out(SYNTHESIZED_WIRE_83),
	.VFS_out(SYNTHESIZED_WIRE_84));


etapa_EXE	b2v_inst8(
	.sel_int(SYNTHESIZED_WIRE_74),
	.sel_op(SYNTHESIZED_WIRE_75),
	.dir_dest_in(SYNTHESIZED_WIRE_76),
	.inmediate_in(SYNTHESIZED_WIRE_77),
	.opcode(SYNTHESIZED_WIRE_78),
	.out_s(SYNTHESIZED_WIRE_79),
	.sel_vec(SYNTHESIZED_WIRE_80),
	.shamt(SYNTHESIZED_WIRE_81),
	.vector_a(SYNTHESIZED_WIRE_82),
	.vector_ad(data_mem),
	.vector_b(SYNTHESIZED_WIRE_83),
	.vfs(SYNTHESIZED_WIRE_84),
	.alu_result(SYNTHESIZED_WIRE_9),
	.data1_out(SYNTHESIZED_WIRE_10),
	.dir_dest_out(SYNTHESIZED_WIRE_85),
	.inmediate_out(SYNTHESIZED_WIRE_12));


endmodule
