module throttle_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, led1, led2, led3, led4, led5, led6, led7, led8, throttle_offset, switch_state, clk);
	output reg [10:0] motor_1_offset;
 	output reg [10:0] motor_2_offset;
 	output reg [10:0] motor_3_offset;
 	output reg [10:0] motor_4_offset;
 	output reg        led1;
 	output reg        led2;
 	output reg        led3;
 	output reg        led4;
 	output reg        led5;
 	output reg        led6;
 	output reg        led7;
 	output reg        led8;
 	input [9:0] 	  throttle_offset;
	input [9:0]       switch_state;
 	input             clk;
 
 	parameter OFFSET1 = 100;            // motor 1 offset 95
	parameter OFFSET2 = 100;            // motor 2 offset 95
	parameter OFFSET3 = 80;            // motor 3 offset 80
	parameter OFFSET4 = 80;            // motor 4 offset 75
	parameter STEP1 = 5;
	parameter STEP2 = 5;
	parameter STEP3 = 5;
	parameter STEP4 = 5;
	
	always@ (posedge clk) 
 	  begin
		if (switch_state < 250) 
	      begin
 		    if (throttle_offset <= 20) 
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
		    else if (throttle_offset > 20 && throttle_offset <= 50) 
 		      begin
 			      led1 <= 1;
 			      led2 <= 1;
 			      led3 <= 1;
 			      led4 <= 1;
 			      led5 <= 1;
 			      led6 <= 1;
 			      led7 <= 1;
 			      led8 <= 0;
 			      motor_1_offset <= throttle_offset+OFFSET1;
 			      motor_2_offset <= throttle_offset+OFFSET2;
 			      motor_3_offset <= throttle_offset+OFFSET3;
 			      motor_4_offset <= throttle_offset+OFFSET4;
 		      end
 		    else if (throttle_offset > 50 && throttle_offset <= 100)
		      begin
        		led1 <= 1;
		    	  led2 <= 1;
		    	  led3 <= 1;
		    	  led4 <= 1;
		    	  led5 <= 1;
		    	  led6 <= 1;
		    	  led7 <= 0;
		    	  led8 <= 0;
		    	  motor_1_offset <= throttle_offset+OFFSET1;
 			      motor_2_offset <= throttle_offset+OFFSET2;
 			      motor_3_offset <= throttle_offset+OFFSET3;
 			      motor_4_offset <= throttle_offset+OFFSET4;
		      end
		    else if (throttle_offset > 100 && throttle_offset <= 150)
		      begin
		    	  led1 <= 1;
		    	  led2 <= 1;
		    	  led3 <= 1;
		    	  led4 <= 1;
		    	  led5 <= 1;
		    	  led6 <= 0;
		    	  led7 <= 0;
		    	  led8 <= 0;
		    	  motor_1_offset <= throttle_offset+OFFSET1+STEP1;
 			      motor_2_offset <= throttle_offset+OFFSET2+STEP2;
 			      motor_3_offset <= throttle_offset+OFFSET3+STEP3;
 			      motor_4_offset <= throttle_offset+OFFSET4+STEP4;
		      end
		    else if (throttle_offset > 150 && throttle_offset <= 200) 
 		      begin
 		    	  led1 <= 1;
 		    	  led2 <= 1;
 		    	  led3 <= 1;
 		    	  led4 <= 1;
 		    	  led5 <= 0;
 		    	  led6 <= 0;
 		    	  led7 <= 0;
 		    	  led8 <= 0;
 		    	  motor_1_offset <= throttle_offset+OFFSET1+STEP1;
 			      motor_2_offset <= throttle_offset+OFFSET2+STEP2;
 			      motor_3_offset <= throttle_offset+OFFSET3+STEP3;
 			      motor_4_offset <= throttle_offset+OFFSET4+STEP4;
 		      end
 		    else if (throttle_offset > 200 && throttle_offset <= 250)
		      begin
        		led1 <= 1;
		    	  led2 <= 1;
		    	  led3 <= 1;
		    	  led4 <= 0;
		    	  led5 <= 0;
		    	  led6 <= 0;
		    	  led7 <= 0;
		    	  led8 <= 0;
		    	  motor_1_offset <= throttle_offset+OFFSET1+STEP1+STEP1;
 			      motor_2_offset <= throttle_offset+OFFSET2+STEP2+STEP2;
 			      motor_3_offset <= throttle_offset+OFFSET3+STEP3+STEP3;
 			      motor_4_offset <= throttle_offset+OFFSET4+STEP4+STEP4;
		      end
		    else if (throttle_offset > 250 && throttle_offset <= 300)
		      begin
		    	  led1 <= 1;
		    	  led2 <= 1;
		    	  led3 <= 0;
		    	  led4 <= 0;
		    	  led5 <= 0;
		    	  led6 <= 0;
		    	  led7 <= 0;
		    	  led8 <= 0;
		    	  motor_1_offset <= throttle_offset+OFFSET1+STEP1+STEP1;
 			      motor_2_offset <= throttle_offset+OFFSET2+STEP2+STEP2;
 			      motor_3_offset <= throttle_offset+OFFSET3+STEP3+STEP3;
 			      motor_4_offset <= throttle_offset+OFFSET4+STEP4+STEP4;
		      end
		    else if (throttle_offset > 300 && throttle_offset <= 350)
		      begin
		    	  led1 <= 1;
		    	  led2 <= 0;
		    	  led3 <= 0;
		    	  led4 <= 0;
		    	  led5 <= 0;
		    	  led6 <= 0;
		    	  led7 <= 0;
		    	  led8 <= 0;
		    	  motor_1_offset <= throttle_offset+OFFSET1+STEP1+STEP1+STEP1;
 			      motor_2_offset <= throttle_offset+OFFSET2+STEP2+STEP2+STEP2;
 			      motor_3_offset <= throttle_offset+OFFSET3+STEP3+STEP3+STEP3;
 			      motor_4_offset <= throttle_offset+OFFSET4+STEP4+STEP4+STEP4;
		      end
		    else if (throttle_offset > 350)
		      begin
		    	  led1 <= 0;
		    	  led2 <= 0;
		    	  led3 <= 0;
		    	  led4 <= 0;
		    	  led5 <= 0;
		    	  led6 <= 0;
		    	  led7 <= 0;
		    	  led8 <= 0;
		    	  motor_1_offset <= throttle_offset+OFFSET1+STEP1+STEP1+STEP1;
 			      motor_2_offset <= throttle_offset+OFFSET2+STEP2+STEP2+STEP2;
 			      motor_3_offset <= throttle_offset+OFFSET3+STEP3+STEP3+STEP3;
 			      motor_4_offset <= throttle_offset+OFFSET4+STEP4+STEP4+STEP4;
		      end
		  end
		else if (switch_state >= 250)
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
	input [9:0] 	  pitch_offset;
	input [9:0] 	  throttle_offset;
	input             clk;
   
    parameter PITCH_MAX = 100;         // maximum pitch value to decrement off motors by at max throttle
	parameter MAX_STEP = 10;           // step to decrease maximum decrement by ( PITCH_MAX / MAX_STEP must be = 10! )
	parameter PITCH_MIN = 10;           // minimum pitch value to increment on motors by at min throttle
	parameter MIN_STEP = 10;            // step to increment up from minimum ( PITCH_MIN + (MIN_STEP*20) = MAX VALUE )
   
    always@ (posedge clk) 
	  begin
	    if (throttle_offset > 50) 
		  begin
		    if (pitch_offset <= 10)
			  begin
			    motor_2_offset <= -PITCH_MAX;
			    motor_1_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -PITCH_MAX;
			    motor_3_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
		    else if (pitch_offset > 10 && pitch_offset <= 20)
			  begin
			    motor_2_offset <= -PITCH_MAX+MAX_STEP;
			    motor_1_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -PITCH_MAX+MAX_STEP;
			    motor_3_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (pitch_offset > 20 && pitch_offset <= 30)
			  begin
			    motor_2_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP;
			    motor_1_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP;
			    motor_3_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (pitch_offset > 30 && pitch_offset <= 40)
			  begin
			    motor_2_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_1_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_3_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (pitch_offset > 40 && pitch_offset <= 50)
			  begin
			    motor_2_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_1_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_3_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (pitch_offset > 50 && pitch_offset <= 60)
			  begin
			    motor_2_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_1_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_3_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (pitch_offset > 60 && pitch_offset <= 70)
			  begin
			    motor_2_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_1_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_3_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (pitch_offset > 70 && pitch_offset <= 80)
			  begin
			    motor_2_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_1_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_3_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (pitch_offset > 80 && pitch_offset <= 90)
			  begin
			    motor_2_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_1_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_3_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (pitch_offset > 90 && pitch_offset <= 100)
			  begin
			    motor_2_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_1_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_3_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (pitch_offset > 100 && pitch_offset <= 110)
			  begin
			    motor_2_offset <= 0;
			    motor_1_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_3_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (pitch_offset > 110 && pitch_offset <= 120)
			  begin
			    motor_2_offset <= 0;
			    motor_1_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_3_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
		    else if (pitch_offset > 120 && pitch_offset <= 130)
			  begin
			    motor_2_offset <= 0;
			    motor_1_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_3_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
		    else if (pitch_offset > 130 && pitch_offset <= 140)
			  begin
			    motor_2_offset <= 0;
			    motor_1_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_3_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
		    else if (pitch_offset > 140 && pitch_offset <= 150)
			  begin
			    motor_2_offset <= 0;
			    motor_1_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_3_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (pitch_offset > 150 && pitch_offset <= 160)
			  begin
			    motor_2_offset <= 0;
			    motor_1_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_3_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
		    else if (pitch_offset > 160 && pitch_offset <= 170)
			  begin
			    motor_2_offset <= 0;
			    motor_1_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_3_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
		    else if (pitch_offset > 170 && pitch_offset <= 180)
			  begin
			    motor_2_offset <= 0;
			    motor_1_offset <= PITCH_MIN+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_3_offset <= PITCH_MIN+MIN_STEP+MIN_STEP;
			  end
		    else if (pitch_offset > 180 && pitch_offset <= 190)
			  begin
			    motor_2_offset <= 0;
			    motor_1_offset <= PITCH_MIN+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_3_offset <= PITCH_MIN+MIN_STEP;
			  end
			else if (pitch_offset > 190 && pitch_offset <= 195)
			  begin
			    motor_2_offset <= 0;
			    motor_1_offset <= PITCH_MIN;
			    motor_4_offset <= 0;
			    motor_3_offset <= PITCH_MIN;
			  end
		    else if (pitch_offset > 195 && pitch_offset <= 205)
			  begin
			    motor_2_offset <= 0;
			    motor_1_offset <= 0;
			    motor_4_offset <= 0;
			    motor_3_offset <= 0;
			  end
			else if (pitch_offset < 205 && pitch_offset <= 210)
			  begin
			    motor_2_offset <= PITCH_MIN;
			    motor_1_offset <= 0;
			    motor_4_offset <= PITCH_MIN;
			    motor_3_offset <= 0;
			  end
		    else if (pitch_offset > 210 && pitch_offset <= 220)
			  begin
			    motor_2_offset <= PITCH_MIN+MIN_STEP;
			    motor_1_offset <= 0;
			    motor_4_offset <= PITCH_MIN+MIN_STEP;
			    motor_3_offset <= 0;
			  end
		    else if (pitch_offset > 220 && pitch_offset <= 230)
			  begin
			    motor_2_offset <= PITCH_MIN+MIN_STEP+MIN_STEP;
			    motor_1_offset <= 0;
			    motor_4_offset <= PITCH_MIN+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
		    else if (pitch_offset > 230 && pitch_offset <= 240)
			  begin
			    motor_2_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= 0;
			    motor_4_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
		    else if (pitch_offset > 240 && pitch_offset <= 250)
			  begin
			    motor_2_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= 0;
			    motor_4_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
			else if (pitch_offset > 250 && pitch_offset <= 260)
			  begin
			    motor_2_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= 0;
			    motor_4_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
		    else if (pitch_offset > 260 && pitch_offset <= 270)
			  begin
			    motor_2_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= 0;
			    motor_4_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
		    else if (pitch_offset > 270 && pitch_offset <= 280)
			  begin
			    motor_2_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= 0;
			    motor_4_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
		    else if (pitch_offset > 280 && pitch_offset <= 290)
			  begin
			    motor_2_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= 0;
			    motor_4_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
		    else if (pitch_offset > 290 && pitch_offset <= 300)
			  begin
			    motor_2_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= 0;
			    motor_4_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
			else if (pitch_offset > 300 && pitch_offset <= 310)
			  begin
			    motor_2_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_4_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			  end
			else if (pitch_offset > 310 && pitch_offset <= 320)
			  begin
			    motor_2_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_4_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			  end
			else if (pitch_offset > 320 && pitch_offset <= 330)
			  begin
			    motor_2_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_4_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			  end
			else if (pitch_offset > 330 && pitch_offset <= 340)
			  begin
			    motor_2_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_4_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			  end
			else if (pitch_offset > 340 && pitch_offset <= 350)
			  begin
			    motor_2_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_4_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			  end
			else if (pitch_offset > 350 && pitch_offset <= 360)
			  begin
			    motor_2_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_4_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			  end
			else if (pitch_offset > 360 && pitch_offset <= 370)
			  begin
			    motor_2_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_4_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP+MAX_STEP;
			  end
			else if (pitch_offset > 370 && pitch_offset <= 380)
			  begin
			    motor_2_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP;
			    motor_4_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -PITCH_MAX+MAX_STEP+MAX_STEP;
			  end
			else if (pitch_offset > 380 && pitch_offset <= 390)
			  begin
			    motor_2_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= -PITCH_MAX+MAX_STEP;
			    motor_4_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -PITCH_MAX+MAX_STEP;
			  end
			else if (pitch_offset > 390)
			  begin
			    motor_2_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= -PITCH_MAX;
			    motor_4_offset <= PITCH_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -PITCH_MAX;
			  end
		  end 
	  end		  
endmodule

module roll_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, roll_offset, throttle_offset, clk);
	output reg [10:0] motor_1_offset;
	output reg [10:0] motor_2_offset;
	output reg [10:0] motor_3_offset;
	output reg [10:0] motor_4_offset;
	input [9:0] 	  roll_offset;
	input [9:0] 	  throttle_offset;
	input             clk;
   
    parameter ROLL_MAX = 100;         // maximum pitch value to decrement off motors by at max throttle
	parameter MAX_STEP = 10;           // step to decrease maximum decrement by ( PITCH_MAX / MAX_STEP must be = 10! )
	parameter ROLL_MIN = 10;           // minimum pitch value to increment on motors by at min throttle
	parameter MIN_STEP = 10;            // step to increment up from minimum ( PITCH_MIN + (MIN_STEP*20) = MAX VALUE )
   
    always@ (posedge clk) 
	  begin
	    if (throttle_offset > 50) 
		  begin
		    if (roll_offset <= 10)
			  begin
			    motor_1_offset <= -ROLL_MAX;
			    motor_2_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -ROLL_MAX;
			    motor_3_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
		    else if (roll_offset > 10 && roll_offset <= 20)
			  begin
			    motor_1_offset <= -ROLL_MAX+MAX_STEP;
			    motor_2_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -ROLL_MAX+MAX_STEP;
			    motor_3_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (roll_offset > 20 && roll_offset <= 30)
			  begin
			    motor_1_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP;
			    motor_2_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP;
			    motor_3_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (roll_offset > 30 && roll_offset <= 40)
			  begin
			    motor_1_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_2_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_3_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (roll_offset > 40 && roll_offset <= 50)
			  begin
			    motor_1_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_2_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_3_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (roll_offset > 50 && roll_offset <= 60)
			  begin
			    motor_1_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_2_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_3_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (roll_offset > 60 && roll_offset <= 70)
			  begin
			    motor_1_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_2_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_3_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (roll_offset > 70 && roll_offset <= 80)
			  begin
			    motor_1_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_2_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_3_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (roll_offset > 80 && roll_offset <= 90)
			  begin
			    motor_1_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_2_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_3_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (roll_offset > 90 && roll_offset <= 100)
			  begin
			    motor_1_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_2_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_3_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (roll_offset > 100 && roll_offset <= 110)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_3_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (roll_offset > 110 && roll_offset <= 120)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_3_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
		    else if (roll_offset > 120 && roll_offset <= 130)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_3_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
		    else if (roll_offset > 130 && roll_offset <= 140)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_3_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
		    else if (roll_offset > 140 && roll_offset <= 150)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_3_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (roll_offset > 150 && roll_offset <= 160)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_3_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
		    else if (roll_offset > 160 && roll_offset <= 170)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_3_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
		    else if (roll_offset > 170 && roll_offset <= 180)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= ROLL_MIN+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_3_offset <= ROLL_MIN+MIN_STEP+MIN_STEP;
			  end
		    else if (roll_offset > 180 && roll_offset <= 190)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= ROLL_MIN+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_3_offset <= ROLL_MIN+MIN_STEP;
			  end
			else if (roll_offset > 190 && roll_offset <= 195)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= ROLL_MIN;
			    motor_4_offset <= 0;
			    motor_3_offset <= ROLL_MIN;
			  end
		    else if (roll_offset > 195 && roll_offset <= 205)
			  begin
			    motor_1_offset <= 0;
			    motor_2_offset <= 0;
			    motor_4_offset <= 0;
			    motor_3_offset <= 0;
			  end
			else if (roll_offset < 205 && roll_offset <= 210)
			  begin
			    motor_1_offset <= ROLL_MIN;
			    motor_2_offset <= 0;
			    motor_4_offset <= ROLL_MIN;
			    motor_3_offset <= 0;
			  end
		    else if (roll_offset > 210 && roll_offset <= 220)
			  begin
			    motor_1_offset <= ROLL_MIN+MIN_STEP;
			    motor_2_offset <= 0;
			    motor_4_offset <= ROLL_MIN+MIN_STEP;
			    motor_3_offset <= 0;
			  end
		    else if (roll_offset > 220 && roll_offset <= 230)
			  begin
			    motor_1_offset <= ROLL_MIN+MIN_STEP+MIN_STEP;
			    motor_2_offset <= 0;
			    motor_4_offset <= ROLL_MIN+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
		    else if (roll_offset > 230 && roll_offset <= 240)
			  begin
			    motor_1_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_2_offset <= 0;
			    motor_4_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
		    else if (roll_offset > 240 && roll_offset <= 250)
			  begin
			    motor_1_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_2_offset <= 0;
			    motor_4_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
			else if (roll_offset > 250 && roll_offset <= 260)
			  begin
			    motor_1_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_2_offset <= 0;
			    motor_4_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
		    else if (roll_offset > 260 && roll_offset <= 270)
			  begin
			    motor_1_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_2_offset <= 0;
			    motor_4_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
		    else if (roll_offset > 270 && roll_offset <= 280)
			  begin
			    motor_1_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_2_offset <= 0;
			    motor_4_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
		    else if (roll_offset > 280 && roll_offset <= 290)
			  begin
			    motor_1_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_2_offset <= 0;
			    motor_4_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
		    else if (roll_offset > 290 && roll_offset <= 300)
			  begin
			    motor_1_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_2_offset <= 0;
			    motor_4_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
			else if (roll_offset > 300 && roll_offset <= 310)
			  begin
			    motor_1_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_2_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_4_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			  end
			else if (roll_offset > 310 && roll_offset <= 320)
			  begin
			    motor_1_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_2_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_4_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			  end
			else if (roll_offset > 320 && roll_offset <= 330)
			  begin
			    motor_1_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_2_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_4_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			  end
			else if (roll_offset > 330 && roll_offset <= 340)
			  begin
			    motor_1_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_2_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_4_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			  end
			else if (roll_offset > 340 && roll_offset <= 350)
			  begin
			    motor_1_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_2_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_4_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			  end
			else if (roll_offset > 350 && roll_offset <= 360)
			  begin
			    motor_1_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_2_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_4_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			  end
			else if (roll_offset > 360 && roll_offset <= 370)
			  begin
			    motor_1_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_2_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_4_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP+MAX_STEP;
			  end
			else if (roll_offset > 370 && roll_offset <= 380)
			  begin
			    motor_1_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_2_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP;
			    motor_4_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -ROLL_MAX+MAX_STEP+MAX_STEP;
			  end
			else if (roll_offset > 380 && roll_offset <= 390)
			  begin
			    motor_1_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_2_offset <= -ROLL_MAX+MAX_STEP;
			    motor_4_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -ROLL_MAX+MAX_STEP;
			  end
			else if (roll_offset > 390)
			  begin
			    motor_1_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_2_offset <= -ROLL_MAX;
			    motor_4_offset <= ROLL_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -ROLL_MAX;
			  end
		  end 
	  end		  
endmodule

module yaw_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, yaw_offset, throttle_offset, clk);
	output reg [10:0] motor_1_offset;
	output reg [10:0] motor_2_offset;
	output reg [10:0] motor_3_offset;
	output reg [10:0] motor_4_offset;
	input [9:0] 	  yaw_offset;
	input [9:0] 	  throttle_offset;
	input             clk;
   
    parameter YAW_MAX = 100;         // maximum yaw value
    parameter MAX_STEP = 10;         // step to increment down from max value ( YAW_MAX / MAX_STEP must be >= 10! )
	parameter YAW_MIN = 10;           // minimum yaw value
	parameter MIN_STEP = 10;          // step to increment up from minimum
	
    always@ (posedge clk) 
	  begin
	    if (throttle_offset > 50) 
		  begin
		    if (yaw_offset <= 10)
			  begin
			    motor_2_offset <= -YAW_MAX;
			    motor_4_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= -YAW_MAX;
			    motor_3_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
		    else if (yaw_offset > 10 && yaw_offset <= 20)
			  begin
			    motor_2_offset <= -YAW_MAX+MAX_STEP;
			    motor_4_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= -YAW_MAX+MAX_STEP;
			    motor_3_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (yaw_offset > 20 && yaw_offset <= 30)
			  begin
			    motor_2_offset <= -YAW_MAX+MAX_STEP+MAX_STEP;
			    motor_4_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= -YAW_MAX+MAX_STEP+MAX_STEP;
			    motor_3_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (yaw_offset > 30 && yaw_offset <= 40)
			  begin
			    motor_2_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_4_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_3_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (yaw_offset > 40 && yaw_offset <= 50)
			  begin
			    motor_2_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_4_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_3_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (yaw_offset > 50 && yaw_offset <= 60)
			  begin
			    motor_2_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_4_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_3_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (yaw_offset > 60 && yaw_offset <= 70)
			  begin
			    motor_2_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_4_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_3_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (yaw_offset > 70 && yaw_offset <= 80)
			  begin
			    motor_2_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_4_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_3_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (yaw_offset > 80 && yaw_offset <= 90)
			  begin
			    motor_2_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_4_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_3_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (yaw_offset > 90 && yaw_offset <= 100)
			  begin
			    motor_2_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_4_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_3_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (yaw_offset > 100 && yaw_offset <= 110)
			  begin
			    motor_2_offset <= 0;
			    motor_4_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= 0;
			    motor_3_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (yaw_offset > 110 && yaw_offset <= 120)
			  begin
			    motor_2_offset <= 0;
			    motor_4_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= 0;
			    motor_3_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
		    else if (yaw_offset > 120 && yaw_offset <= 130)
			  begin
			    motor_2_offset <= 0;
			    motor_4_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= 0;
			    motor_3_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
		    else if (yaw_offset > 130 && yaw_offset <= 140)
			  begin
			    motor_2_offset <= 0;
			    motor_4_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= 0;
			    motor_3_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
		    else if (yaw_offset > 140 && yaw_offset <= 150)
			  begin
			    motor_2_offset <= 0;
			    motor_4_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= 0;
			    motor_3_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
			else if (yaw_offset > 150 && yaw_offset <= 160)
			  begin
			    motor_2_offset <= 0;
			    motor_4_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= 0;
			    motor_3_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
		    else if (yaw_offset > 160 && yaw_offset <= 170)
			  begin
			    motor_2_offset <= 0;
			    motor_4_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_1_offset <= 0;
			    motor_3_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP;
			  end
		    else if (yaw_offset > 170 && yaw_offset <= 180)
			  begin
			    motor_2_offset <= 0;
			    motor_4_offset <= YAW_MIN+MIN_STEP+MIN_STEP;
			    motor_1_offset <= 0;
			    motor_3_offset <= YAW_MIN+MIN_STEP+MIN_STEP;
			  end
		    else if (yaw_offset > 180 && yaw_offset <= 190)
			  begin
			    motor_2_offset <= 0;
			    motor_4_offset <= YAW_MIN+MIN_STEP;
			    motor_1_offset <= 0;
			    motor_3_offset <= YAW_MIN+MIN_STEP;
			  end
			else if (yaw_offset > 190 && yaw_offset <= 195)
			  begin
			    motor_2_offset <= 0;
			    motor_4_offset <= YAW_MIN;
			    motor_1_offset <= 0;
			    motor_3_offset <= YAW_MIN;
			  end
		    else if (yaw_offset > 195 && yaw_offset <= 205)
			  begin
			    motor_2_offset <= 0;
			    motor_4_offset <= 0;
			    motor_1_offset <= 0;
			    motor_3_offset <= 0;
			  end
			else if (yaw_offset < 205 && yaw_offset <= 210)
			  begin
			    motor_2_offset <= YAW_MIN;
			    motor_4_offset <= 0;
			    motor_1_offset <= YAW_MIN;
			    motor_3_offset <= 0;
			  end
		    else if (yaw_offset > 210 && yaw_offset <= 220)
			  begin
			    motor_2_offset <= YAW_MIN+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_1_offset <= YAW_MIN+MIN_STEP;
			    motor_3_offset <= 0;
			  end
		    else if (yaw_offset > 220 && yaw_offset <= 230)
			  begin
			    motor_2_offset <= YAW_MIN+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_1_offset <= YAW_MIN+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
		    else if (yaw_offset > 230 && yaw_offset <= 240)
			  begin
			    motor_2_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_1_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
		    else if (yaw_offset > 240 && yaw_offset <= 250)
			  begin
			    motor_2_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_1_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
			else if (yaw_offset > 250 && yaw_offset <= 260)
			  begin
			    motor_2_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_1_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
		    else if (yaw_offset > 260 && yaw_offset <= 270)
			  begin
			    motor_2_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_1_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
		    else if (yaw_offset > 270 && yaw_offset <= 280)
			  begin
			    motor_2_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_1_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
		    else if (yaw_offset > 280 && yaw_offset <= 290)
			  begin
			    motor_2_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_1_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
		    else if (yaw_offset > 290 && yaw_offset <= 300)
			  begin
			    motor_2_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= 0;
			    motor_1_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= 0;
			  end
			else if (yaw_offset > 300 && yaw_offset <= 310)
			  begin
			    motor_2_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_1_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			  end
			else if (yaw_offset > 310 && yaw_offset <= 320)
			  begin
			    motor_2_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_1_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			  end
			else if (yaw_offset > 320 && yaw_offset <= 330)
			  begin
			    motor_2_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_1_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			  end
			else if (yaw_offset > 330 && yaw_offset <= 340)
			  begin
			    motor_2_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_1_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			  end
			else if (yaw_offset > 340 && yaw_offset <= 350)
			  begin
			    motor_2_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_1_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			  end
			else if (yaw_offset > 350 && yaw_offset <= 360)
			  begin
			    motor_2_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_1_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP+MAX_STEP;
			  end
			else if (yaw_offset > 360 && yaw_offset <= 370)
			  begin
			    motor_2_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP;
			    motor_1_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -YAW_MAX+MAX_STEP+MAX_STEP+MAX_STEP;
			  end
			else if (yaw_offset > 370 && yaw_offset <= 380)
			  begin
			    motor_2_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -YAW_MAX+MAX_STEP+MAX_STEP;
			    motor_1_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -YAW_MAX+MAX_STEP+MAX_STEP;
			  end
			else if (yaw_offset > 380 && yaw_offset <= 390)
			  begin
			    motor_2_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -YAW_MAX+MAX_STEP;
			    motor_1_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -YAW_MAX+MAX_STEP;
			  end
			else if (yaw_offset > 390)
			  begin
			    motor_2_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_4_offset <= -YAW_MAX;
			    motor_1_offset <= YAW_MIN+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP+MIN_STEP;
			    motor_3_offset <= -YAW_MAX;
			  end
		  end 
	  end		  
endmodule