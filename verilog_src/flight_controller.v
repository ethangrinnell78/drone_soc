module flight_controller(motor1_pwm, motor2_pwm, motor3_pwm, motor4_pwm, pitch_pwm, roll_pwm, yaw_pwm, throttle_pwm);

output motor1_pwm;
output motor2_pwm;
output motor3_pwm;
output motor4_pwm;
input wire pitch_pwm;
input wire roll_pwm;
input wire yaw_pwm;
input wire throttle_pwm;

wire clk;
wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19, w20;
wire [7:0] w21, w22, w23, w24;
wire m1, m2, m3, m4;

clock clock_inst(clk);

reciever_reader pitch_reader(w1, pitch_pwm, clk);
reciever_reader roll_reader(w2, roll_pwm, clk);
reciever_reader yaw_reader(w3, yaw_pwm, clk);
reciever_reader throttle_reader(w4, throttle_pwm, clk);

/*output the offset for the respective control to motor 1 on the first wire, motor 2 on the second wire
, motor 3 on the third wire, and motor 4 on the fourth wire.*/
pitch_offset_generator pitch_offset_generator_inst(w5, w6, w7, w8, w1, clk);
roll_offset_generator roll_offset_generator_inst(w9, w10, w11, w12, w2, clk);
yaw_offset_generator yaw_offset_generator_inst(w13, w14, w15, w16, w3, clk);
throttle_offset_generator throttle_offset_generator_inst(w17, w18, w19, w20, w4, clk);

motor_offset_summer motor_1_offset_summer(w21/*output offset of motor 1 to w21*/, w5, w9, w13, w17, clk);
motor_offset_summer motor_2_offset_summer(w22/*output offset of motor 2 to w22*/, w6, w10, w14, w18, clk);
motor_offset_summer motor_3_offset_summer(w23/*output offset of motor 3 to w23*/, w7, w11, w15, w19, clk);
motor_offset_summer motor_4_offset_summer(w24/*output offset of motor 3 to w24*/, w8, w12, w16, w20, clk);

pwm_generator motor1_pwm_generator(motor1_pwm, w21, clk);
pwm_generator motor2_pwm_generator(motor2_pwm, w22, clk);
pwm_generator motor3_pwm_generator(motor3_pwm, w23, clk);
pwm_generator motor4_pwm_generator(motor4_pwm, w24, clk);

endmodule