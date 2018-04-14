`timescale 1ns / 1ps

//Copy this content to create a testbech file
module casi_proc_test;

	// Inputs
    reg clk;
    reg [2:0] sel_dir;

    //decode
    reg reg_wrs_in_ID;
    reg reg_wrv_in_ID;

    reg [31:0] data_wrv_ID;
    reg [7:0] data_wrs_ID;

    reg [2:0] i_dir_wr_ID;


    //Outputs
    //FETCH
    wire [13:0] instruccion;

    //UC
    wire reg_rdv, reg_rds, sel_dest, sel_op, sel_ad,sel_int,
                 sum_mem, sel_mem, sel_data, mem_wr, sel_wb,reg_wrv, reg_wrs, sel_pc;
    wire [3:0] opcode_outUC;

    //REGISTRO IF/ID
    wire [13:0] instruction_out;

    //DECODE
    wire [3:0] opcode;
    wire [2:0] i_dir_wir;
    wire [7:0] shift;
    wire [7:0] inmediato;
    wire [2:0] dir_dest_out;
    wire [31:0] data_vec1;
    wire [31:0] data_vec2;
    wire [7:0] data_sca1;
    wire [31:0] VFS;


    /******************************************************************************************************/

	// Instantiate the Device Under Test (DUT)
    etapa_IF fetch (.clk(clk), .sel_dir(sel_dir), .sel_pc(sel_pc),
                   .instruccion(instruccion));

    //Datos de entrada
    unidad_control UC (.opcode_in(opcode),.sel_pc(sel_pc), .reg_rdv(reg_rdv), .reg_rds(reg_rds),.sel_dest(sel_dest),
    .sel_op(sel_op), .sel_ad(sel_ad), .sel_int(sel_int), .sum_mem(sum_mem), .sel_mem(sel_mem), .sel_data(sel_data), .mem_wr(mem_wr),
    .sel_wb(sel_wb), .reg_wrv(reg_wrv), .reg_wrs(reg_wrs), .opcode_out(opcode_outUC) ) ;


    registro_IF_ID regIDIF (

      //DATA
       .instruction_in(instruccion), .clk(clk), .instruction_out(instruction_out) );



    etapa_ID decode (
        //Señales de paso
        .clk(clk), .instruccion(instruction_out), .data_wrv(data_wrv_ID),
                   .data_wrs(data_wrs_ID), .i_dir_wr(i_dir_wr_ID), .reg_wrv(reg_wrv_in_ID), .reg_wrs(reg_wrs_in_ID),
                   .reg_rdv(reg_rdv_out), .reg_rds(reg_rds_out), .sel_dest(sel_dest_out), .shift(shift),
                   .inmediato(inmediato), .dir_dest_out(dir_dest_out), .VFS(VFS), .data_vec1(data_vec1),
                   .data_vec2(data_vec2), .data_sca1(data_sca1),
                   .opcode(opcode)
                   );


    /******************************************************************************************************/


	//Initialize clock
	initial begin

       // Se establecen entradas
        clk = 0;
        sel_dir = 3'b001 ;
        data_wrv_ID = 32'b0;
        data_wrs_ID = 8'b0;
        i_dir_wr_ID = 3'b0;
        #5;

        forever begin
        #5;
        clk = ~clk;

        end
	end


endmodule
