close all

plant2

t = 0:0.01:20;
% t = linspace(0,20,2001);

% 零入力応答
x0 = [ 1; 0; -1; 0 ];

y = initial(sysP,x0,t);
y1 = y(:,1);
y2 = y(:,2);

figure(1); plot_data2
% figure(1); plot_data2_custom

% 単位ステップ応答
y = step(sysP,t);

y11 = y(:,1,1);  y21 = y(:,2,1);
y12 = y(:,1,2);  y22 = y(:,2,2);

y1 = y11 + y12;
y2 = y21 + y22;

figure(2); plot_data2
% figure(2); plot_data2_custom

% -----
figure(1)
ylim([-1 1])
set(gca,'XTick',0:4:20)
set(gca,'YTick',-1:0.5:1)
movegui('northwest')

figure(2)
ylim([0 2])
set(gca,'XTick',0:4:20)
set(gca,'YTick',0:0.5:2)
movegui('northeast')
