disp('++++++++++++++++++++++++++++++')
disp('例 8.1')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [  0   1
     -10  -1 ];
B = [ 0
      1 ];
K = [ 5  -1 ];

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
q1 = 1000
q2 = 0
R  = 1
J = q1*Jx1 + q2*Jx2 + R*Ju
double(J)

disp(' ')
disp('--- J = q1*Jx1 + q2*Jx2 + R*Ju --------');
q1 = 0.1
q2 = 0
R  = 1
J = q1*Jx1 + q2*Jx2 + R*Ju
double(J)




