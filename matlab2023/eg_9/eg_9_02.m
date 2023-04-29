disp('++++++++++++++++++++++++++++++')
disp('例 9.2')
disp('++++++++++++++++++++++++++++++')

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

% ------------------------------------------
n = 2;
p = 1;
X = sdpvar(n,n,'sy');   % X ：n×n の対称行列
F = sdpvar(p,n,'f');    % F ：m×n の行列
LMI = [];               % LMI の初期化

% ***** 以前の記述方法 *****
% % ------------------------------------------
% LMI = [LMI, X > 0];
% % ------------------------------------------
% M = A*X + B*F;
% LMI = [LMI, M + M' < 0];

% ***** 最近の記述方法 *****
% ------------------------------------------
LMI = [LMI, X >= ep*eye(length(X))];        % X ≧ ep*I > 0

% ------------------------------------------
M = A*X + B*F;
LMI = [LMI, M + M' <= -ep*eye(length(M))];  % M + M' ≦ -ep*I (< 0)

% ------------------------------------------
solvesdp(LMI)   % SeDuMi がインストールされている場合は標準で SeDuMi が選択される
% solvesdp(LMI,[],sdpsettings('solver','sedumi'))     % https://github.com/sqlp/sedumi/archive/refs/heads/master.zip
% solvesdp(LMI,[],sdpsettings('solver','sdpt3'))      % https://github.com/sqlp/sdpt3/archive/refs/heads/master.zip
% solvesdp(LMI,[],sdpsettings('solver','sdpa'))       % https://sourceforge.net/projects/sdpa/files/sdpa/windows/sdpam-7.3.9-windows.zip
% solvesdp(LMI,[],sdpsettings('solver','lmilab'))     % Robust Control Toolbox に包含

format short e

disp(' ')
disp('--- リアプノフ不等式 He[A*X + B*F] < 0 の X = X'' > 0, F ---------')
X_feas = double(X)
F_feas = double(F)
disp(' ')
disp('--- コントローラのゲイン K ---------')
K_feas = F_feas*inv(X_feas)

disp(' ')
disp('--- A + B*K の固有値 ---------')
eig(A + B*K_feas)

format short
