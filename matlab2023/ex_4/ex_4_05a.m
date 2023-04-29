disp('++++++++++++++++++++++++++++++')
disp('��� 4.5�i���l�v�Z�j')
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
disp('--- A �̓����������F��^2 + a1*�� + a0 ---------')
coe = poly(A)
a1 = coe(2)
a0 = coe(3)

disp(' ')
disp('--- ����s�� Vc ---------')
Vc = ctrb(A,b)

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
eq = conv([1 -p(1)],[1 -p(2)])

d1 = eq(2)
d0 = eq(3)

disp(' ')
disp('--- u(t) = kc*xc(t) ---------')
kc = [ a0-d0  a1-d1 ]

disp(' ')
disp('--- u(t) = k*x(t) ---------')
k = kc*Tc

disp(' ')
disp('--- A + b*k �̌ŗL�l ---------')
eig(A + b*k)
