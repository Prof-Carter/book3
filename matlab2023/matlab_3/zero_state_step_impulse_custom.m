close all

plant
    
t = 0:0.01:5;

y = step(sysP,t);
figure(1); plot_data_custom

y = impulse(sysP,t);
figure(2); plot_data_custom

% -----
figure(1)
ylim([0 0.15])
set(gca,'XTick',0:1:5)
set(gca,'YTick',0:0.05:0.15)
title('step response','FontName','Arial','FontSize',22);
movegui('northwest')

figure(2)
ylim([-0.15 0.3])
set(gca,'XTick',0:1:5)
set(gca,'YTick',-0.15:0.15:0.3)
title('impulse response','FontName','Arial','FontSize',22);
movegui('northeast')
