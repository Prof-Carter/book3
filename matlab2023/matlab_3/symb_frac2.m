clear
format compact

A = [  0   1
     -10 -11 ];
syms s

p = eig(A); p1 = p(2), p2 = p(1)
I = eye(2); 
Q = inv(s*I - A)

Q = partfrac(Q)