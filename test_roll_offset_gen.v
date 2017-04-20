module test_roll_offset_gen;

wire [7:0] motor_1_offset;
wire [7:0] motor_2_offset;
wire [7:0] motor_3_offset;
wire [7:0] motor_4_offset;

reg [7:0] roll_rec_val;

roll_offset_gen U1(.roll_rec_val(roll_rec_val), .motor_1_offset(motor_1_offset), .motor_2_offset(motor_2_offset), .motor_3_offset(motor_3_offset), .motor_4_offset(motor_4_offset));

initial 
	begin 
	   roll_rec_val = 0;
	#1 roll_rec_val = 1;
	#1 roll_rec_val = 2;
	#1 roll_rec_val = 3;
	#1 roll_rec_val = 4;
	#1 roll_rec_val = 5;
	#1 roll_rec_val = 6;
	#1 roll_rec_val = 7;
	#1 roll_rec_val = 8;
	#1 roll_rec_val = 9;
	#1 roll_rec_val = 10;

	#1 roll_rec_val = 11;
	#1 roll_rec_val = 12;
	#1 roll_rec_val = 13;
	#1 roll_rec_val = 14;
	#1 roll_rec_val = 15;
	#1 roll_rec_val = 16;
	#1 roll_rec_val = 17;
	#1 roll_rec_val = 18;
	#1 roll_rec_val = 19;
	#1 roll_rec_val = 20;
	
	#1 roll_rec_val = 21;
	#1 roll_rec_val = 22;
	#1 roll_rec_val = 23;
	#1 roll_rec_val = 24;
	#1 roll_rec_val = 25;
	#1 roll_rec_val = 26;
	#1 roll_rec_val = 27;
	#1 roll_rec_val = 28;
	#1 roll_rec_val = 29;
	#1 roll_rec_val = 30;
	
	#1 roll_rec_val = 31;
	#1 roll_rec_val = 32;
	#1 roll_rec_val = 33;
	#1 roll_rec_val = 34;
	#1 roll_rec_val = 35;
	#1 roll_rec_val = 36;
	#1 roll_rec_val = 37;
	#1 roll_rec_val = 38;
	#1 roll_rec_val = 39;
	#1 roll_rec_val = 40;
	
	#20 $finish;
	end

endmodule
