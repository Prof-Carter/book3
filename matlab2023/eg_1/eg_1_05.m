disp('++++++++++++++++++++++++++++++')
disp('例 1.5（Simulink によるシミュレーション）')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

M1 = 2;
M2 = 1;
k  = 2;
mu = 2;

disp(' ')
disp('--- ωn1, ζ1 ------')
wn1 = 5
z1  = 0.7

disp(' ')
disp('--- kP1, kD1 ------')
kP1 = M1*wn1^2
kD1 = 2*M1*z1*wn1

disp(' ')
disp('--- ωn2, ζ2 ------')
wn2 = 5
z2  = 0.7

disp(' ')
disp('--- kP2, kD2 ------')
kP2 = M2*wn2^2
kD2 = 2*M2*z2*wn2

% ------------------------------------------------------------------------------
tf = 10;
sim('eg_1_05_R2018a',tf)    % R2018a 以降
% sim('eg_1_05_R2020a',tf)    % R2020a 以降
% sim('eg_1_05_R2023a',tf)    % R2023a 以降

% ------------------------------------------------------------------------------
figure(1)
plot(t,yref1, 'k', 'LineWidth',1); hold on
plot(t,yM1,   '--','LineWidth',1.5 ); 
plot(t,y1,         'LineWidth',1.5 ); hold off
grid

xlim([0 10])
ylim([-0.5 1.5])

set(gca,'XTick',[0:2:10])
set(gca,'YTick',[-0.5:0.5:1.5])

set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('{y}_{1}(t) [m]','FontName','Arial','FontSize',22)

legend({'{y}_{1}^{ref}(t)','{y}_{M1}(t)','{y}_{1}(t)'},'NumColumns',3)
set(legend,'FontName','Arial','FontSize',16)

movegui('northwest');

% ------------------------------------------------------------------------------
figure(2)
plot(t,yref2, 'k', 'LineWidth',1); hold on
plot(t,yM2,   '--','LineWidth',1.5 ); 
plot(t,y2,         'LineWidth',1.5 ); hold off
grid

xlim([0 10])
ylim([-0.5 1.5])

set(gca,'XTick',[0:2:10])
set(gca,'YTick',[-0.5:0.5:1.5])

set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('{y}_{2}(t) [m]','FontName','Arial','FontSize',22)

legend({'{y}_{2}^{ref}(t)','{y}_{M2}(t)','{y}_{2}(t)'},'NumColumns',3)
set(legend,'FontName','Arial','FontSize',16)

movegui('northeast');
