module throttle_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, led1, led2, led3, led4, led5, led6, led7, led8, throttle_offset, clk);
	output reg [7:0] motor_1_offset;
 	output reg [7:0] motor_2_offset;
 	output reg [7:0] motor_3_offset;
 	output reg [7:0] motor_4_offset;
 	output reg       led1;
 	output reg       led2;
 	output reg       led3;
 	output reg       led4;
 	output reg       led5;
 	output reg       led6;
 	output reg       led7;
 	output reg       led8;
 	input [7:0] 	 throttle_offset;
 	input            clk;
  
 	always@ (posedge clk) 
 	  begin
 		if (throttle_offset <= 2) 
 		  begin
 			led1 <= 1;
 			led2 <= 1;
 			led3 <= 1;
 			led4 <= 1;
 			led5 <= 1;
 			led6 <= 1;
 			led7 <= 1;
 			led8 <= 1;
 			motor_1_offset <= throttle_offset;
 			motor_2_offset <= throttle_offset;
 			motor_3_offset <= throttle_offset;
 			motor_4_offset <= throttle_offset;
 		  end
		else if (throttle_offset > 2 && throttle_offset <= 10) 
 		  begin
 			led1 <= 1;
 			led2 <= 1;
 			led3 <= 1;
 			led4 <= 1;
 			led5 <= 1;
 			led6 <= 1;
 			led7 <= 1;
 			led8 <= 0;
 			motor_1_offset <= throttle_offset+2;
 			motor_2_offset <= throttle_offset+8;
 			motor_3_offset <= throttle_offset+6;
 			motor_4_offset <= throttle_offset+7;
 		  end
 		else if (throttle_offset > 10 && throttle_offset <= 20)
		  begin
    		led1 <= 1;
			led2 <= 1;
			led3 <= 1;
			led4 <= 1;
			led5 <= 1;
			led6 <= 1;
			led7 <= 0;
			led8 <= 0;
			motor_1_offset <= throttle_offset+8;
			motor_2_offset <= throttle_offset+12;
			motor_3_offset <= throttle_offset+6;
			motor_4_offset <= throttle_offset+7;
		  end
		else if (throttle_offset > 20 && throttle_offset <= 30)
		  begin
			led1 <= 1;
			led2 <= 1;
			led3 <= 1;
			led4 <= 1;
			led5 <= 1;
			led6 <= 0;
			led7 <= 0;
			led8 <= 0;
			motor_1_offset <= throttle_offset+13;
			motor_2_offset <= throttle_offset+16;
			motor_3_offset <= throttle_offset+14;
			motor_4_offset <= throttle_offset+15;
		  end
		else if (throttle_offset > 30)
		  begin
			led1 <= 1;
			led2 <= 1;
			led3 <= 1;
			led4 <= 1;
			led5 <= 0;
			led6 <= 0;
			led7 <= 0;
			led8 <= 0;
			motor_1_offset <= throttle_offset+20;
			motor_2_offset <= throttle_offset+25;
			motor_3_offset <= throttle_offset+22;
			motor_4_offset <= throttle_offset+23;
		  end
	  end 
endmodule

module pitch_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, pitch_offset, throttle_offset, clk);
	output reg [7:0] motor_1_offset;
	output reg [7:0] motor_2_offset;
	output reg [7:0] motor_3_offset;
	output reg [7:0] motor_4_offset;
	input [7:0] 	 pitch_offset;
	input [7:0] 	 throttle_offset;
	input            clk;
   
    always@ (posedge clk) 
	  begin
	    if (throttle_offset > 5 && throttle_offset <= 10) 
		  begin
		    if (pitch_offset <= 5)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 10;
			    motor_3_offset <= 0;
			    motor_4_offset <= 12;
			  end
		    else if (pitch_offset > 5 && pitch_offset <= 10)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 8;
			    motor_3_offset <= 0;
			    motor_4_offset <= 9;
			  end
		    else if (pitch_offset > 10 && pitch_offset <= 15)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 4;
			    motor_3_offset <= 0;
			    motor_4_offset <= 6;
			  end
		    else if (pitch_offset > 15 && pitch_offset <= 18)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 2;
			    motor_3_offset <= 0;
			    motor_4_offset <= 3;
			  end
		    else if (pitch_offset > 18 && pitch_offset <= 22)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (pitch_offset > 22 && pitch_offset <= 25)
			  begin
			    motor_1_offset <= 3;
			    motor_2_offset <= -1;
			    motor_3_offset <= 3;
			    motor_4_offset <= -1;
			  end
		    else if (pitch_offset > 25 && pitch_offset <= 30)
			  begin
			    motor_1_offset <= 6;
			    motor_2_offset <= -2;
			    motor_3_offset <= 5;
			    motor_4_offset <= -2;
			  end
		    else if (pitch_offset > 30 && pitch_offset <= 35)
			  begin
			    motor_1_offset <= 9;
			    motor_2_offset <= -3;
			    motor_3_offset <= 7;
			    motor_4_offset <= -3;
			  end
		    else if (pitch_offset > 35 && pitch_offset <= 38)
			  begin
			    motor_1_offset <= 12;
			    motor_2_offset <= -4;
			    motor_3_offset <= 9;
			    motor_4_offset <= -4;
			  end
		    else if (pitch_offset > 38)
			  begin
			    motor_1_offset <= 15;
			    motor_2_offset <= -5;
			    motor_3_offset <= 11;
			    motor_4_offset <= -6;
			  end
		  end 
		else if (throttle_offset > 10 && throttle_offset <= 30) 
		  begin
		    if (pitch_offset <= 5)
			  begin
			    motor_1_offset <= -5;
			    motor_2_offset <= 4;
			    motor_3_offset <= -6;
			    motor_4_offset <= 4;
			  end
		    else if (pitch_offset > 5 && pitch_offset <= 10)
			  begin
			    motor_1_offset <= -3;
			    motor_2_offset <= 3;
			    motor_3_offset <= -4;
			    motor_4_offset <= 3;
			  end
		    else if (pitch_offset > 10 && pitch_offset <= 15)
			  begin
			    motor_1_offset <= -2;
			    motor_2_offset <= 2;
			    motor_3_offset <= -2;
			    motor_4_offset <= 2;
			  end
		    else if (pitch_offset > 15 && pitch_offset <= 18)
			  begin
			    motor_1_offset <= -1;
			    motor_2_offset <= 1;
			    motor_3_offset <= -1;
			    motor_4_offset <= 1;
			  end
		    else if (pitch_offset > 18 && pitch_offset <= 22)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (pitch_offset > 22 && pitch_offset <= 25)
			  begin
			    motor_1_offset <= 1;
			    motor_2_offset <= -1;
			    motor_3_offset <= 1;
			    motor_4_offset <= -1;
			  end
		    else if (pitch_offset > 25 && pitch_offset <= 30)
			  begin
			    motor_1_offset <= 2;
			    motor_2_offset <= -2;
			    motor_3_offset <= 2;
			    motor_4_offset <= -2;
			  end
		    else if (pitch_offset > 30 && pitch_offset <= 35)
			  begin
			    motor_1_offset <= 3;
			    motor_2_offset <= -4;
			    motor_3_offset <= 4;
			    motor_4_offset <= -4;
			  end
		    else if (pitch_offset > 35 && pitch_offset <= 38)
			  begin
			    motor_1_offset <= 4;
			    motor_2_offset <= -5;
			    motor_3_offset <= 6;
			    motor_4_offset <= -7;
			  end
		    else if (pitch_offset > 38)
			  begin
			    motor_1_offset <= 5;
			    motor_2_offset <= -7;
			    motor_3_offset <= 8;
			    motor_4_offset <= -10;
			  end
		  end 
		else if (throttle_offset > 30) 
		  begin
		    if (pitch_offset <= 5)
			  begin
			    motor_1_offset <= -8;
			    motor_2_offset <= 0;
			    motor_3_offset <= -8;
			    motor_4_offset <= 0;
			  end
		    else if (pitch_offset > 5 && pitch_offset <= 10)
			  begin
			    motor_1_offset <= -6;
			    motor_2_offset <= 0;
			    motor_3_offset <= -6;
			    motor_4_offset <= 0;
			  end
		    else if (pitch_offset > 10 && pitch_offset <= 15)
			  begin
			    motor_1_offset <= -4;
			    motor_2_offset <= 0;
			    motor_3_offset <= -4;
			    motor_4_offset <= 0;
			  end
		    else if (pitch_offset > 15 && pitch_offset <= 18)
			  begin
			    motor_1_offset <= -2;
			    motor_2_offset <= 0;
			    motor_3_offset <= -2;
			    motor_4_offset <= 0;
			  end
		    else if (pitch_offset > 18 && pitch_offset <= 22)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (pitch_offset > 22 && pitch_offset <= 25)
			  begin
			    motor_1_offset <= 1;
			    motor_2_offset <= -1;
			    motor_3_offset <= 1;
			    motor_4_offset <= -1;
			  end
		    else if (pitch_offset > 25 && pitch_offset <= 30)
			  begin
			    motor_1_offset <= 2;
			    motor_2_offset <= -2;
			    motor_3_offset <= 2;
			    motor_4_offset <= -2;
			  end
		    else if (pitch_offset > 30 && pitch_offset <= 35)
			  begin
			    motor_1_offset <= 3;
			    motor_2_offset <= -4;
			    motor_3_offset <= 3;
			    motor_4_offset <= -4;
			  end
		    else if (pitch_offset > 35 && pitch_offset <= 38)
			  begin
			    motor_1_offset <= 5;
			    motor_2_offset <= -6;
			    motor_3_offset <= 4;
			    motor_4_offset <= -6;
			  end
		    else if (pitch_offset > 38)
			  begin
			    motor_1_offset <= 7;
			    motor_2_offset <= -8;
			    motor_3_offset <= 5;
			    motor_4_offset <= -8;
			  end
		  end 
	  end		  
endmodule

module roll_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, roll_offset, throttle_offset, clk);
	output reg [7:0] motor_1_offset;
	output reg [7:0] motor_2_offset;
	output reg [7:0] motor_3_offset;
	output reg [7:0] motor_4_offset;
	input [7:0] 	 roll_offset;
	input [7:0] 	 throttle_offset;
	input            clk;
   
    always@ (posedge clk )
	  begin
	    if (throttle_offset > 5 && throttle_offset <= 10) 
		  begin
		    if (roll_offset <= 5)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 11;
			    motor_3_offset <= 10;
			    motor_4_offset <= 0;
			  end
		    else if (roll_offset > 5 && roll_offset <= 10)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 8;
			    motor_3_offset <= 7;
			    motor_4_offset <= 0;
			  end
		    else if (roll_offset > 10 && roll_offset <= 15)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 6;
			    motor_3_offset <= 5;
			    motor_4_offset <= 0;
			  end
		    else if (roll_offset > 15 && roll_offset <= 18)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 3;
			    motor_3_offset <= 2;
			    motor_4_offset <= 0;
			  end
		    else if (roll_offset > 18 && roll_offset <= 22)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (roll_offset > 22 && roll_offset <= 25)
			  begin
			    motor_1_offset <= 3;
			    motor_2_offset <= 0;
			    motor_3_offset <= -1;
			    motor_4_offset <= 2;
			  end
		    else if (roll_offset > 25 && roll_offset <= 30)
			  begin
			    motor_1_offset <= 6;
			    motor_2_offset <= -1;
			    motor_3_offset <= -2;
			    motor_4_offset <= 4;
			  end
		    else if (roll_offset > 30 && roll_offset <= 35)
			  begin
			    motor_1_offset <= 9;
			    motor_2_offset <= -2;
			    motor_3_offset <= -3;
			    motor_4_offset <= 7;
			  end
		    else if (roll_offset > 35 && roll_offset <= 38)
			  begin
			    motor_1_offset <= 12;
			    motor_2_offset <= -3;
			    motor_3_offset <= -4;
			    motor_4_offset <= 10;
			  end
		    else if (roll_offset > 38)
			  begin
			    motor_1_offset <= 15;
			    motor_2_offset <= -4;
			    motor_3_offset <= -5;
			    motor_4_offset <= 12;
			  end
		  end
		else if (throttle_offset > 10 && throttle_offset <= 30) 
		  begin
		    if (roll_offset <= 5)
			  begin
			    motor_1_offset <= -5;
			    motor_2_offset <= 5;
			    motor_3_offset <= 5;
			    motor_4_offset <= -5;
			  end
		    else if (roll_offset > 5 && roll_offset <= 10)
			  begin
			    motor_1_offset <= -4;
			    motor_2_offset <= 4;
			    motor_3_offset <= 4;
			    motor_4_offset <= -4;
			  end
		    else if (roll_offset > 10 && roll_offset <= 15)
			  begin
			    motor_1_offset <= -2;
			    motor_2_offset <= 2;
			    motor_3_offset <= 2;
			    motor_4_offset <= -2;
			  end
		    else if (roll_offset > 15 && roll_offset <= 18)
			  begin
			    motor_1_offset <= -1;
			    motor_2_offset <= 1;
			    motor_3_offset <= 1;
			    motor_4_offset <= -1;
			  end
		    else if (roll_offset > 18 && roll_offset <= 22)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (roll_offset > 22 && roll_offset <= 25)
			  begin
			    motor_1_offset <= 1;
			    motor_2_offset <= -1;
			    motor_3_offset <= -1;
			    motor_4_offset <= 1;
			  end
		    else if (roll_offset > 25 && roll_offset <= 30)
			  begin
			    motor_1_offset <= 2;
			    motor_2_offset <= -2;
			    motor_3_offset <= -2;
			    motor_4_offset <= 2;
			  end
		    else if (roll_offset > 30 && roll_offset <= 35)
			  begin
			    motor_1_offset <= 3;
			    motor_2_offset <= -4;
			    motor_3_offset <= -4;
			    motor_4_offset <= 4;
			  end
		    else if (roll_offset > 35 && roll_offset <= 38)
			  begin
			    motor_1_offset <= 4;
			    motor_2_offset <= -6;
			    motor_3_offset <= -6;
			    motor_4_offset <= 5;
			  end
		    else if (roll_offset > 38)
			  begin
			    motor_1_offset <= 5;
			    motor_2_offset <= -8;
			    motor_3_offset <= -8;
			    motor_4_offset <= 7;
			  end
		  end
		else if (throttle_offset > 30) 
		  begin
		    if (roll_offset <= 5)
			  begin
			    motor_1_offset <= -10;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= -10;
			  end
		    else if (roll_offset > 5 && roll_offset <= 10)
			  begin
			    motor_1_offset <= -7;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= -7;
			  end
		    else if (roll_offset > 10 && roll_offset <= 15)
			  begin
			    motor_1_offset <= -5;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= -5;
			  end
		    else if (roll_offset > 15 && roll_offset <= 18)
			  begin
			    motor_1_offset <= -2;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= -2;
			  end
		    else if (roll_offset > 18 && roll_offset <= 22)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (roll_offset > 22 && roll_offset <= 25)
			  begin
			    motor_1_offset <= 1;
			    motor_2_offset <= -2;
			    motor_3_offset <= -2;
			    motor_4_offset <= 1;
			  end
		    else if (roll_offset > 25 && roll_offset <= 30)
			  begin
			    motor_1_offset <= 1;
			    motor_2_offset <= -4;
			    motor_3_offset <= -4;
			    motor_4_offset <= 1;
			  end
		    else if (roll_offset > 30 && roll_offset <= 35)
			  begin
			    motor_1_offset <= 2;
			    motor_2_offset <= -6;
			    motor_3_offset <= -6;
			    motor_4_offset <= 2;
			  end
		    else if (roll_offset > 35 && roll_offset <= 38)
			  begin
			    motor_1_offset <= 3;
			    motor_2_offset <= -8;
			    motor_3_offset <= -8;
			    motor_4_offset <= 3;
			  end
		    else if (roll_offset > 38)
			  begin
			    motor_1_offset <= 4;
			    motor_2_offset <= -10;
			    motor_3_offset <= -10;
			    motor_4_offset <= 4;
			  end
		  end
      end
endmodule

module yaw_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, yaw_offset, throttle_offset, clk);
	output reg [7:0] motor_1_offset;
	output reg [7:0] motor_2_offset;
	output reg [7:0] motor_3_offset;
	output reg [7:0] motor_4_offset;
	input [7:0] 	 yaw_offset;
	input [7:0] 	 throttle_offset;
	input            clk;
   
    always@ (posedge clk )
      begin
      if (throttle_offset > 5 && throttle_offset <= 10) 
		  begin
		    if (yaw_offset <= 5)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -2;
			    motor_3_offset <= 15;
			    motor_4_offset <= 12;
			  end
		    else if (yaw_offset > 5 && yaw_offset <= 10)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -1;
			    motor_3_offset <= 12;
			    motor_4_offset <= 8;
			  end
		    else if (yaw_offset > 10 && yaw_offset <= 15)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= 8;
			    motor_4_offset <= 6;
			  end
		    else if (yaw_offset > 15 && yaw_offset <= 18)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= 4;
			    motor_4_offset <= 2;
			  end
		    else if (yaw_offset > 18 && yaw_offset <= 22)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (yaw_offset > 22 && yaw_offset <= 25)
			  begin
			    motor_1_offset <= 3;
			    motor_2_offset <= 2;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (yaw_offset > 25 && yaw_offset <= 30)
			  begin
			    motor_1_offset <= 6;
			    motor_2_offset <= 4;
			    motor_3_offset <= -1;
			    motor_4_offset <= 0;
			  end
		    else if (yaw_offset > 30 && yaw_offset <= 35)
			  begin
			    motor_1_offset <= 9;
			    motor_2_offset <= 8;
			    motor_3_offset <= -2;
			    motor_4_offset <= 1;
			  end
		    else if (yaw_offset > 35 && yaw_offset <= 38)
			  begin
			    motor_1_offset <= 13;
			    motor_2_offset <= 10;
			    motor_3_offset <= -3;
			    motor_4_offset <= 2;
			  end
		    else if (yaw_offset > 38)
			  begin
			    motor_1_offset <= 17;
			    motor_2_offset <= 14;
			    motor_3_offset <= -4;
			    motor_4_offset <= 3;
			  end
		  end
		else if (throttle_offset > 10 && throttle_offset <= 30) 
		  begin
		    if (yaw_offset <= 5)
			  begin
			    motor_1_offset <= -15;
			    motor_2_offset <= -15;
			    motor_3_offset <= 15;
			    motor_4_offset <= 10;
			  end
		    else if (yaw_offset > 5 && yaw_offset <= 10)
			  begin
			    motor_1_offset <= -12;
			    motor_2_offset <= -12;
			    motor_3_offset <= 12;
			    motor_4_offset <= 8;
			  end
		    else if (yaw_offset > 10 && yaw_offset <= 15)
			  begin
			    motor_1_offset <= -8;
			    motor_2_offset <= -8;
			    motor_3_offset <= 8;
			    motor_4_offset <= 5;
			  end
		    else if (yaw_offset > 15 && yaw_offset <= 18)
			  begin
			    motor_1_offset <= -5;
			    motor_2_offset <= -5;
			    motor_3_offset <= 5;
			    motor_4_offset <= 2;
			  end
		    else if (yaw_offset > 18 && yaw_offset <= 22)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (yaw_offset > 22 && yaw_offset <= 25)
			  begin
			    motor_1_offset <= 2;
			    motor_2_offset <= 2;
			    motor_3_offset <= -2;
			    motor_4_offset <= -2;
			  end
		    else if (yaw_offset > 25 && yaw_offset <= 30)
			  begin
			    motor_1_offset <= 4;
			    motor_2_offset <= 4;
			    motor_3_offset <= -4;
			    motor_4_offset <= -4;
			  end
		    else if (yaw_offset > 30 && yaw_offset <= 35)
			  begin
			    motor_1_offset <= 6;
			    motor_2_offset <= 6;
			    motor_3_offset <= -8;
			    motor_4_offset <= -8;
			  end
		    else if (yaw_offset > 35 && yaw_offset <= 38)
			  begin
			    motor_1_offset <= 8;
			    motor_2_offset <= 8;
			    motor_3_offset <= -12;
			    motor_4_offset <= -12;
			  end
		    else if (yaw_offset > 38)
			  begin
			    motor_1_offset <= 10;
			    motor_2_offset <= 10;
			    motor_3_offset <= -15;
			    motor_4_offset <= -15;
			  end
		  end
		else if (throttle_offset > 30) 
		  begin
		    if (yaw_offset <= 5)
			  begin
			    motor_1_offset <= -20;
			    motor_2_offset <= -20;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (yaw_offset > 5 && yaw_offset <= 10)
			  begin
			    motor_1_offset <= -15;
			    motor_2_offset <= -15;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (yaw_offset > 10 && yaw_offset <= 15)
			  begin
			    motor_1_offset <= -10;
			    motor_2_offset <= -10;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (yaw_offset > 15 && yaw_offset <= 18)
			  begin
			    motor_1_offset <= -5;
			    motor_2_offset <= -5;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (yaw_offset > 18 && yaw_offset <= 22)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (yaw_offset > 22 && yaw_offset <= 25)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= -4;
			    motor_4_offset <= -4;
			  end
		    else if (yaw_offset > 25 && yaw_offset <= 30)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= -8;
			    motor_4_offset <= -8;
			  end
		    else if (yaw_offset > 30 && yaw_offset <= 35)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= -12;
			    motor_4_offset <= -12;
			  end
		    else if (yaw_offset > 35 && yaw_offset <= 38)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= -16;
			    motor_4_offset <= -16;
			  end
		    else if (yaw_offset > 38)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= -20;
			    motor_4_offset <= -20;
			  end
		  end
      end  
endmodule