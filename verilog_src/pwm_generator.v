// PWM generator to output a PWM signal. 
module pwm_generator (pwm_out, offset, clk);
	
	// Define module inputs and outputs.
	input wire clk;
	input offset;
	output reg pwm_out;
	
	integer temp = 0;
	integer temp2 = 0;
	integer counter = 0;
	
	// Generate the PWM signal based on the offset for duty cycle.
	always @ (posedge clk)
	begin
			temp <= temp + 1;
			if (offset > counter)
				pwm_out <= 0;
			else 
				pwm_out <= 1;
			assign temp2 = temp % 532;//this will increment every 100th of a second
			if( temp2 == 0)
				counter <= counter + 1;
			if (counter >= 100)
			begin
				counter <= 0;
				temp <= 0;
				temp2 = 0;
			end
	end
		
endmodule			
			
			
			
