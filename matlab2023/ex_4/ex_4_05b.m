disp('++++++++++++++++++++++++++++++')
disp('��� 4.5�i���������j')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s

A = [ 0  1
     -2 -3 ];
b = [ 1
      0 ];
c = [ 1  0 ];

disp(' ')
disp('--- A �̓��������� ---------')
det_A = det(s*eye(2) - A)

disp(' ')
disp('--- A �̓����������F��^2 + a1*�� + a0 ---------')
a0 = subs(det_A, s, 0)
a1 = subs(diff(det_A, s), s, 0)

disp(' ')
disp('--- ����s�� Vc ---------')
Vc = ctrb(A,b);
Vc = sym(Vc)

disp(' ')
disp('--- Mc ---------')
Mc = [ a1  1
       1   0 ]

disp(' ')
disp('--- ����W���`�ւ̕ϊ��s�� Tc ---------')
Tc = inv(Vc*Mc)

disp(' ')
disp('--- ����W���` ---------')
Ac = Tc*A*inv(Tc)
bc = Tc*b
cc = c*inv(Tc)

disp(' ')
disp('--- �z�u�������ŗL�l�̐ݒ� ---------')
p = [ -5+10j
      -5-10j ]

disp(' ')
disp('--- ��(��) = ��^2 + d1*�� + d0  ---------')
delta = (s - p(1))*(s - p(2))

d0 = subs(delta, s, 0)
d1 = subs(diff(delta, s), s, 0)

disp(' ')
disp('--- u(t) = kc*xc(t) ---------')
kc = [ a0-d0  a1-d1 ]

disp(' ')
disp('--- u(t) = k*x(t) ---------')
k = kc*Tc

disp(' ')
disp('--- A + b*k �̌ŗL�l ---------')
eig(A + b*k)
