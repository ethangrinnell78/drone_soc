////	The default frequency is 2.08MHz.  Supported frequencies (in MHz) include:
////	2.08        4.16         8.31          15.65
////	2.15        4.29         8.58          16.63
////	2.22        4.43         8.87          17.73
////	2.29        4.59         9.17          19.00
////	2.38        4.75         9.50          20.46
////	2.46        4.93         9.85          22.17
////	2.56        5.12        10.23         24.18
////	2.66        5.32        10.64         26.60
////	2.77        5.54        11.08         29.56
////	2.89        5.78        11.57         33.25
////	3.02        6.05        12.09         38.00
////	3.17        6.33        12.67         44.33
////	3.33        6.65        13.30         53.20
////	3.50        7.00        14.00         66.50
////	3.69        7.39        14.78         88.67
////	3.91        7.82        15.65       133.00


module pwm 
	(
	out,
	pin33,
	pin35
	);
	input wire pin33;
	input wire pin35;
	output reg out = 0;
	
	integer count = 0;
	wire osc_clk;



//// Instantiate the internal oscillator.
	defparam OSCH_inst.NOM_FREQ = "53.20";
	OSCH OSCH_inst
		( 
		.STDBY(1'b0), 		// 0=Enabled, 1=Disabled also Disabled with Bandgap=OFF
		.OSC(osc_clk),
		.SEDSTDBY()     		// this signal is not required if not using SED
		);


//// Generate PWM signal.
	always @ (posedge osc_clk)
		begin
			if(pin33 == 1)
			begin
			if(count < 53_200)
				begin
					out <=  1;
					count <= count + 1;
				end
			else if (count >= 53_200 && count < 106_400)
				begin
					out <=  0;
					count <= count + 1;
				end
			else if (count >= 106_400)
				begin
					count <= 0;
				end
			end
			else if(pin35 == 1)
			begin
				if(count < 103_200)
					begin
						out <= 1;
						count <= count + 1;
					end
				else if(count >= 103_200 && count < 106_400)
					begin
						out <= 0;
						count <= count + 1;
					end
				else if(count >= 106_400)
					begin
						count <= 0;
					end		
				end
			 else if(count < 33_200)
				 begin
					out <= 1;
					count <= count + 1;
				end
			else if(count >= 33_200 && count < 106_400)
				begin
					out <= 0;
					count <= count + 1;
				end
			else if(count >= 106_400)
				begin
					out <= 0;
				end
		end

endmodule			
			
			
			
