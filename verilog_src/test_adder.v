module test_adder;

wire [7:0] motor_total_offset;
reg [7:0] throttle_offset,pitch_offset,roll_offset,yaw_offset;

motor_offset_summer U1(.throttle_offset(throttle_offset), .pitch_offset(pitch_offset), .roll_offset(roll_offset), .yaw_offset(yaw_offset), .motor_total_offset(motor_total_offset));

initial 
	begin 
	throttle_offset = 0; pitch_offset = 0; roll_offset = 0; yaw_offset = 0; // Start with no offset
	
	#5; throttle_offset = 5; 	// 50+(5+0+0+0) 		= 55 (8'h37)
	#5; pitch_offset = 5;		// 50+(5+5+0+0) 		= 60 (8'h3c)
	#5; roll_offset = 5;		// 50+(5+5+5+0) 		= 65 (8'h41)
	#5; yaw_offset = 5;			// 50+(5+5+5+5) 		= 70 (8'h46)
	#5; throttle_offset = -10;	// 50+(-10+5+5+5) 		= 55 (8'h37)
	#5; pitch_offset = -10;		// 50+(-10-10+5+5) 		= 40 (8'h28)
	#5; roll_offset = -10;		// 50+(-10-10-10+5) 	= 25 (8'h19)
	#5; yaw_offset = -10;		// 50+(-10-10-10-10) 	= 10 (8'h0a)

	#20 $finish;
	end

endmodule

