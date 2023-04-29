disp('++++++++++++++++++++++++++++++')
disp('–â‘è 3.3 (1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1
     -3 -4 ];

A = sym(A)
[S, Lambda] = eig(A)

syms s
exp_Lambda_t = ilaplace(inv(s*eye(2) - Lambda))

exp_At = S*exp_Lambda_t*inv(S);
exp_At = simplify(exp_At)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('–â‘è 3.3 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1
     -2 -2 ];

A = sym(A)
[S, Lambda] = eig(A)

syms s
exp_Lambda_t = ilaplace(inv(s*eye(2) - Lambda))

syms t real
r = simplify(abs(exp_Lambda_t));
exp_ith = simplify(exp(1j * angle(exp_Lambda_t)));
exp_ith = diag(exp_ith);
exp_ith = diag(exp_ith);
exp_Lambda_t = r * rewrite(exp_ith, 'sincos')

exp_At = S*exp_Lambda_t*inv(S);
exp_At = simplify(exp_At)

