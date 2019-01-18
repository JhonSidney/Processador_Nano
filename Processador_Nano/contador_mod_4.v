module contador(clk, rst, cnt);
	input clk;
	input rst;
	output reg [1:0] cnt;
	
	
	always @(posedge clk or negedge rst)begin
		if(rst == 0)
			cnt = 0;
			else
				cnt = cnt +1;
	
	end

endmodule
//negedge clk // para sequencial descida
//posedge clk // Para sequencial subida
//
//reg [1:0]cnt;
//
//always @(posedge clk or negedge rst) begin
//	// chegar clock contar, cegar reset resetar
//	if (rst == 0){
//	cnt = 0;	
//}else {
//	cnt = cnt+1;
//}
//end 

//para mod 512 reg [8:0] cnt;

// para mod 10 reg [3:0] cnt;
//if (rst == 0)
//  cnt = 0;
//else if (cnt > 9)
//		cnt = 0;
// else cnt = cnt +1;
//
//contador up/down
//
//else if (up == 1)
//		cnt = cnt +1;
//else 
//		cnt = cnt - 2;
//
//
//
//
//