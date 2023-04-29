% ===================================================================
figure(1)
set(gcf,'position',[100 100 900 650])

% ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
figure(1); subplot(2,2,1);
plot(t,x(:,1),    'r',  'LineWidth',1.5);   hold on
plot(t,x_hat(:,1),'b--','LineWidth',1.5); hold off
grid;

xlim([0 5]);
ylim([-1 2]);

% --- グラフのカスタマイズ --------------------------------
set(gca,'XTick',0:1:5);
set(gca,'YTick',-1:1:2);

set(gca,'FontName','Times New Roman','FontSize',16);

xlabel('{\it{t}} [s]','FontName','Times New Roman','FontSize',18);
ylabel('position (cart1) [m]','FontName','Times New Roman','FontSize',18);

legend({'x1','x1hat'},'Location','southeast')
set(legend,'FontName','Times New Roman','FontSize',16);

% ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
figure(1); subplot(2,2,2);
plot(t,x(:,2),    'r',  'LineWidth',1.5);   hold on
plot(t,x_hat(:,2),'b--','LineWidth',1.5); hold off
grid;

xlim([0 5]);
ylim([-4 8]);

% --- グラフのカスタマイズ --------------------------------
set(gca,'XTick',0:1:5);
set(gca,'YTick',-4:4:8);

set(gca,'FontName','Times New Roman','FontSize',16);

xlabel('{\it{t}} [s]','FontName','Times New Roman','FontSize',18);
ylabel('velocity (cart1) [m/s]','FontName','Times New Roman','FontSize',18);

legend({'x2','x2hat'},'Location','southeast')
set(legend,'FontName','Times New Roman','FontSize',16);

% ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
figure(1); subplot(2,2,3);
plot(t,x(:,3),    'r',  'LineWidth',1.5);   hold on
plot(t,x_hat(:,3),'b--','LineWidth',1.5); hold off
grid;

xlim([0 5]);
ylim([0 1.5]);

% --- グラフのカスタマイズ --------------------------------
set(gca,'XTick',0:1:5);
set(gca,'YTick',0:0.5:1.5);

set(gca,'FontName','Times New Roman','FontSize',16);

xlabel('{\it{t}} [s]','FontName','Times New Roman','FontSize',18);
ylabel('position (cart2) [m]','FontName','Times New Roman','FontSize',18);

legend({'x3','x3hat'},'Location','southeast')
set(legend,'FontName','Times New Roman','FontSize',16);

% ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
figure(1); subplot(2,2,4);
plot(t,x(:,4),    'r',  'LineWidth',1.5);   hold on
plot(t,x_hat(:,4),'b--','LineWidth',1.5); hold off
grid;

xlim([0 5]);
ylim([-1.5 3]);

% --- グラフのカスタマイズ --------------------------------
set(gca,'XTick',0:1:5);
set(gca,'YTick',-1.5:1.5:3);

set(gca,'FontName','Times New Roman','FontSize',16);

xlabel('{\it{t}} [s]','FontName','Times New Roman','FontSize',18);
ylabel('velocity (cart2) [m/s]','FontName','Times New Roman','FontSize',18);

legend({'x4','x4hat'},'Location','southeast')
set(legend,'FontName','Times New Roman','FontSize',16);


% ===================================================================
figure(2)
set(gcf,'position',[50 50 900 300])

figure(2); 
plot(t,x(:,3),'r','LineWidth',1.5);
grid;

% --- グラフのカスタマイズ --------------------------------
xlim([0 15]);
ylim([-0.25 1.25]);

set(gca,'XTick',0:1:15);
set(gca,'YTick',-0.25:0.25:1.25);

set(gca,'FontName','Times New Roman','FontSize',16);

xlabel('{\it{t}} [s]','FontName','Times New Roman','FontSize',18);
ylabel('position (cart2) [m]','FontName','Times New Roman','FontSize',18);
