disp('++++++++++++++++++++++++++++++')
disp('例 4.6（数値計算）')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ -3  1
       2 -2 ];
b = [ 2
      0 ];

disp(' ')
disp('--- 配置したい固有値の設定 ---------')
p = [ -8+4j
      -8-4j ]

disp(' ')
disp('___ ステップ 1 __________________________')

disp(' ')
disp('--- Δ(λ) = λ^2 + d1*λ + d0  ---------')
eq = conv([1 -p(1)],[1 -p(2)])
d0 = eq(3)
d1 = eq(2)

disp(' ')
disp('--- Δ_A = A^2 + d1*A + d0*I ---------')
Delta_A = A^2 + d1*A + d0*eye(2)


disp(' ')
disp('___ ステップ 2 __________________________')

disp(' ')
disp('--- 可制御行列 Vc ---------')
Vc = ctrb(A,b)

disp(' ')
disp('--- e ---------')
e = [ 0  1 ]

disp(' ')
disp('--- u(t) = k*x(t) ---------')
k = - e*inv(Vc)*Delta_A

disp(' ')
disp('--- A + b*k の固有値 ---------')
eig(A + b*k)
