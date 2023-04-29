clear
format compact

A = [  0  1
     -10 -1 ];
B = [ 0
      1 ];

Q = diag([ 300  60 ]);
R = 1;

syms p11 p12 p22

P = [ p11  p12
      p12  p22 ];
M = P*A + A'*P - P*B*inv(R)*B'*P + Q;

[p11 p12 p22] = solve(M(1,1),M(1,2),M(2,2), {p11,p12,p22});

num = size(p11,1);
for i = 1:num
  P = [ p11(i)  p12(i)
        p12(i)  p22(i) ]
  lambda = double(eig(P))
  
  if real(lambda) > 0 & imag(lambda) == 0
    disp('   ====> P は正定行列');
    K = - inv(R)*B'*P;
    K = double(K)
  else
    disp('   ====> P は正定行列ではない');
  end
  disp(' ');
end