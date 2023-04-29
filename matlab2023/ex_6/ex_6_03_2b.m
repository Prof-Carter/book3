disp('++++++++++++++++++++++++++++++')
disp('問題 6.3 (2)')
disp('++++++++++++++++++++++++++++++')

disp(' ')
disp('(b) アッカーマンの極配置アルゴリズム')

clear
format compact

A = [ 0  1  0
      0  0  1
     -2  1 -1 ];
b = [ 0
      0
      1 ];
c = [ 1  0  0 ];

disp(' ')
disp('--- 可観測行列 Vo ---------')
Vo = obsv(A,c)

disp(' ')
disp('--- |Vo| ---------')
det_Vo = det(Vo)

if det_Vo ~= 0
    disp('可観測である')
else
    disp('可観測ではない')
end

disp(' ')
disp('--- 配置したい固有値の設定 ---------')
p = [ -5
      -5
      -5 ]

disp(' ')
disp('--- オブザーバゲイン l = [ l1')
disp('                          l2 ] ---------')
Ad = A';
bd = c';
kd = - acker(Ad,bd,p);

l = kd'

disp(' ')
disp('--- A + l*c の固有値 ---------')
eig(A + l*c)
