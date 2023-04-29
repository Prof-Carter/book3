disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('例 8.2 (2)（直接的な解法）')
disp('++++++++++++++++++++++++++++++')

clear
format compact
syms p11 p12 p22 real
syms q1 positive

A = [  0   1
     -10  -1 ];
B = [ 0
      1 ];
Q = diag([ q1  0 ]);
R = 1;

x0 = [ 1
       0 ];

P = [ p11  p12
      p12  p22 ];

disp(' ')
disp('--- M = P*A + A''*P - P*B*inv(R)*B''*P + Q ---------')
M = P*A + A'*P - P*B*inv(R)*B'*P + Q

disp(' ')
disp('--- M = 0 の解 P = [ p11  p12')
disp('                     p12  p22 ] ---------')
[p11 p12 p22] = solve(M(1,1)==0, M(1,2)==0, M(2,2)==0, {p11, p12, p22});
p11 = simplify(p11);
p12 = simplify(p12);
p22 = simplify(p22);

syms a b c
disp(' ')
disp(' *** q1 > 0')
disp(' *** a = (q1 + 100)^(1/2) > 10')
disp(' *** b = 2*a - 19 > 1')
disp(' *** c = 2*a + 19 > 39 (-c < -39)')
disp(' ')
p11 = subs(subs(subs(p11, (q1+100)^(1/2), a), 2*a-19, b), -2*a-19, -c)
p12 = subs(subs(subs(p12, (q1+100)^(1/2), a), 2*a-19, b), -2*a-19, -c)
p22 = subs(subs(subs(p22, (q1+100)^(1/2), a), 2*a-19, b), -2*a-19, -c)

num = size(p11,1);
for i = 1:num
    disp(' ')
    fprintf('*** P%d *********************** \n',i)

    P = [ p11(i)  p12(i)
          p12(i)  p22(i) ]
end

disp(' ')
disp(' ')
disp('--- 正定対称解 P = P1 ---------')
P = [ p11(1)  p12(1)
      p12(1)  p22(1) ]

disp(' ')
disp('--- u(t) = K*x(t) ---------')
K = - inv(R)*B'*P

disp(' ')
disp('=== q1 = 10 のとき ==================')
disp('--- K = K_10 --------');
K_10 = subs(subs(subs(K, b, 2*a-19), a, (q1+100)^(1/2)), q1, 10)

disp('--- A + B*K の固有値--------');
eig(A + B*K_10)

disp(' ')
disp('=== q1 = 100 のとき ==================')
disp('--- K = K_100 --------');
K_100 = subs(subs(subs(K, b, 2*a-19), a, (q1+100)^(1/2)), q1, 100)

disp('--- A + B*K の固有値--------');
eig(A + B*K_100)

disp(' ')
disp('=== q1 = 1000 のとき ==================')
disp('--- K = K_1000 --------');
K_1000 = subs(subs(subs(K, b, 2*a-19), a, (q1+100)^(1/2)), q1, 1000)

disp('--- A + B*K の固有値--------');
eig(A + B*K_1000)


