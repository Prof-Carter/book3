disp('++++++++++++++++++++++++++++++')
disp('問 8.3 (1)（数値解法）')
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
disp('--- H の固有ベクトルからなる行列 V，固有値からなる対角行列 Lambda --------');
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
disp('--- H の安定な固有値，固有ベクトル --------');
for i = 1:k
    disp('固有値');
    lambda_lower(i)

    disp('固有ベクトル');
    V(:,index(i))

    disp(' ');
end



disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('問 8.3 (2)（数値解法）')
disp('++++++++++++++++++++++++++++++')
disp(' ')
disp('--- V1, V2 --------');
[V1 V2] = aresolv(A,Q,B*inv(R)*B')

disp(' ')
disp('--- P = V2*inv(V1) --------');
P = V2*inv(V1)


disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('問 8.3 (3)（数値解法）')
disp('++++++++++++++++++++++++++++++')
disp(' ')
disp('--- u(t) = K*x(t) ---------')
K = - acker(A,B,lambda_lower)
