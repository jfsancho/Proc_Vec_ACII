module sum_pcmem(
					dataa,
					result,
					enable);
					
					
					
input wire [31:0]dataa;
input wire enable;

output reg [31:0];
output reg [31:0] result;

always @(posedge enable)
begin
	result<=dataa+1;
end

endmodule 