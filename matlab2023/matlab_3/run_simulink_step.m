close all

plant
x0 = [0 0]';

sim('simulink_step_R2018a')
% sim('simulink_step_R2020a')
% sim('simulink_step_R2023a')

plot_data
% plot_data_custom

% -----
figure(1)

ylim([0 0.15])
set(gca,'XTick',0:1:5)
set(gca,'YTick',0:0.05:0.15)