disp('++++++++++++++++++++++++++++++')
disp('例 5.3（Simulink を利用したシミュレーション）')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

A = [ 0  1  0  0
     -4 -2  4  2
      0  0  0  1
      2  1 -2 -1 ];
b = [ 0
      2
      0
      0 ];
c = [ 0  0  1  0 ];

k = [ -7/2 -5/2 -13/2 -11/2];
h = 10;

tf = 10;
sim('eg_5_03_R2018a',tf)    % R2018a 以降
% sim('eg_5_03_R2020a',tf)    % R2020a 以降
% sim('eg_5_03_R2023a',tf)    % R2023a 以降

figure(1)
set(gcf,'position',[50 50 900 420])

plot(t,y,'LineWidth',1.5)
grid

xlim([0 10])
ylim([0 1.5])
set(gca,'XTick',[0:1:10])
set(gca,'YTick',[0:0.5:1.5])
set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('y(t) [m]','FontName','Arial','FontSize',22)


