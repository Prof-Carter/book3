disp('++++++++++++++++++++++++++++++')
disp('—á 3.8')
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
    disp('‘Q‹ßˆÀ’è‚Å‚ ‚é')
else
    disp('‘Q‹ßˆÀ’è‚Å‚Í‚È‚¢')
end
disp(' ')

% ********************************************
syms t x10 x20

x0 = [ x10
       x20 ];

disp(' ')
disp('--- ‘JˆÚs—ñ ------')
exp_At = expm(A*t)

disp(' ')
disp('--- —ë“ü—Í‚Ì‚Æ‚«‚Ìó‘Ô•û’öŽ®‚Ì‰ð ------')
x = exp_At*x0

% ********************************************
ss_P = ss(A,b,c,0);

disp(' ')
disp('--- “`’BŠÖ” P(s) ------')
tf_P = tf(ss_P)

% disp(' ')
% disp('--- “`’BŠÖ” P(s) ‚Ì‹É pC—ë“_ zCƒQƒCƒ“ k ------')
% [z p k] = zpkdata(tf_P,'v')
disp(' ')
disp('--- “`’BŠÖ” P(s) ‚Ì‹É p ------')
p = pole(tf_P)

if real(p) < 0
    disp('—LŠE“ü—Í—LŠEo—ÍˆÀ’è‚Å‚ ‚é')
else
    disp('—LŠE“ü—Í—LŠEo—ÍˆÀ’è‚Å‚Í‚È‚¢')
end
disp(' ')


