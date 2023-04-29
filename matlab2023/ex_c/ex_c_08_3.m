disp('++++++++++++++++++++++++++++++')
disp('��� C.8 (3)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

P = [ 2        sqrt(2)
      sqrt(2)  3       ] 

syms x1 x2 real

x = [ x1
      x2 ];

disp(' ')
disp('--- ��(��) = ��''*P*�� ---------')
phi = x'*P*x;
phi = simplify(phi)

disp(' ')
disp('--- ��(��)�F��1 �ɂ��ĕ������� ---------')
% phi = a*x1^2 + b*x1 + c
a = diff(phi,x1,2)/2;
b = subs(diff(phi,x1),x1,0);
c = phi - (a*x1^2 + b*x1);

h = - b/(2*a);
k = c - b^2/(4*a);
phi = a*(x1 - h)^2 + k  % ��������

