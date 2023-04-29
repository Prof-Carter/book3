disp('++++++++++++++++++++++++++++++')
disp('例 1.1')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s
syms z1 y u real
syms M1 M2 k mu positive

disp(' ')
disp('--- 運動方程式のラプラス変換 ------')
eq1 = M1*s^2*z1 == u - k*(z1 - y) - mu*(s*z1 - s*y)
eq2 = M2*s^2*y  ==     k*(z1 - y) + mu*(s*z1 - s*y)

disp(' ')
disp('--- eq2 = 0 の解 z1(s) ------')
sol_z1 = solve(eq2,z1)

disp(' ')
disp('--- z1(s) = Q(s)*y(s) ------')
Qs = collect(sol_z1/y)

disp(' ')
disp('--- z1(s) = Q(s)*y(s) を eq1 へ代入 ------')
eq1 = subs(eq1,z1,sol_z1);
eq1 = simplify(eq1)

disp(' ')
disp('--- 伝達関数表現 P(s) = y(s)/u(s) ------')
y  = solve(eq1,y);
Ps = collect(y/u,s)

disp(' ')
disp('--- M1 = 0.5, M2 = 1, k = 2, mu = 1 のときの P(s) ------')

Ps = subs(Ps,{M1,M2,k,mu},{0.5,1,2,1});
Ps = collect(Ps)
