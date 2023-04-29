disp('++++++++++++++++++++++++++++++')
disp('例 1.2（部分的モデルマッチング法による P-D コントローラ設計）')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s
syms kP kD real

disp(' ')
disp('___ ステップ 1 ____________________________________')
disp(' ')
disp('--- 伝達関数 P(s) ------')
Ps = (2*s + 4)/(s^4 + 3*s^3 + 6*s^2)

disp(' ')
disp('--- T(s) = P(s)*kP/(1 + P(s)*(kD*s + kP)) ------')
Ts = Ps*kP/(1 + Ps*(kD*s + kP));
Ts = collect(Ts)

disp(' ')
disp('--- T(s) = NT(s)/DT(s) ------')
[NTs DTs] = numden(Ts)


disp(' ')
disp('___ ステップ 2 ____________________________________')

disp(' ')
disp('--- 1/T(s) = h0 + h1*s + h2*s^2 + ... ------')
h0 = collect(subs(1/Ts,s,0))                            % s = 0 における 1/T(s) のテイラー展開の 0 次項の係数
h1 = collect(subs(diff(1/Ts,1,s)/factorial(1),s,0))     % s = 0 における 1/T(s) のテイラー展開の 1 次項の係数
h2 = collect(subs(diff(1/Ts,2,s)/factorial(2),s,0))     % s = 0 における 1/T(s) のテイラー展開の 2 次項の係数


disp(' ')
disp('___ ステップ 3 ____________________________________')

syms wn z positive

disp(' ')
disp('--- GM(s)：2 次遅れ要素の規範モデル ------')
GMs = wn^2/(s^2 + 2*z*wn*s + wn^2)

disp(' ')
disp('--- 1/GM(s) = hm0 + hm1*s + hm2*s^2 ------')
hm0 = collect(subs(1/GMs,s,0))
hm1 = collect(subs(diff(1/GMs,1,s)/factorial(1),s,0))
hm2 = collect(subs(diff(1/GMs,2,s)/factorial(2),s,0))

disp(' ')
disp('--- 1/T(s) と 1/GM(s) の 1 次項，2 次項が一致するような kP, kD ------')
[kD kP] = solve(h1==hm1,h2==hm2,{kD,kP})



