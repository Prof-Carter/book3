clear
format compact

A = [  0  1
     -10 -2 ];
syms t

exp_At = expm(A*t);
exp_At = simplify(exp_At)
subs(exp_At,5)