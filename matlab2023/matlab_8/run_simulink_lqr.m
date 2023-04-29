close all

optimal_lqr

x0 = [ 1  0 ]'

sim('simulink_sfbk_R2018a')
% sim('simulink_sfbk_R2020a')
% sim('simulink_sfbk_R2023a')

plot_data_optimal
% plot_data_optimal_custom

figure(1)
movegui('northwest')

figure(2)
movegui('northeast')
