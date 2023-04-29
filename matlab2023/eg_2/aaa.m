disp('++++++++++++++++++++++++++++++')
disp('—á 2.9')
disp('++++++++++++++++++++++++++++++')

disp('++++++++++++++++++++++++++++++')
disp('—á 2.1, 2.2')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

M = 0.390;
J = 0.0712;
l = 0.204;
c = 0.695;
g = 9.81;

for u = [0.25 0.5 1 2]
    sim('eg_2_01_02_R2018a',10);
    % sim('eg_2_01_02_R2020a',10);
    % sim('eg_2_01_02_R2023a',10);
    
    figure(1);
    plot(t,y1,'LineWidth',1.5);
    hold on

    figure(2);
    plot(t,y2,'LineWidth',1.5);
    hold on
end

for i = 1:2
    figure(i)
    hold off
    grid

    xlim([0 10])
    ylim([0 3*pi])

    set(gca,'XTick',[0:2:10])
    set(gca,'YTick',[0:pi/2:3*pi])
    set(gca,'YTickLabel',{'0','\pi/2','\pi','3\pi/2','2\pi','5\pi/2','3\pi'})
    set(gca,'FontName','Arial','FontSize',20)

    xlabel('time [s]','FontName','Arial','FontSize',22)
    ylabel('angle [rad]','FontName','Arial','FontSize',22)
end

figure(1); movegui('northwest')
figure(2); movegui('northeast')

