disp('++++++++++++++++++++++++++++++')
disp('�� 4.6�i���l�v�Z�F�֐� ''acker''�j')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s

A = [ -3  1
       2 -2 ];
b = [ 2
      0 ];

disp(' ')
disp('--- �z�u�������ŗL�l�̐ݒ� ---------')
p = [ -8+4j
      -8-4j ]

disp(' ')
disp('--- u(t) = k*x(t) ---------')
k = - acker(A,b,p)

disp(' ')
disp('--- A + b*k �̌ŗL�l ---------')
eig(A + b*k)