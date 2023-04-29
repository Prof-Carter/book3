disp('++++++++++++++++++++++++++++++')
disp('問題 2.5 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms M k mu positive

disp(' ')
disp('--- 状態空間表現 ---------------------')
disp('--- dx(t)/dt = A*x(t) + b*u(t) ------')
disp('---  y(t)    = c*x(t) + d*u(t) ------')
A = [  0     1
     -k/M  -mu/M ]
b = [  0
      1/M ]
c = [ 1  0 ]
d = 0

% --------------------------------------------------------
syms s

n = length(A);

disp(' ')
disp('--- P(s) = c*(s*I - A)^(-1)*b + d ------')
Ps = c*inv(s*eye(n) - A)*b + d;
Ps = collect(Ps,s)
