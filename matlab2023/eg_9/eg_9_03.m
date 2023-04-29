disp('++++++++++++++++++++++++++++++')
disp('例 9.3')
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
      M*g*l/J  -mu/J ]
B = [  0
      1/J ]

% ------------------------------------------
ep = 1e-5;              % 十分小さな正数 <--- 加筆

% /////////////////////////////////////////////////////////////////////////
% 変数の定義
% /////////////////////////////////////////////////////////////////////////
n = 2;
p = 1;
X = sdpvar(n,n,'sy');   % X ：n×n の対称行列
F = sdpvar(p,n,'f');    % F ：m×n の行列
LMI = [];               % LMI の初期化

% /////////////////////////////////////////////////////////////////////////
% 円領域への極配置
% /////////////////////////////////////////////////////////////////////////
qc = -5;
rc =  4;

% ***** 以前の記述方法 *****
% M = A*X + B*F;
% M_D3 = [qc*(M+M')+(rc^2-qc^2)*X  M
%                   M'             X ];
% LMI = [LMI, M_D3 > 0];

% ***** 最近の記述方法 *****
M = A*X + B*F;
M_D3 = [qc*(M+M')+(rc^2-qc^2)*X  M
                  M'             X ];
LMI = [LMI, M_D3 >= ep*eye(length(M_D3))];   % M_D3 ≧ ep*I (> 0)

% /////////////////////////////////////////////////////////////////////////
% LMI の求解
% /////////////////////////////////////////////////////////////////////////
solvesdp(LMI)   % SeDuMi がインストールされている場合は標準で SeDuMi が選択される
% solvesdp(LMI,[],sdpsettings('solver','sedumi'))     % https://github.com/sqlp/sedumi/archive/refs/heads/master.zip
% solvesdp(LMI,[],sdpsettings('solver','sdpt3'))      % https://github.com/sqlp/sdpt3/archive/refs/heads/master.zip
% solvesdp(LMI,[],sdpsettings('solver','sdpa'))       % https://sourceforge.net/projects/sdpa/files/sdpa/windows/sdpam-7.3.9-windows.zip
% solvesdp(LMI,[],sdpsettings('solver','lmilab'))     % Robust Control Toolbox に包含

format short e
disp(' ')
disp('--- LMI の解 X = X'' > 0, F ---------')
X_feas = double(X)
F_feas = double(F)
disp(' ')
disp('--- コントローラのゲイン K ---------')
K_feas = F_feas*inv(X_feas)
format short

disp(' ')
disp('--- X の固有値 ---------')
eig(X_feas)

disp(' ')
disp('--- A + B*K の固有値 ---------')
eigen = eig(A + B*K_feas)

% -------------------------------------------------------------
ang = 0:0.01:2*pi;
x = rc*cos(ang) + qc;
y = rc*sin(ang);

figure(1)
plot(real(eigen),imag(eigen),'x','MarkerSize',15,'LineWidth',1.5)
hold on
plot(x,y,'LineWidth',1.5)
hold off
grid

axis('square')
xlim([-16 0])
ylim([-8 8])
set(gca,'XTick',[-16:4:0])
set(gca,'YTick',[-8:4:8])

set(gca,'FontName','Arial','FontSize',20)

xlabel('Re[\lambda]','FontName','Arial','FontSize',22)
ylabel('Im[\lambda]','FontName','Arial','FontSize',22)

