clear
format compact

A = [  0  1
     -10 -1 ];
B = [ 0
      1 ];

Q = diag([ 300  60 ]);
R = 1;

[V1 V2] = aresolv(A,Q,B*inv(R)*B')
P = V2/V1