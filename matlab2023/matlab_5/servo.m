clear
format compact

A = [ 0  1  0  0
     -4 -2  4  2
      0  0  0  1
      2  1 -2 -1 ];
B = [ 0
      2
      0
      0 ];
C = [ 0  0  1  0 ];

Vc = ctrb(A,B)
rank(Vc)

M0 = [ A  B
       C  0 ]
det(M0)

Ae = [ A  zeros(4,1)
      -C  0          ];
Be = [ B
       0 ];

p = [ -1+3j
      -1-3j
      -2+j
      -2-j
      -2   ];
Ke = - acker(Ae,Be,p);
K = Ke(1:4)
G = Ke(5)

eig(Ae + Be*Ke)