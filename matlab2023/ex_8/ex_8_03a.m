disp('++++++++++++++++++++++++++++++')
disp('�� 8.3 (1)�i���l��@�j')
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
disp('--- �n�~���g���s�� H --------');
H = [ A  -B*inv(R)*B'
     -Q       -A'    ]

disp(' ')
disp('--- H �̌ŗL�x�N�g������Ȃ�s�� V�C�ŗL�l����Ȃ�Ίp�s�� Lambda --------');
[V Lambda] = eig(H)

n = length(H);
k = 0;
for i = 1:n
    if real(Lambda(i,i)) < 0
        k = k + 1;
        lambda_lower(k,1) = Lambda(i,i);

        index(k) = i;
    end
end

disp(' ')
disp('--- H �̈���ȌŗL�l�C�ŗL�x�N�g�� --------');
for i = 1:k
    disp('�ŗL�l');
    lambda_lower(i)

    disp('�ŗL�x�N�g��');
    V(:,index(i))

    disp(' ');
end



disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('�� 8.3 (2)�i���l��@�j')
disp('++++++++++++++++++++++++++++++')
disp(' ')
disp('--- V1, V2 --------');
[V1 V2] = aresolv(A,Q,B*inv(R)*B')

disp(' ')
disp('--- P = V2*inv(V1) --------');
P = V2*inv(V1)


disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('�� 8.3 (3)�i���l��@�j')
disp('++++++++++++++++++++++++++++++')
disp(' ')
disp('--- u(t) = K*x(t) ---------')
K = - acker(A,B,lambda_lower)
