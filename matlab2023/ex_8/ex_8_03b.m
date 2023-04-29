disp('++++++++++++++++++++++++++++++')
disp('問 8.3 (1)（直接的な解法）')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [  0   1
     -10  -1 ];
B = [ 0
      1 ];
Q = diag([ 2400  144 ]);
R = 1;

disp(' ')
disp('--- ハミルトン行列 H --------');
H = [ A  -B*inv(R)*B'
     -Q       -A'    ]

disp(' ')
disp('--- H の固有値 --------');
lambda = eig(H)

n = length(H);
k = 0;
for i = 1:n
    if real(lambda(i)) < 0
        k = k + 1;
        lambda_lower(k,1) = lambda(i);
    end
end

disp(' ')
disp('--- H の安定な固有値 --------');
lambda_lower

% ---------------------------------------------------------------
syms s
syms v1_11 v1_12 v1_21 v1_22
syms v2_11 v2_12 v2_21 v2_22
syms a b


disp(' ')
disp('--- 固有ベクトル v1, v2 --------');
v1 = [ v1_11
       v1_12
       v1_21
       v1_22 ]
v2 = [ v2_11
       v2_12
       v2_21
       v2_22 ]

disp(' ')
disp('--- Mi = (H - λi*I)*vi --------');
M1 = (H - lambda_lower(1)*eye(n))*v1
M2 = (H - lambda_lower(2)*eye(n))*v2

disp(' ')
disp('--- Mi = 0 となる vi --------');
[v1_12 v1_21 v1_22] = solve(M1(1)==0,M1(2)==0,M1(3)==0,M1(4)==0, {v1_12,v1_21,v1_22});
[v2_12 v2_21 v2_22] = solve(M2(1)==0,M2(2)==0,M2(3)==0,M2(4)==0, {v2_12,v2_21,v2_22});

v1 = [ subs(v1_11, v1_11, a)
       subs(v1_12, v1_11, a)
       subs(v1_21, v1_11, a)
       subs(v1_22, v1_11, a) ]

v2 = [ subs(v2_11, v2_11, b)
       subs(v2_12, v2_11, b)
       subs(v2_21, v2_11, b)
       subs(v2_22, v2_11, b) ]


disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('問 8.3 (2)（直接的な解法）')
disp('++++++++++++++++++++++++++++++')
disp(' ')
disp('--- Mi = 0 となる Vi --------');
V1 = [ v1(1:2)  v2(1:2) ]

V2 = [ v1(3:4)  v2(3:4) ]


disp(' ')
disp('--- P = V2*inv(V1) --------');
P = V2*inv(V1)


disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('問 8.3 (3)（直接的な解法）')
disp('++++++++++++++++++++++++++++++')
disp(' ')
disp('--- Δ(λ) = λ^2 + d1*λ + d0  ---------')
delta = expand((s - lambda_lower(1))*(s - lambda_lower(2)))

d0 = subs(delta, s, 0)
d1 = subs(diff(delta, s), s, 0)

disp(' ')
disp('--- Δ_A = A^2 + d1*A + d0*I ---------')
Delta_A = A^2 + d1*A + d0*eye(2)
e = [ 0  1 ];

disp(' ')
disp('--- 可制御行列 Vc ---------')
Vc = ctrb(A,B)

disp(' ')
disp('--- u(t) = K*x(t) ---------')
K = -e*inv(Vc)*Delta_A
