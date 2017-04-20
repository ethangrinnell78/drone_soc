module test_pitch_offset_gen;

wire [7:0] motor_1_offset;
wire [7:0] motor_2_offset;
wire [7:0] motor_3_offset;
wire [7:0] motor_4_offset;

reg [7:0] pitch_rec_val;

pitch_offset_gen U1(.pitch_rec_val(pitch_rec_val), .motor_1_offset(motor_1_offset), .motor_2_offset(motor_2_offset), .motor_3_offset(motor_3_offset), .motor_4_offset(motor_4_offset));

initial 
	begin 
	   pitch_rec_val = 0;
	#1 pitch_rec_val = 1;
	#1 pitch_rec_val = 2;
	#1 pitch_rec_val = 3;
	#1 pitch_rec_val = 4;
	#1 pitch_rec_val = 5;
	#1 pitch_rec_val = 6;
	#1 pitch_rec_val = 7;
	#1 pitch_rec_val = 8;
	#1 pitch_rec_val = 9;
	#1 pitch_rec_val = 10;

	#1 pitch_rec_val = 11;
	#1 pitch_rec_val = 12;
	#1 pitch_rec_val = 13;
	#1 pitch_rec_val = 14;
	#1 pitch_rec_val = 15;
	#1 pitch_rec_val = 16;
	#1 pitch_rec_val = 17;
	#1 pitch_rec_val = 18;
	#1 pitch_rec_val = 19;
	#1 pitch_rec_val = 20;
	
	#1 pitch_rec_val = 21;
	#1 pitch_rec_val = 22;
	#1 pitch_rec_val = 23;
	#1 pitch_rec_val = 24;
	#1 pitch_rec_val = 25;
	#1 pitch_rec_val = 26;
	#1 pitch_rec_val = 27;
	#1 pitch_rec_val = 28;
	#1 pitch_rec_val = 29;
	#1 pitch_rec_val = 30;
	
	#1 pitch_rec_val = 31;
	#1 pitch_rec_val = 32;
	#1 pitch_rec_val = 33;
	#1 pitch_rec_val = 34;
	#1 pitch_rec_val = 35;
	#1 pitch_rec_val = 36;
	#1 pitch_rec_val = 37;
	#1 pitch_rec_val = 38;
	#1 pitch_rec_val = 39;
	#1 pitch_rec_val = 40;
	
	#20 $finish;
	end

endmodule
