function dx = pend(t,x)

l  = 0.141;                     % �A�[���̎�����d�S�܂ł̋���
M  = 0.300;                     % �A�[���̎���
J  = 9.56*10^(-3);              % �������[�����g
mu = 1.33*10^(-2);              % ���̔S�����C�W��
g  = 9.81;                      % �d�͉����x

dx = zeros(2,1);    % a column vector

dx(1) = x(2);
dx(2) = -M*g*l/J*sin(x(1)) - mu/J*x(2);