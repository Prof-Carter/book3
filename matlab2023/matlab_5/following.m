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

p = [ -2+2j
      -2-2j
      -2+j
      -2-j ];
K = - acker(A,B,p)
M0 = [ A  B
       C  0 ];
H = [ -K  1 ]*inv(M0)*[ zeros(4,1)
                            1      ]
eig(A + B*K)