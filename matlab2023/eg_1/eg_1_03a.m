disp('++++++++++++++++++++++++++++++')
disp('例 1.3（伝達関数 T(s) の導出）')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s
syms y u z1 yref real
syms M1 M2 k mu positive
syms kP1 kP2 kD1 kD2 real


disp(' ')
disp('--- y(s) = P(s)*u(s)（''eg_1_01.m'' を参照） ------')
Ps = (mu*s + k)/(s^2*((M1*M2)*s^2 + (M1 + M2)*mu*s + (M1 + M2)*k))
disp(' ')
disp('--- M1 = 0.5, M2 = 1, k = 2, mu = 1 のときの P(s) ------')
Ps = subs(Ps,{M1,M2,k,mu},{0.5,1,2,1});
Ps = collect(Ps)

disp(' ')
disp('--- z1(s) = Q(s)*y(s)（''eg_1_01.m'' を参照） ------')
Qs = (M2*s^2 + mu*s + k)/(k + mu*s)
disp(' ')
disp('--- M1 = 0.5, M2 = 1, k = 2, mu = 1 のときの Q(s) ------')
Qs = subs(Qs,{M1,M2,k,mu},{0.5,1,2,1});
Qs = collect(Qs)

% --------------------------------------------------
eq = y == Ps*u;
eq = subs(eq, u, kP1*(yref - z1) - kD1*s*z1 + kP2*(yref - y) - kD2*s*y);
eq = subs(eq, z1, Qs*y);

y = solve(eq,y);
Ts = collect(y/yref,s);
[NTs DTs]  = numden(Ts);
disp(' ')
disp('--- NT(s) ------')
NTs = collect(NTs,s)
disp(' ')
disp('--- DT(s) ------')
DTs = collect(DTs,s)
disp(' ')
disp('--- y(s) = T(s)*yref(s) ------')
Ts = NTs/DTs




