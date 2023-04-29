disp('++++++++++++++++++++++++++++++')
disp('例 5.1（アッカーマンの極配置アルゴリズム：数式処理）')
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
disp('____ ステップ 1 _______________________________________________')
disp(' ')
disp('--- 配置したい固有値の設定 ---------')
p = [ -2+2j
      -2-2j
      -2+j
      -2-j ]

disp(' ')
disp('--- Δ(λ) = λ^4 + d3*λ^3 + d2*λ^2 + d1*λ + d0  ---------')
syms s
eq = (s - p(1))*(s - p(2))*(s - p(3))*(s - p(4));
eq = expand(eq)

d0 = subs(eq,0)
d1 = subs(diff(eq,1,s),0)/factorial(1)
d2 = subs(diff(eq,2,s),0)/factorial(2)
d3 = subs(diff(eq,3,s),0)/factorial(3)

disp(' ')
disp('--- Δ_A = A^4 + d3*A^3 + d2*A^2 + d1*A + d0*I ---------')
Delta_A = A^4 + d3*A^3 + d2*A^2 + d1*A + d0*eye(4)

disp(' ')
disp('____ ステップ 2 _______________________________________________')
disp(' ')
disp('--- 可制御行列 Vc ---------')
Vc = ctrb(A,b);
Vc = sym(Vc)

disp(' ')
disp('--- |Vc| ---------')
det(Vc)

disp(' ')
disp('--- Vc の逆行列 ---------')
inv(Vc)

disp(' ')
disp('----- M0 ------')
M0 = [ A  b
       c  0 ];
M0 = sym(M0)

disp(' ')
disp('--- M0 の逆行列 ---------')
inv(M0)

disp(' ')
disp('----- |M0| ------')
det(M0)

disp(' ')
disp('--- e ---------')
e = [ 0  0  0  1 ]

disp(' ')
disp('--- u(t) = k*x(t) + h*yref ------')
k = - e*inv(Vc)*Delta_A

h = [ -k  1 ]*inv(M0)*[ zeros(4,1)
                           1      ]

disp(' ')
disp('--- A + b*k の固有値 ---------')
eig(A + b*k)
