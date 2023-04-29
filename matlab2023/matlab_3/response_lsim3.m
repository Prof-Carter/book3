close all

plant
    
t = 0:0.01:5;
u(1:200)   = t(1:200)/2;
u(201:501) = ones(1,301);
x0 = [ 0.1  0 ]';

y = lsim(sysP,u,t,x0);

% --- グラフのカスタマイズ --------------------------------
figure(1)
plot(t,y,'r','LineWidth',1.5);
grid;

xlim([0 5]);
ylim([-0.1 0.2]);

set(gca,'XTick',[0:1:5]);
set(gca,'YTick',[-0.1:0.1:0.2]);

set(gca,'FontName','Times New Roman','FontSize',20);

xlabel('{\it{t}} [s]','FontName','Times New Roman','FontSize',22);
ylabel('{\it{y}}({\it{t}})','FontName','Times New Roman','FontSize',22);

movegui('northwest')

% --- グラフのカスタマイズ --------------------------------
figure(2)
plot(t,u,'r','LineWidth',1.5);
grid;

xlim([0 5]);
ylim([0 1.5]);

set(gca,'XTick',[0:1:5]);
set(gca,'YTick',[0:0.5:1.5]);

set(gca,'FontName','Times New Roman','FontSize',20);

xlabel('{\it{t}} [s]','FontName','Times New Roman','FontSize',22);
ylabel('{\it{u}}({\it{t}})','FontName','Times New Roman','FontSize',22);

movegui('northeast')
