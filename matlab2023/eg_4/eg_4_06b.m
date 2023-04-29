disp('++++++++++++++++++++++++++++++')
disp('�� 4.6�i���l�v�Z�j')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ -3  1
       2 -2 ];
b = [ 2
      0 ];

disp(' ')
disp('--- �z�u�������ŗL�l�̐ݒ� ---------')
p = [ -8+4j
      -8-4j ]

disp(' ')
disp('___ �X�e�b�v 1 __________________________')

disp(' ')
disp('--- ��(��) = ��^2 + d1*�� + d0  ---------')
eq = conv([1 -p(1)],[1 -p(2)])
d0 = eq(3)
d1 = eq(2)

disp(' ')
disp('--- ��_A = A^2 + d1*A + d0*I ---------')
Delta_A = A^2 + d1*A + d0*eye(2)


disp(' ')
disp('___ �X�e�b�v 2 __________________________')

disp(' ')
disp('--- ����s�� Vc ---------')
Vc = ctrb(A,b)

disp(' ')
disp('--- e ---------')
e = [ 0  1 ]

disp(' ')
disp('--- u(t) = k*x(t) ---------')
k = - e*inv(Vc)*Delta_A

disp(' ')
disp('--- A + b*k �̌ŗL�l ---------')
eig(A + b*k)
