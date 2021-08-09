module FullAdder(
	input a,
	input b,
	input ci,
	output s,
	output co);
	wire s0;
	wire co0;
	wire co1;
	HalfAdder ha_before(.a(a), .b(b), .s(s0), .co(co0));
	HalfAdder ha_after(.a(s0), .b(ci), .s(s), .co(co1));
	assign co = co0 | co1;
endmodule