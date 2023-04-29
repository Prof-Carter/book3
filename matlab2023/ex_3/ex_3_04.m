disp('++++++++++++++++++++++++++++++')
disp('問題 3.4 (1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms t tau real

A = [ 0  1
     -3 -4 ];
b = [ 0
      1 ];
c = [ 1  0 ];

exp_At = expm(A*t);
exp_At = simplify(exp_At)

int_exp_At = int(subs(exp_At, t, tau), tau, 0, t)

y = c*int_exp_At*b

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('問題 3.4 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms t tau real

A = [ 0  1
     -2 -2 ];
b = [ 0
      1 ];
c = [ 1  0 ];

exp_At = expm(A*t);
exp_At = simplify(exp_At)

int_exp_At = int(subs(exp_At, t, tau), tau, 0, t)

y = c*int_exp_At*b
