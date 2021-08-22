module Adder (
	input logic switch_0,
	input logic switch_1,
	input logic switch_2,
	output logic led_0, // LED ouput
	output logic led_1 // LED ouput
);
	logic sum;
	FullAdder fa(.a(switch_0), .b(switch_1), .ci(switch_2), .s(sum), .co(led_1));
	// We invert the bit since we're connecting to a anode common LED (0 will light the LED)
	assign led_0 = ~sum;
endmodule
