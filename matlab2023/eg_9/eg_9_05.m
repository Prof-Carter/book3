disp('++++++++++++++++++++++++++++++')
disp('例 9.5')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

% ----------
J  = 0.0712;
M  = 0.390;
mu = 0.695;
l  = 0.204;
g  = 9.81;

A = [     0      1
      M*g*l/J  -mu/J ];
B = [  0
      1/J ];
% ----------
ep = 1e-5;              % 十分小さな正数 <--- 加筆
% ----------
n = 2;  p = 1;
X = sdpvar(n,n,'sy');
F = sdpvar(p,n,'f');
Z = sdpvar(n,n,'sy');
LMI = [];
% ----------
M = A*X + B*F;
% ----------
qc = -5;
rc =  4;

% ***** 以前の記述方法 *****
% M_D3 = [qc*(M+M')+(rc^2-qc^2)*X  M
%                   M'             X ];
% LMI = [LMI, M_D3 > 0];
% ***** 最近の記述方法 *****
M_D3 = [qc*(M+M')+(rc^2-qc^2)*X  M
                  M'             X ];
LMI = [LMI, M_D3 >= ep*eye(length(M_D3))];      % M_D3 ≧ ep*I (> 0)

% ----------
Qh = diag([sqrt(10) 0]);
R  = 1;

% ***** 以前の記述方法 *****
% M_LQ1 = [-(M+M')    X*Qh        F'*R
%           Qh*X     eye(n)    zeros(n,p)
%            R*F   zeros(p,n)      R     ];
% LMI = [LMI, M_LQ1 > 0];
% M_LQ2 = [   Z     eye(n)
%           eye(n)    X   ];
% LMI = [LMI, M_LQ2 > 0];

% ***** 最近の記述方法 *****
M_LQ1 = [-(M+M')    X*Qh        F'*R
          Qh*X     eye(n)    zeros(n,p)
           R*F   zeros(p,n)      R     ];
LMI = [LMI, M_LQ1 >= ep*eye(length(M_LQ1))];    % M_LQ1 ≧ ep*I (> 0)
M_LQ2 = [   Z     eye(n)
          eye(n)    X   ];
LMI = [LMI, M_LQ2 >= ep*eye(length(M_LQ2))];    % M_LQ2 ≧ ep*I (> 0)

% ----------
solvesdp(LMI,trace(Z))   % SeDuMi がインストールされている場合は標準で SeDuMi が選択される
% solvesdp(LMI,trace(Z),sdpsettings('solver','sedumi'))     % https://github.com/sqlp/sedumi/archive/refs/heads/master.zip
% solvesdp(LMI,trace(Z),sdpsettings('solver','sdpt3'))      % https://github.com/sqlp/sdpt3/archive/refs/heads/master.zip
% solvesdp(LMI,trace(Z),sdpsettings('solver','sdpa'))       % https://sourceforge.net/projects/sdpa/files/sdpa/windows/sdpam-7.3.9-windows.zip
% solvesdp(LMI,trace(Z),sdpsettings('solver','lmilab'))     % Robust Control Toolbox に包含


format short e

disp(' ')
disp('--- LMI の解 X = X'' > 0, F ---------')
X_opt = double(X)
F_opt = double(F)

disp(' ')
disp('--- コントローラのゲイン K ---------')
K_opt = F_opt*inv(X_opt)

disp(' ')
disp('--- min trace(Z) ---------')
double(trace(Z))

disp(' ')
disp('_____________________________________________________________')
disp(' ')
disp('--- 最適レギュレータによるコントローラのゲイン K ---------')
Q = Qh'*Qh;
K_LQ = - lqr(A,B,Q,R)

format short

% -------------------------------------------------------------
x0 = [ 1
       0 ];

tf = 3;
sim('eg_9_05_R2018a',tf)
% sim('eg_9_05_R2020a',tf)
% sim('eg_9_05_R2023a',tf)

figure(1)
set(gcf,'position',[50 50 1200 750])

% ---
subplot(2,2,1)
plot(t,x_LMI(:,1),     'LineWidth',1.5); hold on
plot(t,x_LQ(:,1), '--','LineWidth',1.5); hold off

% ---
subplot(2,2,2)
plot(t,x_LMI(:,2),     'LineWidth',1.5); hold on
plot(t,x_LQ(:,2), '--','LineWidth',1.5); hold off

% ---
subplot(2,2,3)
plot(t,u_LMI,     'LineWidth',1.5); hold on
plot(t,u_LQ, '--','LineWidth',1.5); hold off

for i = 1:3
    subplot(2,2,i)
    grid
    xlim([0 3])
    set(gca,'XTick',[0:1:3])
    set(gca,'FontName','Arial','FontSize',15)

    xlabel('t [s]','FontName','Arial','FontSize',16)
end

% ---
subplot(2,2,1)
ylim([-0.5 1.5])
set(gca,'YTick',[-0.5:0.5:1.5])
ylabel('x1(t) [rad]','FontName','Arial','FontSize',16)

legend('LMI','LQ')
set(legend,'FontName','Arial','FontSize',15)

% ---
subplot(2,2,2)
ylim([-3 1])
set(gca,'YTick',[-3:1:1])
ylabel('x2(t) [rad/s]','FontName','Arial','FontSize',16)

% ---
subplot(2,2,3)
ylim([-6 2])
set(gca,'YTick',[-6:2:2])
ylabel('u(t) [Nm]','FontName','Arial','FontSize',16)

% ---
eigen_opt = eig(A + B*K_opt);
eigen_LQ  = eig(A + B*K_LQ);

ang = 0:0.01:2*pi;
x = rc*cos(ang) + qc;
y = rc*sin(ang);

subplot(2,2,4)
plot(real(eigen_opt),imag(eigen_opt),'x','MarkerSize',8,'LineWidth',1.5)
hold on
plot(real(eigen_LQ), imag(eigen_LQ), '+','MarkerSize',8,'LineWidth',1.5)
plot(x,y,'LineWidth',1.5)
hold off
grid

axis('square')
xlim([-16 0])
ylim([-8 8])
set(gca,'XTick',[-16:4:0])
set(gca,'YTick',[-8:4:8])

set(gca,'FontName','Arial','FontSize',15)

xlabel('Re[\lambda]','FontName','Arial','FontSize',16)
ylabel('Im[\lambda]','FontName','Arial','FontSize',16)

legend('LMI','LQ')
set(legend,'FontName','Arial','FontSize',15,'location','NorthWest')
