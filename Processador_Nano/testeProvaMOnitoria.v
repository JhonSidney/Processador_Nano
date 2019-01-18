module testeProvaMonitoria(clk, rst, dado, A, B, NA, NB);
	input clk, rst, dado;
	reg [1:0] FF //FA, FB;
	output A, B, NA, NB;
	
	always @(negedge rst or negedge clk) begin
		if(rst == 0){
			FF <= 2'b00;
		}else begin
			case(FF)
		end;
		
	end;
	
	
	
	
	
endmodule 