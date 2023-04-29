clear
format compact

A = [  0   1
     -10 -11 ];
syms s

p = eig(A); p1 = p(2), p2 = p(1)
I = eye(2); 
Q = inv(s*I - A)
eq1 = simplify((s - p1)*Q);
eq2 = simplify((s - p2)*Q);

K1 = subs(eq1, s, p1)
K2 = subs(eq2, s, p2)