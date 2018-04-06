module registro_ID_EXE(clk,
	//señales de control
	
	
	// Entradas
	VEC1_in,
	VEC2_in,
	VFS_in,
	sca1_in,
	inmediato_in,
	dir_dest_in,
	shift_in,
	
	
	
	
	// Salidas
	VEC1_out,
	VEC2_out,
	VFS_out,
	sca1_out,
	inmediato_out,
	dir_dest_out,
	shift_out,
);

input wire clk;

input wire [13:0] instruction_in;
output reg [13:0] instruction_out;



reg [31:0]VEC1;
reg [31:0]VEC2;

always @(posedge clk) // lee en el posedge
begin
    instruction<=instruction_in;
end 
always @(negedge clk) // escritura en el negedge
begin
	instruction_out<=instruction;
end







endmodule