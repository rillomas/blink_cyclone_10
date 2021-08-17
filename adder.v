module Adder (
	input switch_0,
	input switch_1,
	input switch_2,
	output led_0, // LED ouput
	output led_1 // LED ouput
);
	// wire sum;
	FullAdder fa(.a(switch_0), .b(switch_1), .ci(switch_2), .s(led_0), .co(led_1));
	// We invert the bit since we're connecting to a anode common LED (0 will light the LED)
	// assign led_0 = ~sum;
endmodule
