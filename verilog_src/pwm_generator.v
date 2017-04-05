module pwm_generator(PWM_out, x_in, clk_in);   			
            output reg PWM_out = 1; //PWM signal out
            input [7:0] x_in;     //control value that defines pulse width
            input clk_in;     //clock for counter

            reg [7:0] counter = 0;

            always@ (posedge clk_in )begin
                 /* if ( counter < x_in )
                        PWM_out <= 1;
                  else
                        PWM_out <= 0;*/
                  counter <= counter+1;
                  end
endmodule

 /*
//Sigma Delta PWM unsigned version
module SigmaDeltaPWM(PWM_out, x_in, clk_in);    
            parameter MAXBITS = 8;  //maximum number of bits for input value
           
		    output reg PWM_out = 1; //PWM signal out
            input [MAXBITS-1:0] x_in;     //control value that defines pulse width
			input clk_in;     //clock for counter
     
            reg  [MAXBITS:0] Sigma = 0;   //summer
           
            always@ (posedge clk_in) begin  //see 8 bit version for non blocking version       
                  Sigma = Sigma + x_in; //pwm_value;
                  PWM_out = Sigma[MAXBITS];
                  Sigma[MAXBITS] = 0;     //Delta: if larger or equal to 256 it subtracts it
            end
 
endmodule*/