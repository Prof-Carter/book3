disp('++++++++++++++++++++++++++++++')
disp('問題 5.4')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1 
     -2  3 ];
b = [ 0
      1 ];
c = [ 1  0 ];

disp(' ')
disp('--- 拡大偏差システム ---------')
Ae = [ A  zeros(2,1)
      -c      0      ]
be = [ b
       0 ]

disp(' ')
disp('--- 配置したい固有値の設定 ---------')
p = [ -2+2j
      -2-2j
      -2 ]

disp(' ')
disp('--- u(t) = ke*xe(t) ---------')
ke = -acker(Ae,be,p)

disp(' ')
disp('--- Ae + be*ke の固有値 ---------')
eig(Ae + be*ke)

disp(' ')
disp('--- u(t) = ke*xe(t) = k*x(t) + g*w(t) ---------')
k = ke(1:2)
g = ke(3)
