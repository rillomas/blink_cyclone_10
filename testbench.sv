`timescale 1ns/1ns
module testbench ();

	parameter STEP = 100;
	logic	s0;
	logic	s1;
	logic	s2;
	logic l0;
	logic l1;
	
	Adder adder (
		.switch_0(s0),
		.switch_1(s1),
		.switch_2(s2),
		.led_0(l0),
		.led_1(l1)
		);
	
	initial begin
		s0 <= 1'b0;
		s1 <= 1'b0;
		s2 <= 1'b0;
		#STEP
		s0 <= 1'b1;
		s1 <= 1'b0;
		s2 <= 1'b0;
		#STEP
		s0 <= 1'b0;
		s1 <= 1'b1;
		s2 <= 1'b0;
		#STEP
		s0 <= 1'b1;
		s1 <= 1'b1;
		s2 <= 1'b0;
		#STEP
		s0 <= 1'b0;
		s1 <= 1'b0;
		s2 <= 1'b1;
		#STEP
		s0 <= 1'b1;
		s1 <= 1'b0;
		s2 <= 1'b1;
		#STEP
		s0 <= 1'b0;
		s1 <= 1'b1;
		s2 <= 1'b1;
		#STEP
		s0 <= 1'b1;
		s1 <= 1'b1;
		s2 <= 1'b1;
		#STEP
		$finish;
	end

endmodule