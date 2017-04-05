/* 
Module sums up 8-bit offset values from reciever_offset_generators.v and 
generates an 8-bit duty cycle value 0%(8'h00) to 100%(8'h64) for pwm_generator.v
*/

module motor_offset_summer (throttle_offset,pitch_offset,roll_offset,yaw_offset,motor_total_offset);
	
	input  [7:0] throttle_offset; 		// 8-bit value input
	input  [7:0] pitch_offset; 			// 8-bit value input
	input  [7:0] roll_offset; 			// 8-bit value input
	input  [7:0] yaw_offset;			// 8-bit value input
	output [7:0] motor_total_offset;	// 8-bit value output 
	
	assign motor_total_offset = throttle_offset+pitch_offset+roll_offset+yaw_offset+8'h32;
	// "8'h32" is the base duty cycle value (50%) that is required for the ESCs to keep motors idle 
	
endmodule 



