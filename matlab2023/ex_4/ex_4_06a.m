disp('++++++++++++++++++++++++++++++')
disp('��� 4.6�i���l�v�Z�F�֐� ''acker''�j')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s

A = [ 0  1
     -2 -3 ];
b = [ 1
      0 ];

disp(' ')
disp('--- �z�u�������ŗL�l�̐ݒ� ---------')
p = [ -5+10j
      -5-10j ]

disp(' ')
disp('--- u(t) = k*x(t) ---------')
k = - acker(A,b,p)

disp(' ')
disp('--- A + b*k �̌ŗL�l ---------')
eig(A + b*k)