// PWM generator to output a PWM signal. 
module pwm_generator (pwm_out, clk, offset);
	
	// Define module inputs and outputs.
	input wire clk;
	input [7:0] offset;
	output reg pwm_out;
	
	reg [7:0] counter = 8'b00000000;
	
	// Generate the PWM signal based on the offset for duty cycle.
	always @ (posedge clk)
	begin
			if (offset > counter)
				pwm_out <= 0;
			else 
				pwm_out <= 1;

			counter <= counter + 1'b1;
			if (counter >= 8'b11111111)
				counter <= 8'b00000000;
	end
		
endmodule			
			
			
			
