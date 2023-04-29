disp('++++++++++++++++++++++++++++++')
disp('�� 9.1')
disp('++++++++++++++++++++++++++++++')

clear
format compact

% ----------
A = [   0  1
      -10 -1 ];
  
% ----------
ep = 1e-5;              % �\�������Ȑ��� <--- ���M

% ----------
n = 2;
P = sdpvar(n,n,'sy');   % P �Fn�~n �̑Ώ̍s��
LMI = [];               % LMI �̏�����
% ***** �ȑO�̋L�q���@ *****
% LMI = [LMI, P > eye(2)];        % P > 0 �Ƃ���ƁC�s����s�� A �ɑ΂��Č딻��FP > I
% LMI = [LMI, P*A + A'*P < 0];    % ���A�v�m�t�s����         % LMI �̏������FP*A + A'*P < 0
% ***** �ŋ߂̋L�q���@ *****
LMI = [LMI, P - eye(2) >= ep*eye(2)];	% P > 0 �Ƃ���ƁC�s����s�� A �ɑ΂��Č딻��FP - I �� ep*I (> 0)
LMI = [LMI, P*A + A'*P <= -ep*eye(2)];	% ���A�v�m�t�s�����FP*A + A'*P �� -ep*I (< 0)

% ----------
solvesdp(LMI)   % SeDuMi ���C���X�g�[������Ă���ꍇ�͕W���� SeDuMi ���I�������
% solvesdp(LMI,[],sdpsettings('solver','sedumi'))     % https://github.com/sqlp/sedumi/archive/refs/heads/master.zip
% solvesdp(LMI,[],sdpsettings('solver','sdpt3'))      % https://github.com/sqlp/sdpt3/archive/refs/heads/master.zip
% solvesdp(LMI,[],sdpsettings('solver','sdpa'))       % https://sourceforge.net/projects/sdpa/files/sdpa/windows/sdpam-7.3.9-windows.zip
% solvesdp(LMI,[],sdpsettings('solver','lmilab'))     % Robust Control Toolbox �ɕ��

% ----------
format short e

disp(' ')
disp('--- ���A�v�m�t�s���� M = P*A + A''*P < 0 �̐���Ώ̉� P ---------')
P_feas = double(P)

format short

% ----------
disp(' ')
disp('--- P �̌ŗL�l ---------')
eig(double(P))

disp(' ')
disp('--- -M �̌ŗL�l ---------')
eig(double(-(P*A + A'*P)))
