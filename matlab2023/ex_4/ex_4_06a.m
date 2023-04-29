disp('++++++++++++++++++++++++++++++')
disp('問題 4.6（数値計算：関数 ''acker''）')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s

A = [ 0  1
     -2 -3 ];
b = [ 1
      0 ];

disp(' ')
disp('--- 配置したい固有値の設定 ---------')
p = [ -5+10j
      -5-10j ]

disp(' ')
disp('--- u(t) = k*x(t) ---------')
k = - acker(A,b,p)

disp(' ')
disp('--- A + b*k の固有値 ---------')
eig(A + b*k)