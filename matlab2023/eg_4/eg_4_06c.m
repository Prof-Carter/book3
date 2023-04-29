disp('++++++++++++++++++++++++++++++')
disp('�� 4.6�i���������j')
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
disp('--- ��(��) = ��^2 + d1*�� + d0  ---------')
syms s
eq = (s - p(1))*(s - p(2));
eq = expand(eq)

d0 = subs(eq,0)
d1 = subs(diff(eq,s),0)

disp(' ')
disp('--- ��_A = A^2 + d1*A + d0*I ---------')
Delta_A = A^2 + d1*A + d0*eye(2)

disp(' ')
disp('--- ����s�� Vc ---------')
Vc = ctrb(A,b);
Vc = sym(Vc)

disp(' ')
disp('--- e ---------')
e = [ 0  1 ]

disp(' ')
disp('--- u(t) = k*x(t) ---------')
k = - e*inv(Vc)*Delta_A

disp(' ')
disp('--- A + b*k �̌ŗL�l ---------')
eig(A + b*k)
