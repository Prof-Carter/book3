function dx = pend(t,x)

l  = 0.141;                     % アームの軸から重心までの距離
M  = 0.300;                     % アームの質量
J  = 9.56*10^(-3);              % 慣性モーメント
mu = 1.33*10^(-2);              % 軸の粘性摩擦係数
g  = 9.81;                      % 重力加速度

dx = zeros(2,1);    % a column vector

dx(1) = x(2);
dx(2) = - M*g*l/J*sin(x(1)) - mu/J*x(2);