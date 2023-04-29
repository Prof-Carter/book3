disp('++++++++++++++++++++++++++++++')
disp('例 6.5（オブザーバゲインの設計：数式処理）')
disp('++++++++++++++++++++++++++++++')

clear
format compact

M1 = 0.5;
M2 = 1;
k  = 2;
mu = 1;

A = [   0      1      0      0
      -k/M1 -mu/M1   k/M1  mu/M1
        0      0      0      1
       k/M2  mu/M2  -k/M2 -mu/M2 ];
B = [  0
      1/M1
       0
       0  ];
C = [ 0  0  1  0 ];

syms l1 l2 l3 l4 s

L = [ l1
      l2
      l3
      l4 ];

disp(' ')
disp('--- 可観測行列 Vo ---------')
Vo = obsv(A,C)

disp(' ')
disp('--- |Vo| ---------')
det_Vo = det(Vo)

if det_Vo ~= 0
    disp('可観測である')
else
    disp('可観測ではない')
end

disp(' ')
disp('____ ステップ 1 ______________________________________________________')

disp(' ')
disp('--- 配置したい固有値の設定 ---------')
p = [ -4+4j
      -4-4j
      -4+2j
      -4-2j ]

disp(' ')
disp('--- Δ(λ) = λ^4 + d3*λ^3 + d2*λ^2 + d1*λ + d0  ---------')
delta = (s - p(1))*(s - p(2))*(s - p(3))*(s - p(4))
delta = collect(delta)

d0 = subs(diff(delta, s, 0), s, 0)/factorial(0)
d1 = subs(diff(delta, s, 1), s, 0)/factorial(1)
d2 = subs(diff(delta, s, 2), s, 0)/factorial(2)
d3 = subs(diff(delta, s, 3), s, 0)/factorial(3)

disp(' ')
disp('--- Δ_A = A^4 + d3*A^3 + d2*A^2 + d1*A + d0*I  ---------')

Delta_A = A^4 + d3*A^3 + d2*A^2 + d1*A + d0*eye(4)




disp(' ')
disp('____ ステップ 2 ______________________________________________________')

disp(' ')
disp('--- Vo の逆行列 ---------')
sym(inv(Vo))

disp('--- e ---------')
e = [ 0  0  0  1 ]

disp(' ')
disp('--- オブザーバゲイン L = [ l1')
disp('                          l2')
disp('                          l3')
disp('                          l4 ] ---------')

L = - Delta_A*inv(Vo)*e'

disp(' ')
disp('--- A + L*C の固有値 ---------')
eig(A + L*C)
