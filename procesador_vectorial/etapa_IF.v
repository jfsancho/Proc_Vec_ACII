module etapa_IF(clk,
	sel_dir, // Entrada de selección de dirección de rom de algoritmos
	sel_pc, //Entrada de selección de pc en el mux_pc

	// Salidas
	instruccion,
	opcode
);

input wire clk;
input wire [2:0] sel_dir;
input wire sel_pc;
output wire [13:0] instruccion;
output wire opcode;

wire [9:0] result_sel_dir;
wire [9:0] result_sel_pc; //Wire de salida del mux de sel_pc y entrada al PC_REG.
wire [9:0] actual_pc; //Wire de salida del PC_REG y entrada a la ROM de instrucciones.
wire [9:0] suma_pc_result; // PC + 1


// Direcciones en memoria ROM de los diferentes algoritmos.
parameter encrypt_xor_dir = 000; // Estos números deben ser corregidos cuando esté el código final
parameter decrypt_xor_dir = 100;
parameter encrypt_shift_dir = 200;
parameter decrypt_shift_dir = 300;
parameter encrypt_circ_shift_dir = 400;
parameter decrypt_circ_shift_dir = 500;
parameter encrypt_add_dir = 600;
parameter decrypt_add_dir = 700;

assign opcode <= instruccion [13:10];

registro_PC registroPC(
	.clk(clk),
	.pc_in(result_sel_pc),
	.pc_out(actual_pc)
);

suma_PC sumaPC(
	.dataa(actual_pc),
	.result(suma_pc_result)
);

rom_memory ROMMemory(
	.address(actual_pc),
	.clock(clk),
	.q(instruccion)
);

mux_2x10 muxPC(
	.data0x(suma_pc_result),
	.data1x(result_sel_dir),
	.sel(sel_pc),
	.result(result_sel_pc)
);

mux_8x10 muxDir(
	.data0x(encrypt_xor_dir),
	.data1x(decrypt_xor_dir),
	.data2x(encrypt_shift_dir),
	.data3x(decrypt_shift_dir),
	.data4x(encrypt_circ_shift_dir),
	.data5x(decrypt_circ_shift_dir),
	.data6x(encrypt_add_dir),
	.data7x(decrypt_add_dir),
	.sel(sel_dir),
	.result(result_sel_dir)
);

endmodule
