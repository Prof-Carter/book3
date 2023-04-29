close all

following_observer

parameter_variation

sim('simulink_following_observer_R2018a')
% sim('simulink_following_observer_R2020a')
% sim('simulink_following_observer_R2023a')

plot_data_output
% plot_data_output_custom

figure(1)
movegui('northwest')

figure(2)
movegui('northeast')
