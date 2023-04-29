clear
format compact

A = [  0  1
     -10 -2 ];
syms s

exp_At = ilaplace(inv(s*eye(2) - A))
subs(exp_At,5)
% syms t
% subs(exp_At,t,5)
