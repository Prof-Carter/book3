disp('++++++++++++++++++++++++++++++')
disp('問題 5.2')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s

A = [ -1  1
      -2 -1 ];
b = [ 2
      0 ];
c = [ 2  0 ];

disp(' ')
disp('--- M(s) ---------')
M = [ -(s*eye(2)-A)  b
            c        0 ]
disp(' ')
disp('--- |M(s)| ---------')
det_M = det(M)

disp(' ')
disp('--- |M(s)| = 0 の解（不変零点） ---------')
solve(det_M==0, s)

disp(' ')
disp('--- 伝達関数 ---------')
zpk_P = zpk(ss(A,b,c,0))

disp(' ')
disp('--- 零点 z，極 p，ゲイン k ---------')
[z p k] = zpkdata(zpk_P,'v')
