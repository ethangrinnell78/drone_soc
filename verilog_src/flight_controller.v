module flight_controller(motor1_pwm, motor2_pwm, motor3_pwm, motor4_pwm, pitch_pwm, roll_pwm, yaw_pwm, throttle_pwm);

output wire motor1_pwm;
output wire motor2_pwm;
output wire motor3_pwm;
output wire motor4_pwm;
input wire pitch_pwm;
input wire roll_pwm;
input wire yaw_pwm;
input wire throttle_pwm;

wire clk;
wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12;

clock clock_inst(clk);

reciever_reader pitch_reader(w1, pitch_pwm, clk);
reciever_reader roll_reader(w2, roll_pwm, clk);
reciever_reader yaw_reader(w3, yaw_pwm, clk);
reciever_reader throttle_reader(w4, throttle_pwm, clk);

pitch_offset_generator pitch_offset_generator_inst(w5, w6, w7, w8, w1, clk);
roll_offset_generator roll_offset_generator_inst(w5, w6, w7, w8, w2, clk);
yaw_offset_generator yaw_offset_generator_inst(w5, w6, w7, w8, w3, clk);
throttle_offset_generator throttle_offset_generator_inst(w5, w6, w7, w8, w4, clk);

//how do the summers connect now?

pwm_generator motor1_pwm_generator(motor1_pwm, clk, 8'b01111111);
pwm_generator motor2_pwm_generator(motor2_pwm, clk, 8'b00000001);
pwm_generator motor3_pwm_generator(motor3_pwm, clk, 8'b00000011);
pwm_generator motor4_pwm_generator(motor4_pwm, clk, 8'b00001111);

endmodule