disp('++++++++++++++++++++++++++++++')
disp('問題 2.4 (1)（数式処理）')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1
     -3 -2 ];
b = [ 0
      1 ];
c = [ 1  0 ];
d = 0;

syms s
n = length(A);
Ps = c*inv(s*eye(n) - A)*b + d;
Ps = collect(Ps,s)


disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('問題 2.4 (2)（数式処理）')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1  0
      0  0  1
     -2 -4 -3 ];
b = [ 0
      0
      1 ];
c = [ 8  4  0 ];
d = 0;

syms s
n = length(A);
Ps = c*inv(s*eye(n) - A)*b + d;
Ps = collect(Ps,s)
