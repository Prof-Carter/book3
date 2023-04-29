disp('++++++++++++++++++++++++++++++')
disp('問題 6.3 (3)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms l1 l2 s

A = [ -1  0 
       1 -1 ];
b = [ 1
      0 ];
c = [ 2  0 ];

l = [ l1
      l2 ];

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
det_A_lc = det(s*eye(2) - (A + l*c))
det_A_lc = collect(det_A_lc,s)

disp(' ')
disp('---  A + l*c の特性多項式：λ^2 + a1*λ + a0 ---------')
a = coeffs(det_A_lc,s);
a0 = a(1)
a1 = a(2)

disp(' ')
disp('--- 配置したい固有値の設定 ---------')
p = [ -5
      -5 ]

disp(' ')
disp('--- Δ(λ) = λ^2 + d1*λ + d0  ---------')
delta = (s - p(1))*(s - p(2))
delta = collect(delta,s)

d = coeffs(delta,s);
d0 = d(1)
d1 = d(2)

disp(' ')
disp('--- オブザーバゲイン l = [ l1')
disp('                          l2 ] ---------')

eq = [a1==d1
      a0==d0]
disp(' ')
[l1 l2] = solve(eq, {l1, l2})

if length(l1) == 0
    disp(' ')
    disp('極配置は不可能である')
end


