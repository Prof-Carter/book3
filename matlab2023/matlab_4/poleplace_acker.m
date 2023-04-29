clear
format compact

A = [ -3  1
       2 -2 ];
B = [ 2
      0 ];

p = [ -8+4j
      -8-4j ];
K = - acker(A,B,p)

eig(A + B*K)