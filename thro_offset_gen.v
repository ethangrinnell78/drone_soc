module thro_offset_gen(motor_1_offset,motor_2_offset,motor_3_offset,motor_4_offset,thro_rec_val);
   output reg [7:0] motor_1_offset;
   output reg [7:0] motor_2_offset;
   output reg [7:0] motor_3_offset;
   output reg [7:0] motor_4_offset;
   input [7:0] thro_rec_val;
   
   always @(thro_rec_val)begin
   if (thro_rec_val >= 0 && thro_rec_val <= 2)
	   begin 
			motor_1_offset <= 8'b000000; // Motor 1 Offset = 0
			motor_2_offset <= 8'b000000; // Motor 2 Offset = 0
			motor_3_offset <= 8'b000000; // Motor 3 Offset = 0
			motor_4_offset <= 8'b000000; // Motor 4 Offset = 0
		end
   else if (thro_rec_val > 2 && thro_rec_val <= 4)
	   begin 
			motor_1_offset <= 8'b000001; // Motor 1 Offset = 1
			motor_2_offset <= 8'b000001; // Motor 2 Offset = 1
			motor_3_offset <= 8'b000001; // Motor 3 Offset = 1
			motor_4_offset <= 8'b000001; // Motor 4 Offset = 1
		end
   else if (thro_rec_val > 4 && thro_rec_val <= 6)
	   begin 
			motor_1_offset <= 8'b000010; // Motor 1 Offset = 2
			motor_2_offset <= 8'b000010; // Motor 2 Offset = 2
			motor_3_offset <= 8'b000010; // Motor 3 Offset = 2
			motor_4_offset <= 8'b000010; // Motor 4 Offset = 2
		end
   else if (thro_rec_val > 6 && thro_rec_val <= 8)
	   begin 
			motor_1_offset <= 8'b000011; // Motor 1 Offset = 3
			motor_2_offset <= 8'b000011; // Motor 2 Offset = 3
			motor_3_offset <= 8'b000011; // Motor 3 Offset = 3
			motor_4_offset <= 8'b000011; // Motor 4 Offset = 3
		end
   else if (thro_rec_val > 8 && thro_rec_val <= 10)
	   begin 
			motor_1_offset <= 8'b000100; // Motor 1 Offset = 4
			motor_2_offset <= 8'b000100; // Motor 2 Offset = 4
			motor_3_offset <= 8'b000100; // Motor 3 Offset = 4
			motor_4_offset <= 8'b000100; // Motor 4 Offset = 4
		end
   else if (thro_rec_val > 10 && thro_rec_val <= 12)
	   begin 
			motor_1_offset <= 8'b000101; // Motor 1 Offset = 5
			motor_2_offset <= 8'b000101; // Motor 2 Offset = 5
			motor_3_offset <= 8'b000101; // Motor 3 Offset = 5
			motor_4_offset <= 8'b000101; // Motor 4 Offset = 5
		end
   else if (thro_rec_val > 12 && thro_rec_val <= 14)
	   begin 
			motor_1_offset <= 8'b000110; // Motor 1 Offset = 6
			motor_2_offset <= 8'b000110; // Motor 2 Offset = 6
			motor_3_offset <= 8'b000110; // Motor 3 Offset = 6
			motor_4_offset <= 8'b000110; // Motor 4 Offset = 6
		end
   else if (thro_rec_val > 14 && thro_rec_val <= 16)
	   begin 
			motor_1_offset <= 8'b000111; // Motor 1 Offset = 7
			motor_2_offset <= 8'b000111; // Motor 2 Offset = 7
			motor_3_offset <= 8'b000111; // Motor 3 Offset = 7
			motor_4_offset <= 8'b000111; // Motor 4 Offset = 7
		end
   else if (thro_rec_val > 16 && thro_rec_val <= 18)
	   begin 
			motor_1_offset <= 8'b001000; // Motor 1 Offset = 8
			motor_2_offset <= 8'b001000; // Motor 2 Offset = 8
			motor_3_offset <= 8'b001000; // Motor 3 Offset = 8
			motor_4_offset <= 8'b001000; // Motor 4 Offset = 8
		end
   else if (thro_rec_val > 18 && thro_rec_val <= 20)
	   begin 
			motor_1_offset <= 8'b001001; // Motor 1 Offset = 9
			motor_2_offset <= 8'b001001; // Motor 2 Offset = 9
			motor_3_offset <= 8'b001001; // Motor 3 Offset = 9
			motor_4_offset <= 8'b001001; // Motor 4 Offset = 9
		end
   else if (thro_rec_val > 20 && thro_rec_val <= 22)
	   begin 
			motor_1_offset <= 8'b001010; // Motor 1 Offset = 10
			motor_2_offset <= 8'b001010; // Motor 2 Offset = 10
			motor_3_offset <= 8'b001010; // Motor 3 Offset = 10
			motor_4_offset <= 8'b001010; // Motor 4 Offset = 10
		end
   else if (thro_rec_val > 22 && thro_rec_val <= 24)
	   begin 
			motor_1_offset <= 8'b001011; // Motor 1 Offset = 11
			motor_2_offset <= 8'b001011; // Motor 2 Offset = 11
			motor_3_offset <= 8'b001011; // Motor 3 Offset = 11
			motor_4_offset <= 8'b001011; // Motor 4 Offset = 11
		end
   else if (thro_rec_val > 24 && thro_rec_val <= 26)
	   begin 
			motor_1_offset <= 8'b001100; // Motor 1 Offset = 12
			motor_2_offset <= 8'b001100; // Motor 2 Offset = 12
			motor_3_offset <= 8'b001100; // Motor 3 Offset = 12
			motor_4_offset <= 8'b001100; // Motor 4 Offset = 12
		end
   else if (thro_rec_val > 26 && thro_rec_val <= 28)
	   begin 
			motor_1_offset <= 8'b001101; // Motor 1 Offset = 13
			motor_2_offset <= 8'b001101; // Motor 2 Offset = 13
			motor_3_offset <= 8'b001101; // Motor 3 Offset = 13
			motor_4_offset <= 8'b001101; // Motor 4 Offset = 13
		end
   else if (thro_rec_val > 28 && thro_rec_val <= 30)
	   begin 
			motor_1_offset <= 8'b001110; // Motor 1 Offset = 14
			motor_2_offset <= 8'b001110; // Motor 2 Offset = 14
			motor_3_offset <= 8'b001110; // Motor 3 Offset = 14
			motor_4_offset <= 8'b001110; // Motor 4 Offset = 14
		end
   else if (thro_rec_val > 30 && thro_rec_val <= 32)
	   begin 
			motor_1_offset <= 8'b001111; // Motor 1 Offset = 15
			motor_2_offset <= 8'b001111; // Motor 2 Offset = 15
			motor_3_offset <= 8'b001111; // Motor 3 Offset = 15
			motor_4_offset <= 8'b001111; // Motor 4 Offset = 15
		end
   else if (thro_rec_val > 32 && thro_rec_val <= 34)
	   begin 
			motor_1_offset <= 8'b010000; // Motor 1 Offset = 16
			motor_2_offset <= 8'b010000; // Motor 2 Offset = 16
			motor_3_offset <= 8'b010000; // Motor 3 Offset = 16
			motor_4_offset <= 8'b010000; // Motor 4 Offset = 16
		end
   else if (thro_rec_val > 34 && thro_rec_val <= 36)
	   begin 
			motor_1_offset <= 8'b010001; // Motor 1 Offset = 17
			motor_2_offset <= 8'b010001; // Motor 2 Offset = 17
			motor_3_offset <= 8'b010001; // Motor 3 Offset = 17
			motor_4_offset <= 8'b010001; // Motor 4 Offset = 17
		end
   else if (thro_rec_val > 36 && thro_rec_val <= 38)
	   begin 
			motor_1_offset <= 8'b010010; // Motor 1 Offset = 18
			motor_2_offset <= 8'b010010; // Motor 2 Offset = 18
			motor_3_offset <= 8'b010010; // Motor 3 Offset = 18
			motor_4_offset <= 8'b010010; // Motor 4 Offset = 18
		end
   else if (thro_rec_val > 38 && thro_rec_val <= 40)
	   begin 
			motor_1_offset <= 8'b010011; // Motor 1 Offset = 19
			motor_2_offset <= 8'b010011; // Motor 2 Offset = 19
			motor_3_offset <= 8'b010011; // Motor 3 Offset = 19
			motor_4_offset <= 8'b010011; // Motor 4 Offset = 19
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