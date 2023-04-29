disp('++++++++++++++++++++++++++++++')
disp('例 1.2（2 次の規範モデルの単位ステップ応答）')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

t = 0:0.001:10;
wn = 1;

% ------------------------------------------------
for z = 0.1:0.1:0.9
    sys_P = tf(wn^2,[1 2*z*wn wn^2]);
    y = step(sys_P,t);

    figure(1)
    plot(t,y,'LineWidth',1.5); hold on
end

figure(1)
grid
hold off

xlim([0 10])
ylim([0 2])

set(gca,'XTick',[0:2:10])
set(gca,'YTick',[0:0.5:2])

set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('yM(t)','FontName','Arial','FontSize',22)

title('\zeta = 0.1, 0.2, ..., 0.9','FontName','Arial','FontSize',22)

movegui('northwest');

% ------------------------------------------------
for z = 1:0.5:3
    sys_P = tf(wn^2,[1 2*z*wn wn^2]);
    y = step(sys_P,t);

    figure(2)
    plot(t,y,'LineWidth',1.5); hold on
end

figure(2)
grid
hold off

xlim([0 10])
ylim([0 2])

set(gca,'XTick',[0:2:10])
set(gca,'YTick',[0:0.5:2])

set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('yM(t)','FontName','Arial','FontSize',22)

title('\zeta = 1, 1.5, ..., 3','FontName','Arial','FontSize',22)

movegui('northeast');

