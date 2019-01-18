/*

           ___Banco de Reg._     ______
End.WR ---|                 |   |      |
End.R1 ---|          Dado R1|---| ULA  |---
End.R2 ---|          Dado R2|---|      |
DadoWR ---|_________________|   |______|
                    |
                    WR

*/
module bancoRegistradores(rst, clk, wrEn, addR1, addR2, addWr, dadoR1, dadoR2, dadoWr);

input clk, rst, wrEn;

input [2:0] addR1, addR2, addWr;

input [7:0] dadoWr;

output reg [7:0] dadoR1; 

output reg [7:0] dadoR2;



reg [7:0] dados [0:7];



	always @(negedge rst or posedge clk) begin

	

		if(rst == 0) begin

		 /*dados[3'b000] <= 8'b10100000; //dados[0] <= 8'ha0;
			dados[3'b001] <= 8'b10100001; //dados[1] <= 8'ha1;
			dados[3'b010] <= 8'b10100010; //dados[2] <= 8'ha2;
			dados[3'b011] <= 8'b10100011;
			dados[3'b100] <= 8'b10100100;
			dados[3'b101] <= 8'b10100101;
			dados[3'b110] <= 8'b10100110;
			dados[3'b111] <= 8'b10100111;*/
			
			dados[3'b000] <= 8'hf0;
			dados[3'b001] <= 8'hf1;
			dados[3'b010] <= 8'hf2;
			dados[3'b011] <= 8'hf3;
			dados[3'b100] <= 8'hf4;
			dados[3'b101] <= 8'hf5;
			dados[3'b110] <= 8'hf6;
			dados[3'b111] <= 8'hf7;

		end 

		

		else begin

		

			if(wrEn == 1) begin

				dados[addWr] <= dadoWr;

			end

			
			//Dado R1 e Dado R2 tem que ser lido ao mesmo tempo.
			dadoR1 <= dados[addR1];

			dadoR2 <= dados[addR2];

			

		end

		

	end

	

endmodule 