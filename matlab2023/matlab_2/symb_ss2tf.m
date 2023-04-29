clear
format compact

A = [ 0  1  0
      0  0  1
     -2 -4 -3 ];
B = [ 0
      0
      1 ];
C = [ 8  4  0 ];
D = 0;

syms s
P = C*inv(s*eye(3) - A)*B + D
P = simplify(P)
P = collect(P,s)