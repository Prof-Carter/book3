disp('++++++++++++++++++++++++++++++')
disp('例 5.2')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s

A = [ -2  1
       0 -3 ];
b = [  0
       2 ];
c = [ -2  2 ];

disp(' ')
disp('--- M(s) ---------')
M = [ -(s*eye(2)-A)  b
            c        0 ]
disp(' ')
disp('--- |M(s)| ---------')
det_M = det(M)

disp(' ')
disp('--- |M(s)| = 0 の解（不変零点） ---------')
solve(det_M, s)

disp(' ')
disp('--- 伝達関数 ---------')
zpk_P = zpk(ss(A,b,c,0))

disp(' ')
disp('--- 零点 z，極 p，ゲイン k ---------')
[z p k] = zpkdata(zpk_P,'v')
