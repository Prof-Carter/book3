disp('++++++++++++++++++++++++++++++')
disp('例 9.4')
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
      M*g*l/J  -mu/J ];
B = [  0
      1/J ];
  
% ----------
ep = 1e-5;              % 十分小さな正数 <--- 加筆

% ----------
n = 2;  p = 1;
X = sdpvar(n,n,'sy');   % X ：n×n の対称行列
F = sdpvar(p,n,'f');    % F ：m×n の行列
Z = sdpvar(n,n,'sy');   % Z ：n×n の対称行列
LMI = [];               % LMI の初期化

% ----------
M = A*X + B*F;

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
disp('--- 最適レギュレータにおけるリカッチ方程式の解 P ---------')
Q = Qh'*Qh;
P = care(A,B,Q,R)

disp('--- P の逆行列 ---------')
inv(P)

disp(' ')
disp('--- 最適レギュレータによるコントローラのゲイン K ---------')
K_LQ = - inv(R)*B'*P

format short
