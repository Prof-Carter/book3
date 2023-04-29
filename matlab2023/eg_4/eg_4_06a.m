disp('++++++++++++++++++++++++++++++')
disp('例 4.6（数値計算：関数 ''acker''）')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s

A = [ -3  1
       2 -2 ];
b = [ 2
      0 ];

disp(' ')
disp('--- 配置したい固有値の設定 ---------')
p = [ -8+4j
      -8-4j ]

disp(' ')
disp('--- u(t) = k*x(t) ---------')
k = - acker(A,b,p)

disp(' ')
disp('--- A + b*k の固有値 ---------')
eig(A + b*k)