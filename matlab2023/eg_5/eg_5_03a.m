disp('++++++++++++++++++++++++++++++')
disp('�� 5.3�i���l�̎Z�o')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1  0  0
     -4 -2  4  2
      0  0  0  1
      2  1 -2 -1 ];
b = [ 0
      2
      0
      0 ];
c = [ 0  0  1  0 ];

k = [ -7/2 -5/2 -13/2 -11/2];
h = 10;

% -------------------------------------------------------------


disp(' ')
disp('--- Acl = A + b*k ---------')
Acl = A + b*k

disp(' ')
disp('--- Acl �̋t�s�� ---------')
sym(inv(Acl))

disp(' ')
disp('--- x(t), y(t), e(t) �̒��l x��, y��, e�� ---------')
syms y_ref d

x_inf = - inv(Acl)*b*(h*y_ref + d)
y_inf = c*x_inf
e_inf = y_ref - y_inf



