disp('++++++++++++++++++++++++++++++')
disp('問題 4.6（数式処理）')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1
     -2 -3 ];
b = [ 1
      0 ];

disp(' ')
disp('--- 配置したい固有値の設定 ---------')
p = [ -5+10j
      -5-10j ]

disp(' ')
disp('--- Δ(λ) = λ^2 + d1*λ + d0  ---------')
syms s
eq = (s - p(1))*(s - p(2));
eq = expand(eq)

d0 = subs(eq,0)
d1 = subs(diff(eq,s),0)

disp(' ')
disp('--- Δ_A = A^2 + d1*A + d0*I ---------')
Delta_A = A^2 + d1*A + d0*eye(2)

disp(' ')
disp('--- 可制御行列 Vc ---------')
Vc = ctrb(A,b);
Vc = sym(Vc)

disp(' ')
disp('--- e ---------')
e = [ 0  1 ]

disp(' ')
disp('--- u(t) = k*x(t) ---------')
k = - e*inv(Vc)*Delta_A

disp(' ')
disp('--- A + b*k の固有値 ---------')
eig(A + b*k)
