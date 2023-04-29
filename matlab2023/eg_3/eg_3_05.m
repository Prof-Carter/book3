disp('++++++++++++++++++++++++++++++')
disp('例 3.5')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [  0   1
     -10 -11 ];
c  = [ 1  0 ];
x0 = [ 1
       0 ];

A = sym(A)
[S, Lambda] = eig(A)

syms s
exp_Lambda_t = ilaplace(inv(s*eye(2) - Lambda))

exp_At = S*exp_Lambda_t*inv(S);
exp_At = simplify(exp_At)
