clear
format compact

A = [ 0  1  0  0
     -1 -1  1  1
      0  0  0  1
      2  2 -2 -2 ];
B = [ 0  0
     1/2 0
      0  0
      0  1 ];
      
p(1) = -2; p(2) = -2;
p(3) = -4; p(4) = -4;
K = - place(A,B,p)

eig(A + B*K)