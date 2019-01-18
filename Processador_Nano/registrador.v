module registrador (load, rst, dadoIn, dadoOut);

input load, rst;

input [7:0] dadoIn;

output reg [7:0] dadoOut;	

	always @(negedge rst or posedge load) begin // independente do valor de load, o rst tem prioridade, se o rst for 1 continua, se for 0 ele reseta*.

	

		if(rst == 0) begin

			dadoOut <= 8'b00000000; //rst = 0, dadoout recebe 0 *

		end else begin

			dadoOut <= dadoIn; 

		end

		

	end

endmodule 