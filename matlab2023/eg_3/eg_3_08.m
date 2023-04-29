disp('++++++++++++++++++++++++++++++')
disp('例 3.8')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ -2  0
       0  1 ];
b = [ 1
      0 ];
c = [ 1  0 ];

lambda = eig(A)

if real(lambda) < 0
    disp('漸近安定である')
else
    disp('漸近安定ではない')
end
disp(' ')

% ********************************************
syms t x10 x20

x0 = [ x10
       x20 ];

disp(' ')
disp('--- 遷移行列 ------')
exp_At = expm(A*t)

disp(' ')
disp('--- 零入力のときの状態方程式の解 ------')
x = exp_At*x0

% ********************************************
ss_P = ss(A,b,c,0);

disp(' ')
disp('--- 伝達関数 P(s) ------')
tf_P = tf(ss_P)

% disp(' ')
% disp('--- 伝達関数 P(s) の極 p，零点 z，ゲイン k ------')
% [z p k] = zpkdata(tf_P,'v')
disp(' ')
disp('--- 伝達関数 P(s) の極 p ------')
p = pole(tf_P)

if real(p) < 0
    disp('有界入力有界出力安定である')
else
    disp('有界入力有界出力安定ではない')
end
disp(' ')


