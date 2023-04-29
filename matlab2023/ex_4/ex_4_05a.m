disp('++++++++++++++++++++++++++++++')
disp('問題 4.5（数値計算）')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s

A = [ 0  1
     -2 -3 ];
b = [ 1
      0 ];
c = [ 1  0 ];

disp(' ')
disp('--- A の特性多項式：λ^2 + a1*λ + a0 ---------')
coe = poly(A)
a1 = coe(2)
a0 = coe(3)

disp(' ')
disp('--- 可制御行列 Vc ---------')
Vc = ctrb(A,b)

disp(' ')
disp('--- Mc ---------')
Mc = [ a1  1
       1   0 ]

disp(' ')
disp('--- 可制御標準形への変換行列 Tc ---------')
Tc = inv(Vc*Mc)

disp(' ')
disp('--- 可制御標準形 ---------')
Ac = Tc*A*inv(Tc)
bc = Tc*b
cc = c*inv(Tc)

disp(' ')
disp('--- 配置したい固有値の設定 ---------')
p = [ -5+10j
      -5-10j ]

disp(' ')
disp('--- Δ(λ) = λ^2 + d1*λ + d0  ---------')
eq = conv([1 -p(1)],[1 -p(2)])

d1 = eq(2)
d0 = eq(3)

disp(' ')
disp('--- u(t) = kc*xc(t) ---------')
kc = [ a0-d0  a1-d1 ]

disp(' ')
disp('--- u(t) = k*x(t) ---------')
k = kc*Tc

disp(' ')
disp('--- A + b*k の固有値 ---------')
eig(A + b*k)
