clear
format compact

numQ11 = [1 11];  numQ12 = 1;
numQ21 = -10;     numQ22 = [1 0];
denQ   = conv([1 10],[1 1]);

[k11, p] = residue(numQ11, denQ);
[k12, p] = residue(numQ12, denQ);
[k21, p] = residue(numQ21, denQ);
[k22, p] = residue(numQ22, denQ);
p

K1 = [ k11(1)  k12(1)
       k21(1)  k22(1) ]
K2 = [ k11(2)  k12(2)
       k21(2)  k22(2) ]