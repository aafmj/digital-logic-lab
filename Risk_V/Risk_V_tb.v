module RISC_V_Test();
	wire Cout;
	reg Clock, enable, reset, load, dir, leftInput, rightInput;
	wire [63:0] Cout, reg_out, adder_out;

    initial begin
		Clock = 0;
		forever #5 Clock = ~Clock;
	end

	FullAdder64 adder(.Cin(Cin), .A(reg_out), .B(64'b1000), .S(adder_out), .Cout(Cout));
	Shift_Register shReg(.Enable(enable), .Reset(reset), .Load(load), .Input(adder_out), .Dir(dir), .LeftInput(leftInput), .RightInput(rightInput), .Clock(Clock), .Q(reg_out));

	defparam shReg.n = 64;

	initial begin
		enable = 0;
		reset = 0;
		load = 1;
		dir = 1;
		leftInput = 1;
		rightInput = 1;
		#20 $display("initial register: %b", reg_out);
		reset = 1;
		#20 $display("register after reset: %b", reg_out);
		reset = 0;
		$display("start:");
		#20 $display("reg: %d", reg_out);
		#20 $display("reg: %d", reg_out);
		#20 $display("reg: %d", reg_out);
		#20 $display("reg: %d", reg_out);
		#20 $display("reg: %d", reg_out);
		#20 $display("reg: %d", reg_out);
		#20 $display("reg: %d", reg_out);
		#20 $display("reg: %d", reg_out);
		#20 $display("reg: %d", reg_out);
		#20 $display("reg: %d", reg_out);
		#20 $display("reg: %d", reg_out);
	end

endmodule