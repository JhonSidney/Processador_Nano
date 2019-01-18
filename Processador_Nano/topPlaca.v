module topPlaca(
				input CLK_28, 
				input [17:0] SW, 
				input [3:0] KEY,
				output [17:0] LEDR, 
				output [7:0] LEDG, 
				output [7:0] HEX0_D, 
				output [7:0] HEX1_D, 
				output [7:0] HEX2_D, 
				output [7:0] HEX3_D, 
				output [7:0] HEX4_D,  
				output [7:0] HEX5_D, 
				output [7:0] HEX6_D, 
				output [7:0] HEX7_D,
				output teste
				);
	//foto 1 20/12/2018

	localparam STEP=0, AUTO=1;

	assign LEDR = SW;
	//assign LEDG[3:0] = KEY;	20/12/2018
	
	wire clk, clkCPU, btStep, btRst, swModo, swDisplay;  
	wire [7:0] enderecoMemoria, pOUTPUT, pINPUT;
	wire [15:0] dadoMemoria;
	assign clkCPU = swModo == 1'b0 ? clk : btStep;// seleciona entre o clock automático ou manual
	assign pINPUT=SW[7:0];
	assign LEDG[0]=clk;
	assign LEDG[1]=btStep;
	assign LEDG[2]=btRst;
	
	display7seg display0(.dp(1), .dado(SW[3:0]),     .leds(HEX0_D));
	display7seg display1(.dp(1), .dado(SW[7:4]),     .leds(HEX1_D));
	display7seg display2(.dp(1), .dado(dadoMemoria[11:8]),    .leds(HEX2_D));
	display7seg display3(.dp(1), .dado(dadoMemoria[15:12]),   .leds(HEX3_D));	
	display7seg display4(.dp(1), .dado(enderecoMemoria[3:0]), .leds(HEX4_D));
	display7seg display5(.dp(1), .dado(enderecoMemoria[7:4]), .leds(HEX5_D));
	display7seg display6(.dp(1), .dado(pOUTPUT[3:0]), 			 .leds(HEX6_D));
	display7seg display7(.dp(1), .dado(pOUTPUT[7:4]), 			 .leds(HEX7_D));

endmodule 