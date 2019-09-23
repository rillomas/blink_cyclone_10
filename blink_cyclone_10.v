// create module
module blink_cyclone_10 (
    input wire clk, // 50MHz input clock
    output wire LED0, // LED ouput
	 output wire LED1 // LED ouput
);
// create a binary counter
reg [31:0] cnt0;
reg [31:0] cnt1;
initial begin
cnt0 <= 32'h00000000;
cnt1 <= 32'h00000000;
end
always @(posedge clk) begin
cnt0 <= cnt0 + 1;
cnt1 <= cnt1 + 1;
end
//assign LED to 25th bit of the counter to blink the LED at a few Hz
assign LED0 = cnt0[24];
assign LED1 = cnt0[22];
endmodule
