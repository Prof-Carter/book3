disp('++++++++++++++++++++++++++++++')
disp('問題 6.4 (1)（Simulink によるシミュレーション）')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

A = [ 0   1
      0 -10 ];
b = [  0
      10 ];
c = [ 1  0 ];

x0 = [ 1
      -1 ];

x0_hat = [ 0
           0 ];

l = [ -6
      -8 ];

tf = 1;
sim('eg_6_04_1_R2018a',tf);  % R2018a 以降
% sim('eg_6_04_1_R2020a',tf);  % R2020a 以降
% sim('eg_6_04_1_R2023a',tf);  % R2023a 以降

figure(1)
set(gcf,'position',[50 50 1200 750])

subplot(2,2,1)
plot(t,x(:,1),         'LineWidth',1.5);  hold on
plot(t,x_hat(:,1),'--','LineWidth',1.5);  hold off

subplot(2,2,3)
plot(t,x(:,2),         'LineWidth',1.5);  hold on
plot(t,x_hat(:,2),'--','LineWidth',1.5);  hold off


% ----------------------------------------------------------
l = [ -22
      -40 ];

tf = 1;
sim('eg_6_04_1_R2018a',tf);  % R2018a 以降
% sim('eg_6_04_1_R2020a',tf);  % R2020a 以降
% sim('eg_6_04_1_R2023a',tf);  % R2023a 以降

% -----
subplot(2,2,2)
plot(t,x(:,1),         'LineWidth',1.5);  hold on
plot(t,x_hat(:,1),'--','LineWidth',1.5);  hold off

% -----
subplot(2,2,4)
plot(t,x(:,2),         'LineWidth',1.5);  hold on
plot(t,x_hat(:,2),'--','LineWidth',1.5);  hold off


for i = 1:2
    subplot(2,2,i)
    grid

    xlim([0 1])
    ylim([0 1.5])
    set(gca,'xtick',[0:0.2:1])
    set(gca,'ytick',[0:0.5:1.5])
    set(gca,'FontName','Arial','FontSize',15)

    xlabel('t [s]','FontName','Arial','FontSize',16)
    ylabel('x1(t), x1hat(t) [rad]','FontName','Arial','FontSize',16)

    legend({'x1(t)','x1hat(t)'},'Location','southeast')
    set(legend,'FontName','Arial','FontSize',15)

    % -----
    subplot(2,2,i+2)
    grid

    xlim([0 1])
    ylim([-1 2])

    set(gca,'xtick',[0:0.2:1])
    set(gca,'ytick',[-1:1:2])
    set(gca,'FontName','Arial','FontSize',15)

    xlabel('t [s]','FontName','Arial','FontSize',16)
    ylabel('x2(t), x2hat(t) [rad]','FontName','Arial','FontSize',16)

    legend({'x2(t)','x2hat(t)'},'Location','northeast')
    set(legend,'FontName','Arial','FontSize',15)
end

subplot(2,2,1)
title('- 8 \pm 2j に配置','FontName','MS UI Gothic','FontSize',16)

subplot(2,2,2)
title('- 16 \pm 2j に配置','FontName','MS UI Gothic','FontSize',16)
