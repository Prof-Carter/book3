close all

poleplace_acker
x0 = [0 1]';

sys = ss(A+B*K,zeros(2,1),eye(2),zeros(2,1));

t = linspace(0,1,1001);
x = initial(sys,x0,t);
plot_data_sfbk
% plot_data_sfbk2

figure(1)
movegui('northwest')

figure(2)
movegui('northeast')