clear
format compact

M1 = 0.5;  M2 = 1; 
k  = 2;    mu = 1;

A = [  0      1      0      0
     -k/M1 -mu/M1   k/M1  mu/M1
       0      0      0      1
      k/M2  mu/M2  -k/M2 -mu/M2 ];
B = [  0
      1/M1
       0
       0  ];
C = [ 0  0  1  0 ];
% ----------------------------------
p(1) = -2+2j; p(2) = -2-2j;
p(3) = -2+j;  p(4) = -2-j;

K = - acker(A,B,p)
M0 = [ A  B
       C  0 ];
H = [ -K  1 ]*inv(M0)*[ zeros(4,1)
                            1      ]
disp('--- A + B*K �̌ŗL�l ---');
eig(A + B*K)
% ----------------------------------
q(1) = -4+4j; q(2) = -4-4j;
q(3) = -4+2j; q(4) = -4-2j;

L = - acker(A',C',q)'
disp('--- A + L*C �̌ŗL�l ---');
eig(A + L*C)
% ----------------------------------
Acl = [  A      B*K
       -L*C  A+B*K+L*C ];
disp('--- Acl �̌ŗL�l ---');
eig(Acl)

