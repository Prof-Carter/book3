disp('++++++++++++++++++++++++++++++')
disp('例 2.7')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s
syms R C L positive
syms is real

disp(' ')
disp('___________________________________________________________________')
disp(' ')
disp('--- 回路方程式のラプラス変換 ------')
us = R*is + L*s*is + (1/(C*s))*is
ys = (1/(C*s))*is

disp(' ')
disp('--- 伝達関数 P(s) = y(s)/u(s) ------')
Ps = collect(ys/us)

disp(' ')
disp('--- 伝達関数 P(s) の極 ------')
[numP denP] = numden(Ps);
solve(denP, s)

disp(' ')
disp('___________________________________________________________________')
disp(' ')
disp('--- dx(t)/dt = A*x(t) + b*u(t) ------')
disp('---  y(t)    = c*x(t)          ------')
A = [     0       1
      -1/(C*L)  -R/L ]
b = [    0
      1/(C*L) ]
c = [ 1  0 ]

disp(' ')
disp('--- P(s) = c*(s*I - A)^(-1)*b ------')
Ps = c*inv(s*eye(2) - A)*b

disp(' ')
disp('--- A の固有値 ------')
eig(A)

disp(' ')
disp('___________________________________________________________________')
disp(' ')
disp('--- dxb(t)/dt = Ab*xb(t) + bb*u(t) ------')
disp('---   y(t)    = cb*xb(t)           ------')
Ab = [    0       1
      -1/(C*L)  -R/L ]
bb = [  0
       1/L ]
cb = [ 1/C  0 ]

disp(' ')
disp('--- P(s) = cb*(s*I - Ab)^(-1)*bb ------')
Ps = cb*inv(s*eye(2) - Ab)*bb

disp(' ')
disp('--- Ab の固有値 ------')
eig(Ab)
