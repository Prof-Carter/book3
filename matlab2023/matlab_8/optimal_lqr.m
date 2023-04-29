clear
format compact

A = [  0  1
     -10 -1 ];
B = [ 0
      1 ];

Q = diag([ 300  60 ]);
R = 1;

K = - lqr(A,B,Q,R)