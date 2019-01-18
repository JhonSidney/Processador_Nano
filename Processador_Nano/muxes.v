module mux2x3(input [2:0]in1, in2, output [2:0] out, input sel); // se (sel==0) out=in1
	assign out = (sel==0? in1: in2);
endmodule

module mux2x8(input [7:0]in1, in2, output  [7:0] out, input sel); // se (sel==0) out=in1
	assign out = (sel==0? in1: in2);
endmodule 


/*
 A = in1
 B = in2
 sel = select or S
 out = X
 
 2x3 = 2 saidas de 3 bits
 2x8 = 2 saidas de 8 bits

     _______
A --|       |
    |  MUX  |--- X
B --|_______|
        |
        S

S = 0 entra in1
S = 1 entra in2		  
*/