module testeok (f, x1, x2, x3);
	input x1, x2, x3;
	output f;
	
	and(a, x1, x2);
	not(b, x3);
	or(f, a, b);
endmodule 