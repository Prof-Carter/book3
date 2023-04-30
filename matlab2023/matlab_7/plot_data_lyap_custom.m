figure(1);
plot(t,x(:,1),'b',  'LineWidth',1.5); hold on
plot(t,x(:,2),'r--','LineWidth',1.5); hold off
grid;

% --- グラフのカスタマイズ --------------------------------
xlim([0 4]);
ylim([-0.5 1]);
 
set(gca,'XTick',[0:1:4]);
set(gca,'YTick',[-0.5:0.5:1]);
 
set(gca,'FontName','Times New Roman','FontSize',20);

xlabel('{\it{t}} [s]','FontName','Times New Roman','FontSize',22);
ylabel('{\it{x}}_{1}({\it{t}}) and {\it{x}}_{2}({\it{t}})','FontName','Times New Roman','FontSize',22);

legend('{\it{x}}_{1}({\it{t}})','{\it{x}}_{2}({\it{t}})');
set(legend,'FontName','Times New Roman','FontSize',20);

% ==========================================================
figure(2);
plot(t,phi, 'b',  'LineWidth',1.5); hold on
plot(t,dphi,'r--','LineWidth',1.5); hold off
grid;

% --- グラフのカスタマイズ --------------------------------
xlim([0 4]);
% ylim([-1 0.5]);
 
set(gca,'XTick',[0:1:4]);
% set(gca,'YTick',[-1:0.5:0.5]);
 
set(gca,'FontName','Times New Roman','FontSize',20);

xlabel('{\it{t}} [s]','FontName','Times New Roman','FontSize',22);
ylabel('{\it{\phi}}({\it{x}}({\it{t}})) and {\it{d\phi}}({\it{x}}({\it{t}}))/{\it{dt}}','FontName','Times New Roman','FontSize',22);

legend({'{\it{\phi}}({\it{x}}({\it{t}}))','{\it{d\phi}}({\it{x}}({\it{t}}))/{\it{dt}}'},'Location','southeast');
set(legend,'FontName','Times New Roman','FontSize',20);

