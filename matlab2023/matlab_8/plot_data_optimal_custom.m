% =======================================================
figure(1);
plot(t,x(:,1),'r','LineWidth',1.5); 
grid;
 
% --- グラフのカスタマイズ --------------------------------
xlim([0 4]);
ylim([-0.5 1.5]);
 
set(gca,'XTick',0:1:4);
set(gca,'YTick',-0.5:0.5:1.5);
 
set(gca,'FontName','Times New Roman','FontSize',20);
 
xlabel('{\it{t}} [s]','FontName','Times New Roman','FontSize',22);
ylabel('{\it{x}}_{1}({\it{t}}) [m]','FontName','Times New Roman','FontSize',22);
 
 
% =======================================================
figure(2);
plot(t,x(:,2),'r','LineWidth',1.5); 
grid;
 
% --- グラフのカスタマイズ --------------------------------
xlim([0 4]);
ylim([-2.4 0.8]);
 
set(gca,'XTick',[0:1:4]);
set(gca,'YTick',[-2.4:0.8:0.8]);
 
set(gca,'FontName','Times New Roman','FontSize',20);
 
xlabel('{\it{t}} [s]','FontName','Times New Roman','FontSize',22);
ylabel('{\it{x}}_{2}({\it{t}}) [m/s]','FontName','Times New Roman','FontSize',22);

