module throttle_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, throttle_offset, clk);
output reg [7:0] motor_1_offset;
output reg [7:0] motor_2_offset;
output reg [7:0] motor_3_offset;
output reg [7:0] motor_4_offset;
input [7:0] throttle_offset;
input clk;

	always@ (posedge clk )begin
		motor_1_offset <= throttle_offset;
		motor_2_offset <= throttle_offset;
		motor_3_offset <= throttle_offset;
		motor_4_offset <= throttle_offset;
	end

endmodule

module pitch_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, pitch_offset, clk);
output reg [7:0] motor_1_offset;
output reg [7:0] motor_2_offset;
output reg [7:0] motor_3_offset;
output reg [7:0] motor_4_offset;
input [7:0] pitch_offset;
input clk;

	always@ (posedge clk )begin
		motor_1_offset <= pitch_offset;
		motor_2_offset <= pitch_offset;
		motor_3_offset <= pitch_offset;
		motor_4_offset <= pitch_offset;
	end

endmodule

module roll_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, roll_offset, clk);
output reg [7:0] motor_1_offset;
output reg [7:0] motor_2_offset;
output reg [7:0] motor_3_offset;
output reg [7:0] motor_4_offset;
input [7:0] roll_offset;
input clk;

	always@ (posedge clk )begin
		motor_1_offset <= roll_offset;
		motor_2_offset <= roll_offset;
		motor_3_offset <= roll_offset;
		motor_4_offset <= roll_offset;
	end

endmodule

module yaw_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, yaw_offset, clk);
output reg [7:0] motor_1_offset;
output reg [7:0] motor_2_offset;
output reg [7:0] motor_3_offset;
output reg [7:0] motor_4_offset;
input [7:0] yaw_offset;
input clk;

	always@ (posedge clk )begin
		motor_1_offset <= yaw_offset;
		motor_2_offset <= yaw_offset;
		motor_3_offset <= yaw_offset;
		motor_4_offset <= yaw_offset;
	end

endmodule
