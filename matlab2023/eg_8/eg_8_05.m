disp('++++++++++++++++++++++++++++++')
disp('例 8.5')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

A = [ 0  1  0  0
     -4 -2  4  2
      0  0  0  1
      2  1 -2 -1 ];
B = [ 0
      2
      0
      0 ];
C = [ 0  0  1  0 ];

n = 4;  % x(t) のサイズ
p = 1;  % u(t) のサイズ

q11 = 100;
q22 = 600;
Qe = blkdiag(C'*q11*C, q22);
Re  = 1;

Ae = [ A  zeros(n,1)
      -C  0 ];
Be = [ B
       0 ];
Ce = [-C  0 ];

Pe = care(Ae,Be,Qe,Re);

disp(' ')
disp('--- リカッチ方程式の解 --------');
P11 = Pe(  1:n  ,  1:n)
P12 = Pe(  1:n  ,n+1:n+p)
P22 = Pe(n+1:n+p,n+1:n+p)

disp(' ')
disp('--- K = inv(Re)*B''*P12 --------');
K = - inv(Re)*B'*P11

disp(' ')
disp('--- G = - inv(Re)*B''*P12 --------');
G = - inv(Re)*B'*P12

disp(' ')
disp('--- M0 = [ A  B');
disp('           C  0 ] --------');
M0 = [ A  B
       C  0 ]

disp(' ')
disp('--- Fa = [ -K+2*G*inv(P22)*P12''  1 ]*inv(M0)*[ 0')
disp('                                               1 ] --------');
Fa = [ -K+2*G*inv(P22)*P12'  1 ]*inv(M0)*[ zeros(n,p)
                                           1 ]

disp(' ')
disp('--- Fb = - 2*G*inv(P22)*P12'' --------');
Fb = - 2*G*inv(P22)*P12'


disp('++++++++++++++++++++++++++++++')
disp('例 8.5（つづき：Simulink を利用したシミュレーション）')
disp('++++++++++++++++++++++++++++++')

figure(1)
set(gcf,'position',[50 50 1200 750])

% ------------------------------------------------
x0 = [ 0
       0
       0
       0 ];

sim('eg_8_05_R2018a',5) 
% sim('eg_8_05_R2020a',5)
% sim('eg_8_05_R2023a',5)

% _______________________________
figure(1)
subplot(2,2,1)
plot(t,y_opt,'LineWidth',1.5)
hold on
plot(t,y,'--','LineWidth',1.5)
hold off

xlim([0 5])
ylim([0 1.5])
grid

set(gca,'XTick',[0:1:5])
set(gca,'YTick',[0:0.5:1.5])
set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('y(t) [m]','FontName','Arial','FontSize',22)

% _______________________________
figure(1)
subplot(2,2,3)
plot(t,u_opt,'LineWidth',1.5)
hold on
plot(t,u,'--','LineWidth',1.5)
hold off

xlim([0 5])
ylim([-8 4])
grid

set(gca,'XTick',[0:1:5])
set(gca,'YTick',[-8:4:4])
set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('u(t) [N]','FontName','Arial','FontSize',22)

% ------------------------------------------------
x0 = [ 0
       0
       0.25
       0 ];

sim('eg_8_05_R2018a',5)

% _______________________________
figure(1)
subplot(2,2,2)
plot(t,y_opt,'LineWidth',1.5)
hold on
plot(t,y,'--','LineWidth',1.5)
hold off

xlim([0 5])
ylim([0 1.5])
grid

set(gca,'XTick',[0:1:5])
set(gca,'YTick',[0:0.5:1.5])
set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('y(t) [m]','FontName','Arial','FontSize',22)

% _______________________________
figure(1)
subplot(2,2,4)
plot(t,u_opt,'LineWidth',1.5)
hold on
plot(t,u,'--','LineWidth',1.5)
hold off

xlim([0 5])
ylim([-8 4])
grid

set(gca,'XTick',[0:1:5])
set(gca,'YTick',[-8:4:4])
set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('u(t) [N]','FontName','Arial','FontSize',22)
