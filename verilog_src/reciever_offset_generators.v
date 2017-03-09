module throttle_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, throttle_offset, clk);
output motor_1_offset;
output motor_2_offset;
output motor_3_offset;
output motor_4_offset;
input throttle_offset;
input clk;

endmodule

module pitch_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, pitch_offset, clk);
output motor_1_offset;
output motor_2_offset;
output motor_3_offset;
output motor_4_offset;
input pitch_offset;
input clk;

endmodule

module roll_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, roll_offset, clk);
output motor_1_offset;
output motor_2_offset;
output motor_3_offset;
output motor_4_offset;
input roll_offset;
input clk;

endmodule

module yaw_offset_generator(motor_1_offset, motor_2_offset, motor_3_offset, motor_4_offset, yaw_offset, clk);
output motor_1_offset;
output motor_2_offset;
output motor_3_offset;
output motor_4_offset;
input clk;
input yaw_offset;

endmodule
