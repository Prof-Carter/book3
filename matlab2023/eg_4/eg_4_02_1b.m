disp('++++++++++++++++++++++++++++++')
disp('�� 4.2 (1)�i���䐫�O���~�A���j')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ -3   1
       2  -2 ];
B = [ 2
      0 ];

syms t tau tf real

disp(' ')
disp('--- �J�ڍs�� exp(A*t) -----------------')
exp_At = expm(A*t)

disp(' ')
disp('--- ���䐫�O���~�A�� Wc(tf) -----------------')
Wc_tf = int(expm(-A*tau)*B*(expm(-A*tau)*B)',0,tf)
