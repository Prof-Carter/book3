disp('++++++++++++++++++++++++++++++')
disp('例 9.1')
disp('++++++++++++++++++++++++++++++')

clear
format compact

% ----------
A = [   0  1
      -10 -1 ];
  
% ----------
ep = 1e-5;              % 十分小さな正数 <--- 加筆

% ----------
n = 2;
P = sdpvar(n,n,'sy');   % P ：n×n の対称行列
LMI = [];               % LMI の初期化
% ***** 以前の記述方法 *****
% LMI = [LMI, P > eye(2)];        % P > 0 とすると，不安定行列 A に対して誤判定：P > I
% LMI = [LMI, P*A + A'*P < 0];    % リアプノフ不等式         % LMI の初期化：P*A + A'*P < 0
% ***** 最近の記述方法 *****
LMI = [LMI, P - eye(2) >= ep*eye(2)];	% P > 0 とすると，不安定行列 A に対して誤判定：P - I ≧ ep*I (> 0)
LMI = [LMI, P*A + A'*P <= -ep*eye(2)];	% リアプノフ不等式：P*A + A'*P ≦ -ep*I (< 0)

% ----------
solvesdp(LMI)   % SeDuMi がインストールされている場合は標準で SeDuMi が選択される
% solvesdp(LMI,[],sdpsettings('solver','sedumi'))     % https://github.com/sqlp/sedumi/archive/refs/heads/master.zip
% solvesdp(LMI,[],sdpsettings('solver','sdpt3'))      % https://github.com/sqlp/sdpt3/archive/refs/heads/master.zip
% solvesdp(LMI,[],sdpsettings('solver','sdpa'))       % https://sourceforge.net/projects/sdpa/files/sdpa/windows/sdpam-7.3.9-windows.zip
% solvesdp(LMI,[],sdpsettings('solver','lmilab'))     % Robust Control Toolbox に包含

% ----------
format short e

disp(' ')
disp('--- リアプノフ不等式 M = P*A + A''*P < 0 の正定対称解 P ---------')
P_feas = double(P)

format short

% ----------
disp(' ')
disp('--- P の固有値 ---------')
eig(double(P))

disp(' ')
disp('--- -M の固有値 ---------')
eig(double(-(P*A + A'*P)))
