disp('++++++++++++++++++++++++++++++')
disp('問題 5.3')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1 
     -2  3 ];
b = [ 0
      1 ];
c = [ 1  0 ];

k = [ -6  -7 ];
h = 8;


disp(' ')
disp('--- 目標値と外乱の定常値 ---------')
y_ref = 1
d     = 1

Acl = A + b*k;

disp(' ')
disp('--- x(t), y(t), e(t) の定常値 x∞, y∞, e∞ ---------')
x_inf = - inv(Acl)*b*(h*y_ref + d)
y_inf = c*x_inf
e_inf = 1 - y_inf

disp(' ')
x_inf = sym(x_inf)
y_inf = sym(y_inf)
e_inf = sym(e_inf)


