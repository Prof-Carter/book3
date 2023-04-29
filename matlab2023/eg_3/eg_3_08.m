disp('++++++++++++++++++++++++++++++')
disp('�� 3.8')
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
    disp('�Q�߈���ł���')
else
    disp('�Q�߈���ł͂Ȃ�')
end
disp(' ')

% ********************************************
syms t x10 x20

x0 = [ x10
       x20 ];

disp(' ')
disp('--- �J�ڍs�� ------')
exp_At = expm(A*t)

disp(' ')
disp('--- ����͂̂Ƃ��̏�ԕ������̉� ------')
x = exp_At*x0

% ********************************************
ss_P = ss(A,b,c,0);

disp(' ')
disp('--- �`�B�֐� P(s) ------')
tf_P = tf(ss_P)

% disp(' ')
% disp('--- �`�B�֐� P(s) �̋� p�C��_ z�C�Q�C�� k ------')
% [z p k] = zpkdata(tf_P,'v')
disp(' ')
disp('--- �`�B�֐� P(s) �̋� p ------')
p = pole(tf_P)

if real(p) < 0
    disp('�L�E���͗L�E�o�͈���ł���')
else
    disp('�L�E���͗L�E�o�͈���ł͂Ȃ�')
end
disp(' ')


