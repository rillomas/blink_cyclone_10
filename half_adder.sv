module HalfAdder(
	input logic a,
	input logic b,
	output logic s,
	output logic co);
	assign co = a & b;
	assign s = a ^ b;
endmodule