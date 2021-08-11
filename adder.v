module Adder (
	input wire switch_0,
	input wire switch_1,
	input wire switch_2,
	output wire led_0, // LED ouput
	output wire led_1 // LED ouput
);
	FullAdder fa(.a(switch_0), .b(switch_1), .ci(switch_2), .s(led_0), .co(led_1));
endmodule
