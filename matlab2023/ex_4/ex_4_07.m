disp('++++++++++++++++++++++++++++++')
disp('問題 4.7')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms k11 k12 k13 k14 real
syms k21 k22 k23 k24 real
syms d0 d1 d2 d3 real
syms s

A = [ 0  1  0  0 
     -1 -1  1  1
      0  0  0  1
      2  2 -2 -2 ]
B = [ 0  0
     1/2 0
      0  0
      0  1 ]
K = [ k11  k12  k13  k14 
      k21  k22  k23  k24 ]

disp(' ')
disp('--- Acl = A + B*K ---------')
Acl = A + B*K

disp(' ')
disp('--- (4.68) 式と (4.62) 式を一致させるような K ---------')
k11 = solve(Acl(2,1),   k11);	% Acl(2,1) = 0
k12 = solve(Acl(2,2),   k12);	% Acl(2,2) = 0
k13 = solve(Acl(2,3)-1, k13);	% Acl(2,3) = 1
k14 = solve(Acl(2,4),   k14);	% Acl(2,4) = 0

k21 = solve(Acl(4,1)+d0, k21);	% Acl(4,1) = - δ0
k22 = solve(Acl(4,2)+d1, k22);	% Acl(4,2) = - δ1
k23 = solve(Acl(4,3)+d2, k23);	% Acl(4,3) = - δ2
k24 = solve(Acl(4,4)+d3, k24);	% Acl(4,4) = - δ3

K = [ k11  k12  k13  k14 
      k21  k22  k23  k24 ]

disp(' ')
disp('--- Acl = A + B*K ---------')
Acl = A + B*K

disp(' ')
disp('--- 配置したい固有値の設定 ---------')
p = [ -2
      -2
      -4
      -4 ]

disp(' ')
disp('--- Δ(λ) = λ^4 + dv3*λ^3 + dv2*λ^2 + dv1*λ + dv0  ---------')
Delta = (s - p(1))*(s - p(2))*(s - p(3))*(s - p(4))
Delta = collect(Delta,s)

disp(' ')
disp('--- Δ(λ) の係数 dv = [dv0 dv1 dv2 dv3 1]  ---------')
dv = coeffs(Delta)

dv0 = dv(1);
dv1 = dv(2);
dv2 = dv(3);
dv3 = dv(4);

disp(' ')
disp('--- d0 = dv0, ... , d3 = dv3 としたときの K ---------')
K = subs(K,{d0,d1,d2,d3},{dv0,dv1,dv2,dv3})
