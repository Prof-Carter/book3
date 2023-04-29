close all

poleplace_acker
x0 = [ 0  1 ]';

sim('simulink_sfbk_R2018a')
% sim('simulink_sfbk_R2020a')
% sim('simulink_sfbk_R2023a')

plot_data_sfbk
% plot_data_sfbk_custom

figure(1)
movegui('northwest')

figure(2)
movegui('northeast')