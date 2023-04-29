close all

optimal_servo

x0 = [ 0  0  0.25  0 ]';

sim('simulink_optimal_servo_R2018a')
% sim('simulink_optimal_servo_R2020a')
% sim('simulink_optimal_servo_R2023a')

plot_data_cart
% plot_data_cart_custom
