figure(1);
plot(t,y,'r','LineWidth',1.5); 
grid;

% --- グラフのカスタマイズ --------------------------------
xlim([0 10]);
ylim([0 1.5]);

set(gca,'XTick',0:1:10);
set(gca,'YTick',0:0.25:1.5);

set(gca,'FontName','Times New Roman','FontSize',20);

xlabel('{\it{t}} [s]','FontName','Times New Roman','FontSize',22);
ylabel('position (cart2) [m]','FontName','Times New Roman','FontSize',22);

set(gcf,'position',[50 50 900 420])