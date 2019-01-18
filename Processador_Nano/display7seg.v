module  display7seg(dp, dado, leds);
input dp; // dp = Decimal Point
input [3:0] dado;
output reg [7:0] leds;
	always @(*)
		begin
			case(dado)
			//               b'b*gfedcba
			4'b0000:leds = ~(8'b00111111); //0
			4'b0001:leds = ~(8'b00000110); //1
			4'b0010:leds = ~(8'b01011011); //2
			4'b0011:leds = ~(8'b01001111); //3
			4'b0100:leds = ~(8'b01100110); //4
			4'b0101:leds = ~(8'b01101101); //5
			4'b0110:leds = ~(8'b01111101); //6
			4'b0111:leds = ~(8'b00000111); //7
			4'b1000:leds = ~(8'b01111111); //8
			4'b1001:leds = ~(8'b01101111); //9
			4'b1010:leds = ~(8'b01110111); //A
			4'b1011:leds = ~(8'b01111100); //B no led vai aparecer b para não confundir com o 8
			4'b1100:leds = ~(8'b01011000); //C
			4'b1101:leds = ~(8'b01011110); //D no led vai apaecer d para não confudir com 0
			4'b1110:leds = ~(8'b01111001); //E
			4'b1111:leds = ~(8'b01110001); //F
			default:leds = ~(8'b11111111); //Default 
			
			endcase
		end
		

endmodule 

	