clear
format compact

numP = [ 4  8 ];
denP = [ 1  3  4  2 ];
[A,B,C,D] = tf2ss(numP,denP)
ss_P = ss(A,B,C,D);

T = [ 0  0  1
      0  1  0
      1  0  0 ];
ss_Pb = ss2ss(ss_P,T);
[Ac,Bc,Cc,Dc] = ssdata(ss_Pb)