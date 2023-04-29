disp('++++++++++++++++++++++++++++++')
disp('例 2.8')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s 
syms a0 a1 b0 b1 real
syms R C L positive

disp('___________________________________________________________________')
disp('(a)  u(t) = vin(t), y(t) = vC(t)')
disp(' ')
disp('--- 伝達関数 P(s) ------')
Ps = b0/(s^2 + a1*s + a0)

disp(' ')
disp('--- 状態空間表現（可制御標準形）     ------')
disp('--- dxc(t)/dt = Ac*xc(t) + bc*u(t) ------')
disp('---   y(t)    = cc*xc(t)           ------')
Ac = [ 0   1
      -a0 -a1 ]
bc = [ 0
       1 ]
cc = [ b0  0 ]

disp(' ')
disp('--- P(s) = cc*(s*I - Ac)^(-1)*bc ------')
cc*inv(s*eye(2) - Ac)*bc


disp(' ')
disp('___________________________________________________________________')
disp('(b)  u(t) = vin(t), y(t) = vR(t) + vC(t)')
disp(' ')
disp('--- 伝達関数 P(s) ------')
Ps = (b1*s + b0)/(s^2 + a1*s + a0)

disp(' ')
disp('--- 状態空間表現（可制御標準形）   ------')
disp('--- dx(t)/dt = Ac*x(t) + bc*u(t) ------')
disp('---  y(t)    = cc*x(t)           ------')
Ac = [ 0   1
      -a0 -a1 ]
bc = [ 0
       1 ]
cc = [ b0  b1 ]

disp(' ')
disp('--- P(s) = cc*(s*I - Ac)^(-1)*bc ------')
collect(cc*inv(s*eye(2) - Ac)*bc)



