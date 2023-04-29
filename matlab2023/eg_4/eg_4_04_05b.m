disp('++++++++++++++++++++++++++++++')
disp('�� 4.4�i���������j')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s

A = [ -3  1
       2 -2 ];
b = [ 2
      0 ];
c = [ 0  1 ];

disp(' ')
disp('___ �X�e�b�v 1 __________________________')

disp(' ')
disp('--- A �̓��������� ---------')
det_A = det(s*eye(2) - A)

disp(' ')
disp('--- A �̓����������F��^2 + a1*�� + a0 ---------')
a0 = subs(det_A, s, 0)
a1 = subs(diff(det_A, s), s, 0)

disp(' ')
disp('___ �X�e�b�v 2 __________________________')

disp(' ')
disp('--- ����s�� Vc ---------')
Vc = ctrb(A,b);
Vc = sym(Vc)

disp(' ')
disp('--- Mc ---------')
Mc = [ a1  1
       1   0 ]

disp(' ')
disp('___ �X�e�b�v 3 __________________________')

disp(' ')
disp('--- ����W���`�ւ̕ϊ��s�� Tc ---------')
Tc = inv(Vc*Mc)


disp(' ')
disp('___ �X�e�b�v 4 __________________________')

disp(' ')
disp('--- ����W���` ---------')
Ac = Tc*A*inv(Tc)
bc = Tc*b
cc = c*inv(Tc)


% -------------------------------------------------------
disp(' ')
disp(' ')
disp('<<<< Enter �L�[�������Ă������� >>>>')
pause
disp(' ')
disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('�� 4.5�i���������j')
disp('++++++++++++++++++++++++++++++')

disp(' ')
disp('--- �z�u�������ŗL�l�̐ݒ� ---------')
p = [ -8+4j
      -8-4j ]

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
