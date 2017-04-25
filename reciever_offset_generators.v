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
	parameter EXTRA = 15; 
  
 	always@ (posedge clk) 
 	  begin
		  if (throttle_offset >= 0 && throttle_offset <= 2)
			begin 
			motor_1_offset <= 8'b000000; // Motor 1 Offset = 0
			motor_2_offset <= 8'b000000; // Motor 2 Offset = 0
			motor_3_offset <= 8'b000000; // Motor 3 Offset = 0
			motor_4_offset <= 8'b000000; // Motor 4 Offset = 0
			end
		else if (throttle_offset > 2 && throttle_offset <= 4)
			begin 
			motor_1_offset <= 8'b001010+EXTRA; // Motor 1 Offset = 10
			motor_2_offset <= 8'b001010+EXTRA; // Motor 2 Offset = 10
			motor_3_offset <= 8'b001010+EXTRA; // Motor 3 Offset = 10
			motor_4_offset <= 8'b001010+EXTRA; // Motor 4 Offset = 10
			end
		else if (throttle_offset > 4 && throttle_offset <= 6)
			begin 
			motor_1_offset <= 8'b001011+EXTRA; // Motor 1 Offset = 11
			motor_2_offset <= 8'b001011+EXTRA; // Motor 2 Offset = 11
			motor_3_offset <= 8'b001011+EXTRA; // Motor 3 Offset = 11
			motor_4_offset <= 8'b001011+EXTRA; // Motor 4 Offset = 11
			end
		else if (throttle_offset > 6 && throttle_offset <= 8)
			begin 
			motor_1_offset <= 8'b001100+EXTRA; // Motor 1 Offset = 12
			motor_2_offset <= 8'b001100+EXTRA; // Motor 2 Offset = 12
			motor_3_offset <= 8'b001100+EXTRA; // Motor 3 Offset = 12
			motor_4_offset <= 8'b001100+EXTRA; // Motor 4 Offset = 12
			end
		else if (throttle_offset > 8 && throttle_offset <= 10)
			begin 
			motor_1_offset <= 8'b001101+EXTRA; // Motor 1 Offset = 13
			motor_2_offset <= 8'b001101+EXTRA; // Motor 2 Offset = 13
			motor_3_offset <= 8'b001101+EXTRA; // Motor 3 Offset = 13
			motor_4_offset <= 8'b001101+EXTRA; // Motor 4 Offset = 13
			end
		else if (throttle_offset > 10 && throttle_offset <= 12)
			begin 
			motor_1_offset <= 8'b001110+EXTRA; // Motor 1 Offset = 14
			motor_2_offset <= 8'b001110+EXTRA; // Motor 2 Offset = 14
			motor_3_offset <= 8'b001110+EXTRA; // Motor 3 Offset = 14
			motor_4_offset <= 8'b001110+EXTRA; // Motor 4 Offset = 14
			end
		else if (throttle_offset > 12 && throttle_offset <= 14)
			begin 
			motor_1_offset <= 8'b001111+EXTRA; // Motor 1 Offset = 15
			motor_2_offset <= 8'b001111+EXTRA; // Motor 2 Offset = 15
			motor_3_offset <= 8'b001111+EXTRA; // Motor 3 Offset = 15
			motor_4_offset <= 8'b001111+EXTRA; // Motor 4 Offset = 15
			end
		else if (throttle_offset > 14 && throttle_offset <= 16)
			begin 
			motor_1_offset <= 8'b010000+EXTRA; // Motor 1 Offset = 16
			motor_2_offset <= 8'b010000+EXTRA; // Motor 2 Offset = 16
			motor_3_offset <= 8'b010000+EXTRA; // Motor 3 Offset = 16
			motor_4_offset <= 8'b010000+EXTRA; // Motor 4 Offset = 16
			end
		else if (throttle_offset > 16 && throttle_offset <= 18)
			begin 
			motor_1_offset <= 8'b010001+EXTRA; // Motor 1 Offset = 17
			motor_2_offset <= 8'b010001+EXTRA; // Motor 2 Offset = 17
			motor_3_offset <= 8'b010001+EXTRA; // Motor 3 Offset = 17
			motor_4_offset <= 8'b010001+EXTRA; // Motor 4 Offset = 17
			end
		else if (throttle_offset > 18 && throttle_offset <= 20)
			begin 
			motor_1_offset <= 8'b010010+EXTRA; // Motor 1 Offset = 18
			motor_2_offset <= 8'b010010+EXTRA; // Motor 2 Offset = 18
			motor_3_offset <= 8'b010010+EXTRA; // Motor 3 Offset = 18
			motor_4_offset <= 8'b010010+EXTRA; // Motor 4 Offset = 18
			end
		else if (throttle_offset > 20 && throttle_offset <= 22)
			begin 
			motor_1_offset <= 8'b010011+EXTRA; // Motor 1 Offset = 19
			motor_2_offset <= 8'b010011+EXTRA; // Motor 2 Offset = 19
			motor_3_offset <= 8'b010011+EXTRA; // Motor 3 Offset = 19
			motor_4_offset <= 8'b010011+EXTRA; // Motor 4 Offset = 19
			end
		else if (throttle_offset > 22 && throttle_offset <= 24)
			begin 
			motor_1_offset <= 8'b010100+EXTRA; // Motor 1 Offset = 20
			motor_2_offset <= 8'b010100+EXTRA; // Motor 2 Offset = 20
			motor_3_offset <= 8'b010100+EXTRA; // Motor 3 Offset = 20
			motor_4_offset <= 8'b010100+EXTRA; // Motor 4 Offset = 20
			end
		else if (throttle_offset > 24 && throttle_offset <= 26)
			begin 
			motor_1_offset <= 8'b010101+EXTRA; // Motor 1 Offset = 21
			motor_2_offset <= 8'b010101+EXTRA; // Motor 2 Offset = 21
			motor_3_offset <= 8'b010101+EXTRA; // Motor 3 Offset = 21
			motor_4_offset <= 8'b010101+EXTRA; // Motor 4 Offset = 21
			end
		else if (throttle_offset > 26 && throttle_offset <= 28)
			begin 
			motor_1_offset <= 8'b010110+EXTRA; // Motor 1 Offset = 22
			motor_2_offset <= 8'b010110+EXTRA; // Motor 2 Offset = 22
			motor_3_offset <= 8'b010110+EXTRA; // Motor 3 Offset = 22
			motor_4_offset <= 8'b010110+EXTRA; // Motor 4 Offset = 22
			end
		else if (throttle_offset > 28 && throttle_offset <= 30)
			begin 
			motor_1_offset <= 8'b010111+EXTRA; // Motor 1 Offset = 23
			motor_2_offset <= 8'b010111+EXTRA; // Motor 2 Offset = 23
			motor_3_offset <= 8'b010111+EXTRA; // Motor 3 Offset = 23
			motor_4_offset <= 8'b010111+EXTRA; // Motor 4 Offset = 23
			end
		else if (throttle_offset > 30 && throttle_offset <= 32)
			begin 
			motor_1_offset <= 8'b011000+EXTRA; // Motor 1 Offset = 24
			motor_2_offset <= 8'b011000+EXTRA; // Motor 2 Offset = 24
			motor_3_offset <= 8'b011000+EXTRA; // Motor 3 Offset = 24
			motor_4_offset <= 8'b011000+EXTRA; // Motor 4 Offset = 24
			end
		else if (throttle_offset > 32 && throttle_offset <= 34)
			begin 
			motor_1_offset <= 8'b011001+EXTRA; // Motor 1 Offset = 25
			motor_2_offset <= 8'b011001+EXTRA; // Motor 2 Offset = 25
			motor_3_offset <= 8'b011001+EXTRA; // Motor 3 Offset = 25
			motor_4_offset <= 8'b011001+EXTRA; // Motor 4 Offset = 25
			end
		else if (throttle_offset > 34 && throttle_offset <= 36)
			begin 
			motor_1_offset <= 8'b011010+EXTRA; // Motor 1 Offset = 26
			motor_2_offset <= 8'b011010+EXTRA; // Motor 2 Offset = 26
			motor_3_offset <= 8'b011010+EXTRA; // Motor 3 Offset = 26
			motor_4_offset <= 8'b011010+EXTRA; // Motor 4 Offset = 26
			end
		else if (throttle_offset > 36 && throttle_offset <= 38)
			begin 
			motor_1_offset <= 8'b011011+EXTRA; // Motor 1 Offset = 27
			motor_2_offset <= 8'b011011+EXTRA; // Motor 2 Offset = 27
			motor_3_offset <= 8'b011011+EXTRA; // Motor 3 Offset = 27
			motor_4_offset <= 8'b011011+EXTRA; // Motor 4 Offset = 27
			end
		else if (throttle_offset > 38 && throttle_offset <= 40)
			begin 
			motor_1_offset <= 8'b011100+EXTRA; // Motor 1 Offset = 28
			motor_2_offset <= 8'b011100+EXTRA; // Motor 2 Offset = 28
			motor_3_offset <= 8'b011100+EXTRA; // Motor 3 Offset = 28
			motor_4_offset <= 8'b011100+EXTRA; // Motor 4 Offset = 28
			end
		else // No Offset otherwise
			begin
			motor_1_offset <= 8'b000;
			motor_2_offset <= 8'b000;
			motor_3_offset <= 8'b000;
			motor_4_offset <= 8'b000;
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
		    // Case 1 (0-18): Up/Forward Pitch --> Offset Motors 1 and 3
			if (pitch_offset >= 0 && pitch_offset <= 3)
			   begin 
					motor_1_offset <= 8'b110; // Motor 1 Offset = 6
					motor_2_offset <= 8'b000; // Motor 2 Offset = 0
					motor_3_offset <= 8'b110; // Motor 3 Offset = 6
					motor_4_offset <= 8'b000; // Motor 4 Offset = 0
				end
		   else if (pitch_offset > 3 && pitch_offset <= 6)
			   begin 
					motor_1_offset <= 8'b101; // Motor 1 Offset = 5
					motor_2_offset <= 8'b000; // Motor 2 Offset = 0
					motor_3_offset <= 8'b101; // Motor 3 Offset = 5
					motor_4_offset <= 8'b000; // Motor 4 Offset = 0
				end
		   else if (pitch_offset > 6 && pitch_offset <= 9)
			   begin 
					motor_1_offset <= 8'b100; // Motor 1 Offset = 4
					motor_2_offset <= 8'b000; // Motor 2 Offset = 0
					motor_3_offset <= 8'b100; // Motor 3 Offset = 4
					motor_4_offset <= 8'b000; // Motor 4 Offset = 0
				end
		   else if (pitch_offset > 9 && pitch_offset <= 12)
			   begin 
					motor_1_offset <= 8'b011; // Motor 1 Offset = 3
					motor_2_offset <= 8'b000; // Motor 2 Offset = 0
					motor_3_offset <= 8'b011; // Motor 3 Offset = 3
					motor_4_offset <= 8'b000; // Motor 4 Offset = 0
				end
		   else if (pitch_offset > 12 && pitch_offset <= 15)
			   begin 
					motor_1_offset <= 8'b010; // Motor 1 Offset = 2
					motor_2_offset <= 8'b000; // Motor 2 Offset = 0
					motor_3_offset <= 8'b010; // Motor 3 Offset = 2
					motor_4_offset <= 8'b000; // Motor 4 Offset = 0
				end
		   else if (pitch_offset > 15 && pitch_offset <= 18)
			   begin 
					motor_1_offset <= 8'b001; // Motor 1 Offset = 1
					motor_2_offset <= 8'b000; // Motor 2 Offset = 0
					motor_3_offset <= 8'b001; // Motor 3 Offset = 1
					motor_4_offset <= 8'b000; // Motor 4 Offset = 0
				end
		   
		   // Case 2 (22-40): Down/Backward Pitch --> Offset Motors 2 and 4
		   else if (pitch_offset > 22 && pitch_offset <= 25)
			   begin 
					motor_1_offset <= 8'b000; // Motor 1 Offset = 0
					motor_2_offset <= 8'b001; // Motor 2 Offset = 1
					motor_3_offset <= 8'b000; // Motor 3 Offset = 0
					motor_4_offset <= 8'b001; // Motor 4 Offset = 1
				end
		   else if (pitch_offset > 25 && pitch_offset <= 28)
			   begin 
					motor_1_offset <= 8'b000; // Motor 1 Offset = 0
					motor_2_offset <= 8'b010; // Motor 2 Offset = 2
					motor_3_offset <= 8'b000; // Motor 3 Offset = 0
					motor_4_offset <= 8'b010; // Motor 4 Offset = 2
				end
		   else if (pitch_offset > 28 && pitch_offset <= 31)
			   begin 
					motor_1_offset <= 8'b000; // Motor 1 Offset = 0
					motor_2_offset <= 8'b011; // Motor 2 Offset = 3
					motor_3_offset <= 8'b000; // Motor 3 Offset = 0
					motor_4_offset <= 8'b011; // Motor 4 Offset = 3
				end
		   else if (pitch_offset > 31 && pitch_offset <= 34)
			   begin 
					motor_1_offset <= 8'b000; // Motor 1 Offset = 0
					motor_2_offset <= 8'b100; // Motor 2 Offset = 4
					motor_3_offset <= 8'b000; // Motor 3 Offset = 0
					motor_4_offset <= 8'b100; // Motor 4 Offset = 4
				end
		   else if (pitch_offset > 34 && pitch_offset <= 37)
			   begin 
					motor_1_offset <= 8'b000; // Motor 1 Offset = 0
					motor_2_offset <= 8'b101; // Motor 2 Offset = 5
					motor_3_offset <= 8'b000; // Motor 3 Offset = 0
					motor_4_offset <= 8'b101; // Motor 4 Offset = 5
				end
		   else if (pitch_offset > 37 && pitch_offset <= 40)
			   begin 
					motor_1_offset <= 8'b000; // Motor 1 Offset = 0
					motor_2_offset <= 8'b110; // Motor 2 Offset = 6
					motor_3_offset <= 8'b000; // Motor 3 Offset = 0
					motor_4_offset <= 8'b110; // Motor 4 Offset = 6
				end
			else // No Offset otherwise
				begin
					motor_1_offset <= 8'b000;
					motor_2_offset <= 8'b000;
					motor_3_offset <= 8'b000;
					motor_4_offset <= 8'b000;
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
		  // Case 1(0-18): Left Roll --> Offset Motors 2 and 3  
	if (roll_offset >= 0 && roll_offset <= 3)
	   begin 
			motor_1_offset <= 8'b000; // Motor 1 Offset = 0
			motor_2_offset <= 8'b110; // Motor 2 Offset = 6
			motor_3_offset <= 8'b110; // Motor 3 Offset = 6
			motor_4_offset <= 8'b000; // Motor 4 Offset = 0
			
		end
   else if (roll_offset > 3 && roll_offset <= 6)
	   begin 
			motor_1_offset <= 8'b000; // Motor 1 Offset = 0
			motor_2_offset <= 8'b101; // Motor 2 Offset = 5
			motor_3_offset <= 8'b101; // Motor 3 Offset = 5
			motor_4_offset <= 8'b000; // Motor 4 Offset = 0
			
		end
   else if (roll_offset > 6 && roll_offset <= 9)
	   begin 
			motor_1_offset <= 8'b000; // Motor 1 Offset = 0
			motor_2_offset <= 8'b100; // Motor 2 Offset = 4
			motor_3_offset <= 8'b100; // Motor 3 Offset = 4
			motor_4_offset <= 8'b000; // Motor 4 Offset = 0
			
		end
   else if (roll_offset > 9 && roll_offset <= 12)
	   begin 
			motor_1_offset <= 8'b000; // Motor 1 Offset = 0
			motor_2_offset <= 8'b011; // Motor 2 Offset = 3
			motor_3_offset <= 8'b011; // Motor 3 Offset = 3
			motor_4_offset <= 8'b000; // Motor 4 Offset = 0
			
		end
   else if (roll_offset > 12 && roll_offset <= 15)
	   begin 
			motor_1_offset <= 8'b000; // Motor 1 Offset = 0
			motor_2_offset <= 8'b010; // Motor 2 Offset = 2
			motor_3_offset <= 8'b010; // Motor 3 Offset = 2
			motor_4_offset <= 8'b000; // Motor 4 Offset = 0
			
		end
   else if (roll_offset > 15 && roll_offset <= 18)
	   begin 
			motor_1_offset <= 8'b000; // Motor 1 Offset = 0
			motor_2_offset <= 8'b001; // Motor 2 Offset = 1
			motor_3_offset <= 8'b001; // Motor 3 Offset = 1
			motor_4_offset <= 8'b000; // Motor 4 Offset = 0
			
		end
   
   // Case 2(22-40): Right Roll --> Offset Motors 1 and 4
   else if (roll_offset > 22 && roll_offset <= 25)
	   begin 
			motor_1_offset <= 8'b001; // Motor 1 Offset = 1
			motor_2_offset <= 8'b000; // Motor 2 Offset = 0
			motor_3_offset <= 8'b000; // Motor 3 Offset = 0
			motor_4_offset <= 8'b001; // Motor 4 Offset = 1
			
		end
   else if (roll_offset > 25 && roll_offset <= 28)
	   begin 
			motor_1_offset <= 8'b010; // Motor 1 Offset = 2
			motor_2_offset <= 8'b000; // Motor 2 Offset = 0
			motor_3_offset <= 8'b000; // Motor 3 Offset = 0
			motor_4_offset <= 8'b010; // Motor 4 Offset = 2
			
		end
   else if (roll_offset > 28 && roll_offset <= 31)
	   begin 
			motor_1_offset <= 8'b011; // Motor 1 Offset = 3
			motor_2_offset <= 8'b000; // Motor 2 Offset = 0
			motor_3_offset <= 8'b000; // Motor 3 Offset = 0
			motor_4_offset <= 8'b011; // Motor 4 Offset = 3
			
		end
   else if (roll_offset > 31 && roll_offset <= 34)
	   begin 
			motor_1_offset <= 8'b100; // Motor 1 Offset = 4
			motor_2_offset <= 8'b000; // Motor 2 Offset = 0
			motor_3_offset <= 8'b000; // Motor 3 Offset = 0
			motor_4_offset <= 8'b100; // Motor 4 Offset = 4
			
		end
   else if (roll_offset > 34 && roll_offset <= 37)
	   begin 
			motor_1_offset <= 8'b101; // Motor 1 Offset = 5
			motor_2_offset <= 8'b000; // Motor 2 Offset = 0
			motor_3_offset <= 8'b000; // Motor 3 Offset = 0
			motor_4_offset <= 8'b101; // Motor 4 Offset = 5
			
		end
   else if (roll_offset > 37 && roll_offset <= 40)
	   begin 
			motor_1_offset <= 8'b110; // Motor 1 Offset = 6
			motor_2_offset <= 8'b000; // Motor 2 Offset = 0
			motor_3_offset <= 8'b000; // Motor 3 Offset = 0
			motor_4_offset <= 8'b110; // Motor 4 Offset = 6
			
		end
	else // No Offset otherwise
		begin
			motor_1_offset <= 8'b000;
			motor_2_offset <= 8'b000;
			motor_3_offset <= 8'b000;
			motor_4_offset <= 8'b000;
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