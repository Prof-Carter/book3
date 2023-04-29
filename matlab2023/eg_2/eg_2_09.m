disp('++++++++++++++++++++++++++++++')
disp('例 2.9')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s
syms J mu positive

disp(' ')
disp('--- 最小実現ではない状態空間表現（2 次システム） ------')
A = [ 0   1
      0 -mu/J ]
b = [ 0
     1/J ]
c = [ 0   1 ]

disp(' ')
disp('--- 伝達関数表現への変換 ------')
Ps = c*inv(s*eye(2) - A)*b;
Ps = collect(Ps)

disp(' ')
disp('--- 最小実現の状態空間表現（1 次システム） ------')
A_min = - mu/J
b_min =    1/J
c_min =    1

disp(' ')
disp('--- 伝達関数表現への変換 ------')
Ps_min = c_min*inv(s*eye(1) - A_min)*b_min;
Ps_min = collect(Ps_min)