close all

plant
x0 = [ 1
       0 ];
   
t = 0:0.01:5;
% t = linspace(0,5,501);

y = initial(sysP,x0,t);

% --- グラフのカスタマイズ --------------------------------
figure(1)
plot(t,y,'r','LineWidth',1.5);
grid;

xlim([0 5]);
ylim([-1 1]);

set(gca,'XTick',0:1:5);
set(gca,'YTick',-1:0.5:1);

set(gca,'FontName','Times New Roman','FontSize',20);

xlabel('{\it{t}} [s]','FontName','Times New Roman','FontSize',22);
ylabel('{\it{y}}({\it{t}})','FontName','Times New Roman','FontSize',22);