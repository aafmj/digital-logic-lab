module Tests;

reg clock, enable, reset, load, dir, leftInput, rightInput;
reg [3:0] in;
wire [3:0] out;

always
begin
	clock = 0;
	#5;
	clock = 1;
	#5;
end

ShiftRegister shReg(.Enable(enable), .Reset(reset), .Load(load), .Input(in), .Dir(dir), .LeftInput(leftInput), .RightInput(rightInput), .Clock(clock), .Q(out));

initial begin
	enable = 1;
	reset = 0;
	load = 0;
	dir = 1;
	leftInput = 1;
	rightInput = 1;
	$display("change the direction to <- 1");
	#20 $display("%b", out);
	#20 $display("%b", out);
	#20 $display("%b", out);
	#20 $display("%b", out);
	rightInput = 0;
	$display("change the direction to <- 0");
	#20 $display("%b", out);
	#20 $display("%b", out);
	#20 $display("%b", out);
	#20 $display("%b", out);
	dir = 0;
	$display("change the direction to 1 ->");
	#20 $display("%b", out);
	#20 $display("%b", out);
	#20 $display("%b", out);
	in = 4'b0000;
	load = 1;
	$display("load to 0000");
	#20 $display("%b", out);
	in = 4'b0110;
	$display("load to 0110");
	#20 $display("%b", out);
	#20 $display("%b", out);
	load = 0;
	reset = 1;
	$display("reset");
	#10 $display("%b", out);
	#10 $display("%b", out);
	reset = 0;
	$display("change the direction to 1 ->");
	#20 $display("%b", out);
	#20 $display("%b", out);
	enable = 0;
	$display("disabled");
	#20 $display("%b", out);
	#20 $display("%b", out);
end

endmodule
