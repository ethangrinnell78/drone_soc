module throttle_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, led1, led2, led3, led4, led5, led6, led7, led8, throttle_offset, switch_state, clk);
	output reg [10:0] motor_1_offset;
 	output reg [10:0] motor_2_offset;
 	output reg [10:0] motor_3_offset;
 	output reg [10:0] motor_4_offset;
 	output reg       led1;
 	output reg       led2;
 	output reg       led3;
 	output reg       led4;
 	output reg       led5;
 	output reg       led6;
 	output reg       led7;
 	output reg       led8;
 	input [7:0] 	 throttle_offset;
	input [7:0]      switch_state;
 	input            clk;
 
 	parameter OFFSET = 100;
	
	always@ (posedge clk) 
 	  begin
		if (switch_state < 25)
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
 			      motor_1_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset;
 			      motor_2_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset;
 			      motor_3_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset;
 			      motor_4_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset;
 		      end
		    else if (throttle_offset > 2 && throttle_offset <= 5) 
 		      begin
 			      led1 <= 1;
 			      led2 <= 1;
 			      led3 <= 1;
 			      led4 <= 1;
 			      led5 <= 1;
 			      led6 <= 1;
 			      led7 <= 1;
 			      led8 <= 0;
 			      motor_1_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_2_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_3_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_4_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 		      end
 		    else if (throttle_offset > 5 && throttle_offset <= 10)
		      begin
        		led1 <= 1;
		    	  led2 <= 1;
		    	  led3 <= 1;
		    	  led4 <= 1;
		    	  led5 <= 1;
		    	  led6 <= 1;
		    	  led7 <= 0;
		    	  led8 <= 0;
		    	  motor_1_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_2_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_3_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_4_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
		      end
		    else if (throttle_offset > 10 && throttle_offset <= 15)
		      begin
		    	  led1 <= 1;
		    	  led2 <= 1;
		    	  led3 <= 1;
		    	  led4 <= 1;
		    	  led5 <= 1;
		    	  led6 <= 0;
		    	  led7 <= 0;
		    	  led8 <= 0;
		    	  motor_1_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_2_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_3_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_4_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
		      end
		    else if (throttle_offset > 15 && throttle_offset <= 20) 
 		      begin
 		    	  led1 <= 1;
 		    	  led2 <= 1;
 		    	  led3 <= 1;
 		    	  led4 <= 1;
 		    	  led5 <= 0;
 		    	  led6 <= 0;
 		    	  led7 <= 0;
 		    	  led8 <= 0;
 		    	  motor_1_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_2_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_3_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_4_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 		      end
 		    else if (throttle_offset > 20 && throttle_offset <= 25)
		      begin
        		led1 <= 1;
		    	  led2 <= 1;
		    	  led3 <= 1;
		    	  led4 <= 0;
		    	  led5 <= 0;
		    	  led6 <= 0;
		    	  led7 <= 0;
		    	  led8 <= 0;
		    	  motor_1_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_2_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_3_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_4_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
		      end
		    else if (throttle_offset > 25 && throttle_offset <= 30)
		      begin
		    	  led1 <= 1;
		    	  led2 <= 1;
		    	  led3 <= 0;
		    	  led4 <= 0;
		    	  led5 <= 0;
		    	  led6 <= 0;
		    	  led7 <= 0;
		    	  led8 <= 0;
		    	  motor_1_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_2_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_3_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_4_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
		      end
		    else if (throttle_offset > 30 && throttle_offset <= 35)
		      begin
		    	  led1 <= 1;
		    	  led2 <= 0;
		    	  led3 <= 0;
		    	  led4 <= 0;
		    	  led5 <= 0;
		    	  led6 <= 0;
		    	  led7 <= 0;
		    	  led8 <= 0;
		    	  motor_1_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_2_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_3_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_4_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
		      end
		    else if (throttle_offset > 35)
		      begin
		    	  led1 <= 0;
		    	  led2 <= 0;
		    	  led3 <= 0;
		    	  led4 <= 0;
		    	  led5 <= 0;
		    	  led6 <= 0;
		    	  led7 <= 0;
		    	  led8 <= 0;
		    	  motor_1_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_2_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_3_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
 			      motor_4_offset <= throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+throttle_offset+OFFSET;
		      end
		  end
		else if (switch_state >= 25)
		  begin
			led1 <= 0;
		    led2 <= 1;
		    led3 <= 0;
		    led4 <= 1;
		    led5 <= 0;
		    led6 <= 1;
		    led7 <= 0;
		    led8 <= 1;
			motor_1_offset <= -50;
			motor_2_offset <= -50;
			motor_3_offset <= -50;
			motor_4_offset <= -50;
		  end
	  end 
endmodule

module pitch_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, pitch_offset, throttle_offset, clk);
	output reg [10:0] motor_1_offset;
	output reg [10:0] motor_2_offset;
	output reg [10:0] motor_3_offset;
	output reg [10:0] motor_4_offset;
	input [7:0] 	   pitch_offset;
	input [7:0] 	   throttle_offset;
	input            clk;
   
    always@ (posedge clk) 
	  begin
	    if (throttle_offset > 5) 
		  begin
		    if (pitch_offset <= 2)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -50;
			    motor_3_offset <= 0;
			    motor_4_offset <= -50;
			  end
			  else if (pitch_offset > 2 && pitch_offset <= 4)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -45;
			    motor_3_offset <= 0;
			    motor_4_offset <= -45;
			  end
		      else if (pitch_offset > 4 && pitch_offset <= 6)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -40;
			    motor_3_offset <= 0;
			    motor_4_offset <= -40;
			  end
		      else if (pitch_offset > 6 && pitch_offset <= 8)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -35;
			    motor_3_offset <= 0;
			    motor_4_offset <= -35;
			  end
		      else if (pitch_offset > 8 && pitch_offset <= 10)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -30;
			    motor_3_offset <= 0;
			    motor_4_offset <= -30;
			  end
			  else if (pitch_offset > 10 && pitch_offset <= 12)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -25;
			    motor_3_offset <= 0;
			    motor_4_offset <= -25;
			  end
		      else if (pitch_offset > 12 && pitch_offset <= 14)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -20;
			    motor_3_offset <= 0;
			    motor_4_offset <= -20;
			  end
		      else if (pitch_offset > 14 && pitch_offset <= 16)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -15;
			    motor_3_offset <= 0;
			    motor_4_offset <= -15;
			  end
		      else if (pitch_offset > 16 && pitch_offset <= 18)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -10;
			    motor_3_offset <= 0;
			    motor_4_offset <= -10;
			  end
			  else if (pitch_offset == 19)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -5;
			    motor_3_offset <= 0;
			    motor_4_offset <= -5;
			  end
		      else if (pitch_offset == 20)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
			  else if (pitch_offset == 21)
			  begin
			    motor_1_offset <= -5;
			    motor_2_offset <= 0;
			    motor_3_offset <= -5;
			    motor_4_offset <= 0;
			  end
		    else if (pitch_offset > 21 && pitch_offset <= 24)
			  begin
			    motor_1_offset <= -10;
			    motor_2_offset <= 0;
			    motor_3_offset <= -10;
			    motor_4_offset <= 0;
			  end
		    else if (pitch_offset > 24 && pitch_offset <= 26)
			  begin
			    motor_1_offset <= -15;
			    motor_2_offset <= 0;
			    motor_3_offset <= -15;
			    motor_4_offset <= 0;
			  end
		    else if (pitch_offset > 26 && pitch_offset <= 28)
			  begin
			    motor_1_offset <= -20;
			    motor_2_offset <= 0;
			    motor_3_offset <= -20;
			    motor_4_offset <= 0;
			  end
		    else if (pitch_offset > 28 && pitch_offset <= 30)
			  begin
			    motor_1_offset <= -25;
			    motor_2_offset <= 0;
			    motor_3_offset <= -25;
			    motor_4_offset <= 0;
			  end
			else if (pitch_offset > 30 && pitch_offset <= 32)
			  begin
			    motor_1_offset <= -30;
			    motor_2_offset <= 0;
			    motor_3_offset <= -30;
			    motor_4_offset <= 0;
			  end
		    else if (pitch_offset > 32 && pitch_offset <= 34)
			  begin
			    motor_1_offset <= -35;
			    motor_2_offset <= 0;
			    motor_3_offset <= -35;
			    motor_4_offset <= 0;
			  end
		    else if (pitch_offset > 34 && pitch_offset <= 36)
			  begin
			    motor_1_offset <= -40;
			    motor_2_offset <= 0;
			    motor_3_offset <= -40;
			    motor_4_offset <= 0;
			  end
		    else if (pitch_offset > 36 && pitch_offset <= 38)
			  begin
			    motor_1_offset <= -45;
			    motor_2_offset <= 0;
			    motor_3_offset <= -45;
			    motor_4_offset <= 0;
			  end
		    else if (pitch_offset > 38)
			  begin
			    motor_1_offset <= -50;
			    motor_2_offset <= 0;
			    motor_3_offset <= -50;
			    motor_4_offset <= 0;
			  end
		  end 
	  end		  
endmodule

module roll_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, roll_offset, throttle_offset, clk);
	output reg [10:0] motor_1_offset;
	output reg [10:0] motor_2_offset;
	output reg [10:0] motor_3_offset;
	output reg [10:0] motor_4_offset;
	input [7:0] 	   roll_offset;
	input [7:0] 	   throttle_offset;
	input            clk;
   
    always@ (posedge clk )
	  begin
	    if (throttle_offset > 5) 
		  begin
		    if (roll_offset <= 2)
			  begin
			    motor_1_offset <= -50;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= -50;
			  end
			  else if (roll_offset > 2 && roll_offset <= 4)
			  begin
			    motor_1_offset <= -45;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= -45;
			  end
		    else if (roll_offset > 4 && roll_offset <= 6)
			  begin
			    motor_1_offset <= -40;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= -40;
			  end
		    else if (roll_offset > 6 && roll_offset <= 8)
			  begin
			    motor_1_offset <= -35;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= -35;
			  end
		    else if (roll_offset > 8 && roll_offset <= 10)
			  begin
			    motor_1_offset <= -30;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= -30;
			  end
		    else if (roll_offset > 10 && roll_offset <= 12)
			  begin
			    motor_1_offset <= -25;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= -25;
			  end
		    else if (roll_offset > 12 && roll_offset <= 14)
			  begin
			    motor_1_offset <= -20;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= -20;
			  end
		    else if (roll_offset > 14 && roll_offset <= 16)
			  begin
			    motor_1_offset <= -15;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= -15;
			  end
		    else if (roll_offset > 16 && roll_offset <= 18)
			  begin
			    motor_1_offset <= -10;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= -10;
			  end
			  else if (roll_offset == 19)
			  begin
			    motor_1_offset <= -5;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= -5;
			  end
			  else if (roll_offset == 20)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
			  else if (roll_offset == 21)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -5;
			    motor_3_offset <= -5;
			    motor_4_offset <= 0;
			  end
		    else if (roll_offset > 21 && roll_offset <= 24)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -10;
			    motor_3_offset <= -10;
			    motor_4_offset <= 0;
			  end
		    else if (roll_offset > 24 && roll_offset <= 26)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -15;
			    motor_3_offset <= -15;
			    motor_4_offset <= 0;
			  end
		    else if (roll_offset > 26 && roll_offset <= 28)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -20;
			    motor_3_offset <= -20;
			    motor_4_offset <= 0;
			  end
		    else if (roll_offset > 28 && roll_offset <= 30)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -25;
			    motor_3_offset <= -25;
			    motor_4_offset <= 0;
			  end
		    else if (roll_offset > 30 && roll_offset <= 32)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -30;
			    motor_3_offset <= -30;
			    motor_4_offset <= 0;
			  end
		    else if (roll_offset > 32 && roll_offset <= 34)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -35;
			    motor_3_offset <= -35;
			    motor_4_offset <= 0;
			  end
		    else if (roll_offset > 34 && roll_offset <= 36)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -40;
			    motor_3_offset <= -40;
			    motor_4_offset <= 0;
			  end
		    else if (roll_offset > 36 && roll_offset <= 38)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -45;
			    motor_3_offset <= -45;
			    motor_4_offset <= 0;
			  end
		    else if (roll_offset > 38)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= -50;
			    motor_3_offset <= -50;
			    motor_4_offset <= 0;
			  end
		  end
    end
endmodule

module yaw_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, yaw_offset, throttle_offset, clk);
	output reg [10:0] motor_1_offset;
	output reg [10:0] motor_2_offset;
	output reg [10:0] motor_3_offset;
	output reg [10:0] motor_4_offset;
	input [7:0] 	   yaw_offset;
	input [7:0] 	   throttle_offset;
	input            clk;
   
    always@ (posedge clk )
    begin
      if (throttle_offset > 5) 
		  begin
		    if (yaw_offset <= 2)
			  begin
			    motor_1_offset <= -50;
			    motor_2_offset <= -50;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
			  else if (yaw_offset > 2 && yaw_offset <= 4)
			  begin
			    motor_1_offset <= -45;
			    motor_2_offset <= -45;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (yaw_offset > 4 && yaw_offset <= 6)
			  begin
			    motor_1_offset <= -40;
			    motor_2_offset <= -40;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (yaw_offset > 6 && yaw_offset <= 8)
			  begin
			    motor_1_offset <= -35;
			    motor_2_offset <= -35;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (yaw_offset > 8 && yaw_offset <= 10)
			  begin
			    motor_1_offset <= -30;
			    motor_2_offset <= -30;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
			  else if (yaw_offset > 10 && yaw_offset <= 12)
			  begin
			    motor_1_offset <= -25;
			    motor_2_offset <= -25;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
			  else if (yaw_offset > 12 && yaw_offset <= 14)
			  begin
			    motor_1_offset <= -20;
			    motor_2_offset <= -20;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (yaw_offset > 14 && yaw_offset <= 16)
			  begin
			    motor_1_offset <= -15;
			    motor_2_offset <= -15;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (yaw_offset > 16 && yaw_offset <= 18)
			  begin
			    motor_1_offset <= -10;
			    motor_2_offset <= -10;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (yaw_offset == 19)
			  begin
			    motor_1_offset <= -5;
			    motor_2_offset <= -5;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (yaw_offset == 20)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= 0;
			    motor_4_offset <= 0;
			  end
		    else if (yaw_offset == 21)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= -5;
			    motor_4_offset <= -5;
			  end
		    else if (yaw_offset > 21 && yaw_offset <= 24)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= -10;
			    motor_4_offset <= -10;
			  end
		    else if (yaw_offset > 24 && yaw_offset <= 26)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= -15;
			    motor_4_offset <= -15;
			  end
		    else if (yaw_offset > 26 && yaw_offset <= 28)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= -20;
			    motor_4_offset <= -20;
			  end
			  else if (yaw_offset > 28 && yaw_offset <= 30)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= -25;
			    motor_4_offset <= -25;
			  end
		    else if (yaw_offset > 30 && yaw_offset <= 32)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= -30;
			    motor_4_offset <= -30;
			  end
		    else if (yaw_offset > 32 && yaw_offset <= 34)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= -35;
			    motor_4_offset <= -35;
			  end
			  else if (yaw_offset > 34 && yaw_offset <= 36)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= -40;
			    motor_4_offset <= -40;
			  end
		    else if (yaw_offset > 36 && yaw_offset <= 38)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= -45;
			    motor_4_offset <= -45;
			  end
		    else if (yaw_offset > 38)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_3_offset <= -50;
			    motor_4_offset <= -50;
			  end
		  end
    end  
endmodule