close all

following
x0 = zeros(4,1);

sim('simulink_following_R2018a')
% sim('simulink_following_R2020a')
% sim('simulink_following_R2023a')

plot_data_cart
% plot_data_cart_custom
