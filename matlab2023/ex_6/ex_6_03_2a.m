disp('++++++++++++++++++++++++++++++')
disp('問題 6.3 (2)')
disp('++++++++++++++++++++++++++++++')

disp(' ')
disp('(a) 直接的な方法（数式処理）')

clear
format compact

syms l1 l2 l3 s

A = [ 0  1  0
      0  0  1
     -2  1 -1 ];
b = [ 0
      0
      1 ];
c = [ 1  0  0 ];

l = [ l1
      l2
      l3 ];

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
disp('--- A + l*c の特性多項式 ---------')
det_A_lc = det(s*eye(3) - (A + l*c));
det_A_lc = collect(det_A_lc,s)

disp(' ')
disp('---  A + l*c の特性多項式：λ^3 + a2*λ^2 + a1*λ + a0 ---------')
a = coeffs(det_A_lc,s);
a0 = a(1)
a1 = a(2)
a2 = a(3)

disp(' ')
disp('--- 配置したい固有値の設定 ---------')
p = [ -5
      -5
      -5 ]

disp(' ')
disp('--- Δ(λ) = λ^2 + d3*λ^2 + d1*λ + d0  ---------')
delta = (s - p(1))*(s - p(2))*(s - p(3))
delta = collect(delta,s)

d = coeffs(delta,s);
d0 = d(1)
d1 = d(2)
d2 = d(3)

disp(' ')
disp('--- オブザーバゲイン l = [ l1')
disp('                          l2')
disp('                          l3 ] ---------')
[l1 l2 l3] = solve(a2==d2, a1==d1, a0==d0, {l1, l2, l3})

disp(' ')
disp('--- A + l*c の固有値 ---------')
l = [ l1
      l2
      l3 ];
eig(A + l*c)
