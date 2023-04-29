disp('++++++++++++++++++++++++++++++')
disp('例 5.5（アッカーマンの極配置アルゴリズム：')
disp('　　　　関数 ''acker'' を利用した数値計算）')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1  0  0
     -4 -2  4  2
      0  0  0  1
      2  1 -2 -1 ];
b = [ 0
      2
      0
      0 ];
c = [ 0  0  1  0 ];

disp(' ')
disp('--- 拡大偏差システム ---------')
Ae = [ A  zeros(4,1)
      -c      0      ]
be = [ b
       0 ]

disp(' ')
disp('--- 配置したい固有値の設定 ---------')
p = [ -1+3j
      -1-3j
      -2+j
      -2-j
      -2 ]

disp(' ')
disp('--- u(t) = ke*xe(t) ---------')
ke = -acker(Ae,be,p)

disp(' ')
disp('--- Ae + be*ke の固有値 ---------')
eig(Ae + be*ke)

disp(' ')
disp('--- u(t) = ke*xe(t) = k*x(t) + g*w(t) ---------')
k = ke(1:4)
g = ke(5)
