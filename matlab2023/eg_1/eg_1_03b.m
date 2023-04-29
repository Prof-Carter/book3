disp('++++++++++++++++++++++++++++++')
disp('例 1.3（最適レギュレータによるコントローラ設計と')
disp('        Simulink によるシミュレーション）')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

disp(' ')
disp('--- M1 = 0.5, M2 = 1, k = 2, mu = 1 のときの状態空間表現 ------')
disp('--- （''eg_2_04.m'' を参照）                              ------')

M1 = 0.5;
M2 = 1;
k  = 2;
mu = 1;

A = [  0      1     0      0
     -k/M1 -mu/M1  k/M1  mu/M1
       0      0     0      1
      k/M2  mu/M2 -k/M2 -mu/M2 ]
b = [  0
      1/M1
       0  
       0  ]
c = [ 0   0   1   0 ]

disp(' ')
disp('--- 重み行列 Q, R ------')
Q = diag([0 0 60 0])
R = 1

disp(' ')
disp('--- コントローラ u(t) = k*x(t) + h*yref(t) ------')
k = - lqr(A,b,Q,R)

M0 = [ A  b
       c  0 ];
h = [ -k  1 ]*inv(M0)*[ zeros(4,1)
                           1      ]
% ------------------------------------------------------------------------------
tf = 5;
sim('eg_1_03_R2018a',tf)    % R2018a 以降
% sim('eg_1_03_R2020a',tf)    % R2020a 以降
% sim('eg_1_03_R2023a',tf)    % R2023a 以降

figure(1)
plot(t,y,'LineWidth',1.5)
grid

xlim([0 5])
ylim([0 1.5])

set(gca,'XTick',[0:1:5])
set(gca,'YTick',[0:0.5:1.5])

set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('y(t) [m]','FontName','Arial','FontSize',22)



