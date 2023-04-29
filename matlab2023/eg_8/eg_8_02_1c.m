disp('++++++++++++++++++++++++++++++')
disp('例 8.2 (1)（つづき：Jx1, Jx2, Ju の計算）')
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
disp('--- リカッチ方程式の正定対称解 P --------');
P = care(A,B,Q,R)

disp(' ')
disp('--- u(t) = K*x(t) --------');
K = - inv(R)*B'*P

x0 = [ 1
       0 ];

syms s
Acl = A + B*K;

disp(' ')
disp('--- x(t) = exp((A + B*K)*t)*x0 --------');
xt = ilaplace(inv(s*eye(2) - Acl))*x0

disp(' ')
disp('--- u(t) = K*x(t) --------');
ut = K*xt

disp(' ')
disp('--- Jx1 --------');
Jx1 = int(xt(1)^2,0,inf)
double(Jx1)
disp(' ')
disp('--- Jx2 --------');
Jx2 = int(xt(2)^2,0,inf)
double(Jx2)
disp(' ')
disp('--- Ju --------');
Ju  = int(ut^2,   0,inf)
double(Ju)

disp(' ')
disp('--- J = q1*Jx1 + q2*Jx2 + R*Ju --------');
q1 = Q(1,1)
q2 = Q(2,2)
J = q1*Jx1 + q2*Jx2 + R*Ju
J = double(J)

disp(' ')
disp('--- Jmin = x0''*P*x0 --------');
Jmin = x0'*P*x0




