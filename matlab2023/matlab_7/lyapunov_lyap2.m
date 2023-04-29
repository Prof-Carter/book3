clear
format compact

A = [ 0 -5
      1 -2 ];
eig(A)

Qo = [ 0  1 ];
Vo = obsv(A,Qo)
rank(Vo)

Q = Qo'*Qo
P = lyap(A',Q)
eig(P)