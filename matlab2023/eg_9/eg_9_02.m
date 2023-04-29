disp('++++++++++++++++++++++++++++++')
disp('�� 9.2')
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
ep = 1e-5;              % �\�������Ȑ��� <--- ���M

% ------------------------------------------
n = 2;
p = 1;
X = sdpvar(n,n,'sy');   % X �Fn�~n �̑Ώ̍s��
F = sdpvar(p,n,'f');    % F �Fm�~n �̍s��
LMI = [];               % LMI �̏�����

% ***** �ȑO�̋L�q���@ *****
% % ------------------------------------------
% LMI = [LMI, X > 0];
% % ------------------------------------------
% M = A*X + B*F;
% LMI = [LMI, M + M' < 0];

% ***** �ŋ߂̋L�q���@ *****
% ------------------------------------------
LMI = [LMI, X >= ep*eye(length(X))];        % X �� ep*I > 0

% ------------------------------------------
M = A*X + B*F;
LMI = [LMI, M + M' <= -ep*eye(length(M))];  % M + M' �� -ep*I (< 0)

% ------------------------------------------
solvesdp(LMI)   % SeDuMi ���C���X�g�[������Ă���ꍇ�͕W���� SeDuMi ���I�������
% solvesdp(LMI,[],sdpsettings('solver','sedumi'))     % https://github.com/sqlp/sedumi/archive/refs/heads/master.zip
% solvesdp(LMI,[],sdpsettings('solver','sdpt3'))      % https://github.com/sqlp/sdpt3/archive/refs/heads/master.zip
% solvesdp(LMI,[],sdpsettings('solver','sdpa'))       % https://sourceforge.net/projects/sdpa/files/sdpa/windows/sdpam-7.3.9-windows.zip
% solvesdp(LMI,[],sdpsettings('solver','lmilab'))     % Robust Control Toolbox �ɕ��

format short e

disp(' ')
disp('--- ���A�v�m�t�s���� He[A*X + B*F] < 0 �� X = X'' > 0, F ---------')
X_feas = double(X)
F_feas = double(F)
disp(' ')
disp('--- �R���g���[���̃Q�C�� K ---------')
K_feas = F_feas*inv(X_feas)

disp(' ')
disp('--- A + B*K �̌ŗL�l ---------')
eig(A + B*K_feas)

format short
