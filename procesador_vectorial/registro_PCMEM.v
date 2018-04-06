module registro_PCMEM (clk, pc_in, pc_out);

input wire clk;
input wire [31:0] pc_in;
reg [31:0]pc;
output reg [31:0] pc_out;

always @(posedge clk) // lee en el posedge
begin
    pc<=pc_in;
end 
always @(negedge clk) // escritura en el negedge
begin
	pc_out<=pc;
end

endmodule