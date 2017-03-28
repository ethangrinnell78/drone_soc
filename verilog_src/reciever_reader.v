module reciever_reader(
			sys_clk,
			pwm_in,
			pwm_out
                       );
   
   //Parameters
   // Nine because the internal counter needs to hold a number twice as big as the output 
   parameter COUNTER_SIZE = 9;
   // determined by the input clock frequency (Want divided period to happen about 256 times per millisecond)
   parameter DIVIDER_SIZE  = 208;
   parameter LONG_SEQUENCE = 9'b000000000;// must must must change to zeros later
   parameter SHORT_SEQUENCE = 8'b11111111;
   //   inputs
   input wire sys_clk, pwm_in;
   
   //  output
   output wire [COUNTER_SIZE-2 : 0] pwm_out; 
   
   // internal registers
   reg [COUNTER_SIZE-1 : 0] 	   counter_int; // internal
   reg [COUNTER_SIZE-2 : 0] 	   counter_div; // for dividing clock
   reg [COUNTER_SIZE-2 : 0] 	   out_holder;
   reg 				   pwm_h;
   
   // output has a continuously assigned value
   assign pwm_out = out_holder;
      
	// all sequential logic for reader in one always block
   always @ (posedge sys_clk)
     begin
	if(~pwm_in && (counter_int != LONG_SEQUENCE))
	  begin
	     if(counter_int[COUNTER_SIZE-1])
	       begin
		  out_holder[COUNTER_SIZE-2 : 0] <= ~counter_int[COUNTER_SIZE-2 :0];	  
	       end
	     else
	       begin
		  out_holder <= SHORT_SEQUENCE;
	       end
	     counter_int <= LONG_SEQUENCE;	     
	  end
	else
	  begin
	     out_holder <= out_holder;
	  end	
	
	if (pwm_in && (counter_div == 0))
	  begin
	     counter_int <= counter_int + 1;
	     counter_div <= DIVIDER_SIZE;
	  end
	else
	  begin
	     counter_div <= counter_div - 1;
	  end
  	end
endmodule
