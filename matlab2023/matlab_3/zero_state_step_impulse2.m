close all

plant
    
t = 0:0.01:5;

figure(1); step(sysP,t);
figure(2); impulse(sysP,t);

% -----
figure(1)
ylim([0 0.15])
set(gca,'XTick',0:1:5)
set(gca,'YTick',0:0.05:0.15)
movegui('northwest')

figure(2)
ylim([-0.15 0.3])
set(gca,'XTick',0:1:5)
set(gca,'YTick',-0.15:0.15:0.3)
movegui('northeast')