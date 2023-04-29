disp('++++++++++++++++++++++++++++++')
disp('問題 6.4 (2)（直接的な方法：数式処理）')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms l1 l2 real
syms s

A = [ 0   1
      0 -10 ];
b = [  0
      10 ];
c = [ 0  1 ];

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
det_A_lc = det(s*eye(2) - (A + l*c));
det_A_lc = collect(det_A_lc,s)

disp(' ')
disp('---  A + l*c の特性多項式：λ^2 + a1*λ + a0 ---------')
a0 = subs(diff(det_A_lc, s, 0), s, 0)/factorial(0)
a1 = subs(diff(det_A_lc, s, 1), s, 0)/factorial(1)


disp(' ')
disp('--- 配置したい固有値の設定 ---------')
syms p1 p2

p = [ p1
      p2 ]

disp(' ')
disp('--- Δ(λ) = λ^2 + d1*λ + d0  ---------')
delta = (s - p(1))*(s - p(2))
delta = collect(delta)

d0 = subs(diff(delta, s, 0), s, 0)/factorial(0)
d1 = subs(diff(delta, s, 1), s, 0)/factorial(1)

disp(' ')
disp('--- オブザーバゲイン l = [ l1')
disp('                          l2 ] ---------')
[l1 l2] = solve(a1==d1, a0==d0, {l1, l2})



