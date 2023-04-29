clear
format compact

A = [ 0 -5
      1 -2 ];
eig(A)

Q = eye(2);
P = lyap(A',Q)
eig(P)