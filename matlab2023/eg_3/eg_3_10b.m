disp('++++++++++++++++++++++++++++++')
disp('�� 3.10')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s

A = [  0   1
     -10 -11 ];
b = [ 0
      1 ];
C = [ 1  0
      0  1 ];

x0 = [ 1
       1 ];

% ***********************************************
disp(' ')
disp('--- �J�ڍs�� ------')
exp_At = ilaplace(inv(s*eye(2) - A))

disp(' ')
disp('--- ����͉��� ------')
yt = C*exp_At*x0
