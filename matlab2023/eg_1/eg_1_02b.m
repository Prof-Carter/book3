disp('++++++++++++++++++++++++++++++')
disp('ó· 1.2ÅiSimulink Ç…ÇÊÇÈÉVÉ~ÉÖÉåÅ[ÉVÉáÉìÅj')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

M1 = 0.5;
M2 = 1;
k  = 2;
mu = 1;

numP = [ mu  k ]
denP = [ M1*M2  (M1+M2)*mu  (M1+M2)*k  0  0 ]

% ------------------------------------------------
disp(' ')
disp('--- É÷n, Éƒ ------')
wn = 0.5
z  = 0.7

disp(' ')
disp('--- kP, kD ------')
kP = (3*wn^2)/2
kD =  3*wn*z

tf = 20;
sim('eg_1_02_R2018a',tf)	% R2018a à»ç~
% sim('eg_1_02_R2020a',tf)	% R2020a à»ç~
% sim('eg_1_02_R2023a',tf)	% R2023a à»ç~

figure(1)
plot(t,yM,'--','LineWidth',1.5); hold on
plot(t,y      ,'LineWidth',1.5); hold off
grid

xlim([0 20])
ylim([0 1.5])

set(gca,'XTick',[0:5:20])
set(gca,'YTick',[0:0.5:1.5])

set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('yM(t), y(t) [m]','FontName','Arial','FontSize',22)

legend({'yM(t)','y(t)'},'Location','southeast')
set(legend,'FontName','Arial','FontSize',20)

movegui('northwest');

% ------------------------------------------------
disp(' ')
disp('--- É÷n, Éƒ ------')
wn = 2
z  = 0.7

disp(' ')
disp('--- kP, kD ------')
kP = (3*wn^2)/2
kD =  3*wn*z

tf = 5;
sim('eg_1_02_R2018a',tf)	% R2018a à»ç~

figure(2)
plot(t,yM,'--','LineWidth',1.5); hold on
plot(t,y ,     'LineWidth',1.5); hold off
grid

xlim([0 5])
ylim([0 1.5])

set(gca,'XTick',[0:1:5])
set(gca,'YTick',[0:0.5:1.5])

set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('yM(t), y(t) [m]','FontName','Arial','FontSize',22)

legend({'yM(t)','y(t)'},'Location','southeast')
set(legend,'FontName','Arial','FontSize',20)

movegui('northeast');


