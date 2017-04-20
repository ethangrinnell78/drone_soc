/* 
Module sums up 8-bit offset values from reciever_offset_generators.v and 
generates an 8-bit duty cycle value 0%(8'h00) to 100%(8'h64) for pwm_generator.v
*/

module motor_offset_summer (motor_total_offset, pitch_offset, roll_offset, yaw_offset, throttle_offset, clk);
	
	output reg [7:0] motor_total_offset;	// 8-bit value output 
	input  [7:0] throttle_offset; 		// 8-bit value input
	input  [7:0] pitch_offset; 			// 8-bit value input
	input  [7:0] roll_offset; 			// 8-bit value input
	input  [7:0] yaw_offset;			// 8-bit value input
	input clk;
	parameter MAIN_OFFSET = 8'b0000000;
	
	always@ (posedge clk )begin
		motor_total_offset <= throttle_offset+pitch_offset+roll_offset+yaw_offset+MAIN_OFFSET;
	// "8'h32" is the base duty cycle value (50%) that is required for the ESCs to keep motors idle 
	end
	
endmodule 



