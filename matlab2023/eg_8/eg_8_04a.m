disp('++++++++++++++++++++++++++++++')
disp('�� 8.4�i���l��@�j')
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

disp(' ')
disp('--- u(t) = K*x(t) --------');
K = - acker(A,B,lambda_lower)

disp(' ')
disp('--- A + B*K �̌ŗL�l --------');
eig(A + B*K)

