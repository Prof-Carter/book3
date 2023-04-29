disp('++++++++++++++++++++++++++++++')
disp('�� 8.4�i���ړI�ȕ��@�j')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [  0   1
     -10  -1 ];
B = [ 0
      1 ];
Q = diag([ 300  60 ]);
R = 1;

disp(' ')
disp('--- �n�~���g���s�� H --------');
H = [ A  -B*inv(R)*B'
     -Q       -A'    ];

disp(' ')
disp('--- H �̌ŗL�l --------');
lambda = eig(H)

n = length(H);
k = 0;
for i = 1:n
    if real(lambda(i)) < 0
        k = k + 1;
        lambda_lower(k) = lambda(i);
    end
end

% ----------------------------------------------------------
syms s

disp(' ')
disp('--- ��(��) = ��^2 + d1*�� + d0  ---------')
delta = expand((s - lambda_lower(1))*(s - lambda_lower(2)))

d0 = subs(delta, s, 0)
d1 = subs(diff(delta, s), s, 0)

disp(' ')
disp('--- ��_A = A^2 + d1*A + d0*I ---------')
Delta_A = A^2 + d1*A + d0*eye(2)
e = [ 0  1 ];

disp(' ')
disp('--- ����s�� Vc ---------')
Vc = ctrb(A,B)

disp(' ')
disp('--- u(t) = K*x(t) ---------')
K = -e*inv(Vc)*Delta_A


