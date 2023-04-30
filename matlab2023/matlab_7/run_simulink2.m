close all

lyapunov_lyap2

x0 = [ 1  0 ]'

sim('simulink_lyapunov_R2018a')
% sim('simulink_lyapunov_R2020a')
% sim('simulink_lyapunov_R2023a')

plot_data_lyap
% plot_data_lyap_custom

figure(1)
movegui('northwest')

figure(2)
movegui('northeast')
