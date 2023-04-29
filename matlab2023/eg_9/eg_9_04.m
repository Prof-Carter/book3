disp('++++++++++++++++++++++++++++++')
disp('�� 9.4')
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
ep = 1e-5;              % �\�������Ȑ��� <--- ���M

% ----------
n = 2;  p = 1;
X = sdpvar(n,n,'sy');   % X �Fn�~n �̑Ώ̍s��
F = sdpvar(p,n,'f');    % F �Fm�~n �̍s��
Z = sdpvar(n,n,'sy');   % Z �Fn�~n �̑Ώ̍s��
LMI = [];               % LMI �̏�����

% ----------
M = A*X + B*F;

% ----------
Qh = diag([sqrt(10) 0]);
R  = 1;
% ***** �ȑO�̋L�q���@ *****
% M_LQ1 = [-(M+M')    X*Qh        F'*R
%           Qh*X     eye(n)    zeros(n,p)
%            R*F   zeros(p,n)      R     ];
% LMI = [LMI, M_LQ1 > 0];
% M_LQ2 = [   Z     eye(n)
%           eye(n)    X   ];
% LMI = [LMI, M_LQ2 > 0];
% ***** �ŋ߂̋L�q���@ *****
M_LQ1 = [-(M+M')    X*Qh        F'*R
          Qh*X     eye(n)    zeros(n,p)
           R*F   zeros(p,n)      R     ];
LMI = [LMI, M_LQ1 >= ep*eye(length(M_LQ1))];    % M_LQ1 �� ep*I (> 0)
M_LQ2 = [   Z     eye(n)
          eye(n)    X   ];
LMI = [LMI, M_LQ2 >= ep*eye(length(M_LQ2))];    % M_LQ2 �� ep*I (> 0)

% ----------
solvesdp(LMI,trace(Z))   % SeDuMi ���C���X�g�[������Ă���ꍇ�͕W���� SeDuMi ���I�������
% solvesdp(LMI,trace(Z),sdpsettings('solver','sedumi'))     % https://github.com/sqlp/sedumi/archive/refs/heads/master.zip
% solvesdp(LMI,trace(Z),sdpsettings('solver','sdpt3'))      % https://github.com/sqlp/sdpt3/archive/refs/heads/master.zip
% solvesdp(LMI,trace(Z),sdpsettings('solver','sdpa'))       % https://sourceforge.net/projects/sdpa/files/sdpa/windows/sdpam-7.3.9-windows.zip
% solvesdp(LMI,trace(Z),sdpsettings('solver','lmilab'))     % Robust Control Toolbox �ɕ��

format short e

disp(' ')
disp('--- LMI �̉� X = X'' > 0, F ---------')
X_opt = double(X)
F_opt = double(F)

disp(' ')
disp('--- �R���g���[���̃Q�C�� K ---------')
K_opt = F_opt*inv(X_opt)

disp(' ')
disp('--- min trace(Z) ---------')
double(trace(Z))

disp(' ')
disp('_____________________________________________________________')
disp(' ')
disp('--- �œK���M�����[�^�ɂ����郊�J�b�`�������̉� P ---------')
Q = Qh'*Qh;
P = care(A,B,Q,R)

disp('--- P �̋t�s�� ---------')
inv(P)

disp(' ')
disp('--- �œK���M�����[�^�ɂ��R���g���[���̃Q�C�� K ---------')
K_LQ = - inv(R)*B'*P

format short
