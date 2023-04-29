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

Ae = [  A  zeros(4,1)
       -C  zeros(1,1) ];
Be = [ B
       zeros(1,1) ];

Q11 = 100;  Q22 = 600;
Qe = [  C'*Q11*C   zeros(4,1)
       zeros(1,4)     Q22     ];
Re = 1;

Pe = care(Ae,Be,Qe,Re);
P11 = Pe(1:4,1:4)
P12 = Pe(1:4,5)
P22 = Pe(5,5)

K = - inv(Re)*B'*P11
G = - inv(Re)*B'*P12

M0 = [ A  B
       C  0 ];
Fa = [ -K+2*G*inv(P22)*P12'  1 ]*inv(M0)*[ zeros(4,1); 1 ]

Fb = - 2*G*inv(P22)*P12'