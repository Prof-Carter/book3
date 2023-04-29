disp('++++++++++++++++++++++++++++++')
disp('例 1.4')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s
syms y1 y2 u1 u2 real
syms M1 M2 k mu positive

disp(' ')
disp('--- 運動方程式のラプラス変換 ------')
eq1 = M1*s^2*y1 == u1 - k*(y1 - y2) - mu*(s*y1 - s*y2)
eq2 = M2*s^2*y2 == u2 + k*(y1 - y2) + mu*(s*y1 - s*y2)

disp(' ')
disp('--- y1(s) = P11(s)*u1(s) + P12(s)*u2(s) ------')
disp('--- y2(s) = P21(s)*u1(s) + P22(s)*u2(s) ------')
[y1 y2] = solve(eq1,eq2,{y1,y2})

% -------------------------------------------------------------
Ps(1,1) = collect(subs(y1,u2,0)/u1);
Ps(1,2) = collect(subs(y1,u1,0)/u2);
Ps(2,1) = collect(subs(y2,u2,0)/u1);
Ps(2,2) = collect(subs(y2,u1,0)/u2);

for i = 1:2
    for j = 1:2
        [numP(i,j) denP(i,j)] = numden(Ps(i,j));
        numP(i,j) = collect(numP(i,j),s);
        denP(i,j) = collect(denP(i,j),s);
        Ps(i,j) = numP(i,j)/denP(i,j);
    end
end

disp(' ')
disp('--- 伝達関数行列 P(s) = [ P11(s)  P12(s)')
disp('                         P21(s)  P22(s) ] ------')
Ps

