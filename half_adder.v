module HalfAdder(
	input a,
	input b,
	output s,
	output co);
	assign co = a & b;
	assign s = a ^ b;
endmodule