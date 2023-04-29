disp('++++++++++++++++++++++++++++++')
disp('例 1.6（最適レギュレータによるコントローラ設計と')
disp('　　　　Simulink によるシミュレーション）')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

disp(' ')
disp('--- M1 = 0.5, M2 = 1, k = 2, mu = 1 のときの状態空間表現 ------')

M1 = 2;
M2 = 1;
k  = 2;
mu = 2;

A = [  0      1     0      0
     -k/M1 -mu/M1  k/M1  mu/M1
       0      0     0      1
      k/M2  mu/M2 -k/M2 -mu/M2 ]
B = [  0    0
      1/M1  0
       0    0
       0   1/M2 ]
C = [ 1  0  0  0
      0  0  1  0 ]
D = [ 0  0
      0  0 ]

disp(' ')
disp('--- 重み行列 Q, R ------')
q1 = 2200;
q2 = 0;
q3 = 800;
q4 = 0;
r1 = 1;
r2 = 1;
Q = diag([q1 q2 q3 q4])
R = diag([r1 r2])

disp(' ')
disp('--- コントローラ u(t) = K*x(t) + H*yref(t) ------')
K = - lqr(A,B,Q,R)

M0 = [ A  B
       C  D ];
H = [ -K  eye(2) ]*inv(M0)*[ zeros(4,2)
                               eye(2)   ]

% ------------------------------------------------------------------------------
tf = 10;
sim('eg_1_06_R2018a',tf)    % R2018a 以降
% sim('eg_1_06_R2020a',tf)    % R2020a 以降
% sim('eg_1_06_R2023a',tf)    % R2023a 以降

% ------------------------------------------------------------------------------
figure(1)
plot(t,yref(:,1),'k','LineWidth',1); hold on
plot(t,y(:,1),       'LineWidth',1.5 ); hold off
grid

xlim([0 10])
ylim([-0.5 1.5])

set(gca,'XTick',[0:2:10])
set(gca,'YTick',[-0.5:0.5:1.5])

set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('{y}_{1}(t) [m]','FontName','Arial','FontSize',22)

legend({'{y}_{1}^{ref}(t)','{y}_{1}(t)'},'NumColumns',3)
set(legend,'FontName','Arial','FontSize',16)

movegui('northwest');

% ------------------------------------------------------------------------------
figure(2)
plot(t,yref(:,2),'k','LineWidth',1); hold on
plot(t,y(:,2),       'LineWidth',1.5 ); hold off
grid

xlim([0 10])
ylim([-0.5 1.5])

set(gca,'XTick',[0:2:10])
set(gca,'YTick',[-0.5:0.5:1.5])

set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('{y}_{2}(t) [m]','FontName','Arial','FontSize',22)

legend({'{y}_{2}^{ref}(t)','{y}_{2}(t)'},'NumColumns',3)
set(legend,'FontName','Arial','FontSize',16)

movegui('northeast');
