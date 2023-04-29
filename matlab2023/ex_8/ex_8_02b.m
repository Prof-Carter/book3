disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('問 8.2（直接的な解法）')
disp('++++++++++++++++++++++++++++++')

clear
format compact
syms p11 p12 p22 real

A = [  0   1
     -10  -1 ];
B = [ 0
      1 ];
Q = diag([ 2400  144 ]);
R = 1;

P = [ p11  p12
      p12  p22 ];

disp(' ')
disp('--- M = P*A + A''*P - P*B*inv(R)*B''*P + Q ---------')
M = P*A + A'*P - P*B*inv(R)*B'*P + Q

disp(' ')
disp('--- M = 0 の解 P = [ p11  p12')
disp('                     p12  p22 ] ---------')
[p11 p12 p22] = solve(M(1,1)==0, M(1,2)==0, M(2,2)==0, {p11, p12, p22})

num = size(p11,1);
for i = 1:num
    disp(' ')
    fprintf('*** P%d *********************** \n',i)

    P = [ p11(i)  p12(i)
          p12(i)  p22(i) ]

    disp(' ')
    fprintf('--- P%d の固有値 -------- \n',i)
    lambda = double(eig(P))

    if lambda > 0
        disp('   ====> P は正定行列');

        disp(' ')
        disp('--- u(t) = K*x(t) --------');
        K = - inv(R)*B'*P;
        K = double(K)
    else
        disp('   ====> P は正定行列ではない');
    end
    disp(' ');
end


