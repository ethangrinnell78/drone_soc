module throttle_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, throttle_offset, clk);
   output reg [7:0] motor_1_offset;
   output reg [7:0] motor_2_offset;
   output reg [7:0] motor_3_offset;
   output reg [7:0] motor_4_offset;
   input [7:0] 	    throttle_offset;
   input            clk;
   
   always@ (posedge clk )begin
	  if (throttle_offset <= 10)
		  begin
		  motor_1_offset <= throttle_offset+8'b010;
		  motor_2_offset <= throttle_offset+8'b010;
		  motor_3_offset <= throttle_offset+8'b010;
		  motor_4_offset <= throttle_offset+8'b010;
		  end
	  else if (throttle_offset > 10 && throttle_offset <= 20)
		  begin
		  motor_1_offset <= throttle_offset+8'b1000;
		  motor_2_offset <= throttle_offset+8'b1000;
		  motor_3_offset <= throttle_offset+8'b1000;
		  motor_4_offset <= throttle_offset+8'b1000;
		  end
	  else if (throttle_offset > 20 && throttle_offset <= 30)
		  begin
		  motor_1_offset <= throttle_offset+8'b1110;
		  motor_2_offset <= throttle_offset+8'b1110;
		  motor_3_offset <= throttle_offset+8'b1110;
		  motor_4_offset <= throttle_offset+8'b1110;
		  end
	  else if (throttle_offset > 30)
		  begin
		  motor_1_offset <= throttle_offset+8'b10100;
		  motor_2_offset <= throttle_offset+8'b10100;
		  motor_3_offset <= throttle_offset+8'b10100;
		  motor_4_offset <= throttle_offset+8'b10100;
		  end
   end
   
endmodule

module pitch_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, pitch_offset, throttle_offset, clk);
   output reg [7:0] motor_1_offset;
   output reg [7:0] motor_2_offset;
   output reg [7:0] motor_3_offset;
   output reg [7:0] motor_4_offset;
   input [7:0] 	    pitch_offset;
   input [7:0] 	    throttle_offset;
   input            clk;
   
  parameter DEFAULT_VALUE = 20;
   parameter HALF_POINT = 20;
   parameter FULL_POINT = 40;
   
   
   always@ (posedge clk )
     begin
	if(pitch_offset > HALF_POINT)
	  begin
	     motor_1_offset <= FULL_POINT - pitch_offset;
	     motor_2_offset <= DEFAULT_VALUE;
	     motor_3_offset <= FULL_POINT - pitch_offset;
	     motor_4_offset <= DEFAULT_VALUE;
	  end
	else
	  begin
	     motor_1_offset <= DEFAULT_VALUE;
	     motor_2_offset <= pitch_offset;
	     motor_3_offset <= DEFAULT_VALUE;
	     motor_4_offset <= pitch_offset;
	  end // else: !if(pitch_offset > HALF_POINT)
	

	/* need a way to map the 0-255 values for the pitch offset input to the +/- 0-20 value
	 for the % duty cycle change in each motor. this needs to be done without using multiplication
	 or division. in addition, the amount of throttle alters the output % duty cycle value of
	 the other three signals, so we need to find a way to switch based on throttle values as well*/
	 end
   
endmodule

module roll_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, roll_offset, throttle_offset, clk);
   output reg [7:0] motor_1_offset;
   output reg [7:0] motor_2_offset;
   output reg [7:0] motor_3_offset;
   output reg [7:0] motor_4_offset;
   input [7:0] 	    roll_offset;
   input [7:0] 	    throttle_offset;
   input            clk;
   
   parameter DEFAULT_VALUE = 20;
   parameter HALF_POINT = 20;
   parameter FULL_POINT = 40;

   
   always@ (posedge clk )
     begin
	if(roll_offset > HALF_POINT)
	  begin
	     motor_1_offset <= DEFAULT_VALUE;
	     motor_2_offset <= FULL_POINT - roll_offset;
	     motor_3_offset <= FULL_POINT - roll_offset;
	     motor_4_offset <= DEFAULT_VALUE;
	  end
	else
	  begin
	     motor_1_offset <= roll_offset;
	     motor_2_offset <= DEFAULT_VALUE;
	     motor_3_offset <= DEFAULT_VALUE;
	     motor_4_offset <= roll_offset;
	  end // else: !if(roll_offset > HALF_POINT)
	
     end
   
endmodule

module yaw_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, yaw_offset, throttle_offset, clk);
   output reg [7:0] motor_1_offset;
   output reg [7:0] motor_2_offset;
   output reg [7:0] motor_3_offset;
   output reg [7:0] motor_4_offset;
   input [7:0] 	    yaw_offset;
   input [7:0] 	    throttle_offset;
   input            clk;
   
  parameter DEFAULT_VALUE = 20;
   parameter HALF_POINT = 20;
   parameter FULL_POINT = 40;

   always@ (posedge clk )
     begin
	if(yaw_offset > HALF_POINT)
	  begin
	     motor_1_offset <= DEFAULT_VALUE;
	     motor_2_offset <= DEFAULT_VALUE;
	     motor_3_offset <= FULL_POINT - yaw_offset;
	     motor_4_offset <= FULL_POINT - yaw_offset;
	  end
	else
	  begin
	     motor_1_offset <= yaw_offset;
	     motor_2_offset <= yaw_offset;
	     motor_3_offset <= DEFAULT_VALUE;
	     motor_4_offset <= DEFAULT_VALUE;
	  end // else: !if(yaw_offset > HALF_POINT)
	
     end
   
endmodule
