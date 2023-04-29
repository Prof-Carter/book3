close all

servo
x0 = zeros(4,1);

sim('simulink_servo_R2018a')
% sim('simulink_servo_R2020a')
% sim('simulink_servo_R2023a')

plot_data_cart
% plot_data_cart_custom
